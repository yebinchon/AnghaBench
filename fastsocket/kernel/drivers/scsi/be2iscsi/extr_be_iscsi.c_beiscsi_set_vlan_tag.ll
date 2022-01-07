; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_vlan_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_vlan_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_iface_param_info = type { i32, i32* }
%struct.beiscsi_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BS_%d : Getting Interface Handle Failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ISCSI_VLAN_ENABLE = common dso_local global i32 0, align 4
@BEISCSI_VLAN_DISABLE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"BS_%d : Unkown Param Type : %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_iface_param_info*)* @beiscsi_set_vlan_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_set_vlan_tag(%struct.Scsi_Host* %0, %struct.iscsi_iface_param_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.iscsi_iface_param_info*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %5, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %8)
  store %struct.beiscsi_hba* %9, %struct.beiscsi_hba** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %11 = call i64 @mgmt_get_all_if_id(%struct.beiscsi_hba* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %17 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %44 [
    i32 129, label %24
    i32 128, label %37
  ]

24:                                               ; preds = %20
  %25 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISCSI_VLAN_ENABLE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %34 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %35 = call i32 @mgmt_set_vlan(%struct.beiscsi_hba* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %24
  br label %54

37:                                               ; preds = %20
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %39 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mgmt_set_vlan(%struct.beiscsi_hba* %38, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %54

44:                                               ; preds = %20
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %48 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %49 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENOSYS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %37, %36
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %44, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @mgmt_get_all_if_id(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @mgmt_set_vlan(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
