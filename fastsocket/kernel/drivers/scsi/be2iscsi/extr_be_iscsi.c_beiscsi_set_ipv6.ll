; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_ipv6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_iface_param_info = type { i32, i32* }
%struct.beiscsi_hba = type { i32 }

@ISCSI_IFACE_ENABLE = common dso_local global i32 0, align 4
@ISCSI_BOOTPROTO_STATIC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"BS_%d : Param %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_iface_param_info*, i8*, i32)* @beiscsi_set_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_set_ipv6(%struct.Scsi_Host* %0, %struct.iscsi_iface_param_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.iscsi_iface_param_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.beiscsi_hba*, align 8
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %12 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %11)
  store %struct.beiscsi_hba* %12, %struct.beiscsi_hba** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %38 [
    i32 129, label %16
    i32 128, label %33
  ]

16:                                               ; preds = %4
  %17 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ISCSI_IFACE_ENABLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %26 = call i32 @beiscsi_create_ipv6_iface(%struct.beiscsi_hba* %25)
  store i32 %26, i32* %10, align 4
  br label %32

27:                                               ; preds = %16
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iscsi_destroy_iface(i32 %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %27, %24
  br label %46

33:                                               ; preds = %4
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %35 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %36 = load i32, i32* @ISCSI_BOOTPROTO_STATIC, align 4
  %37 = call i32 @mgmt_set_ip(%struct.beiscsi_hba* %34, %struct.iscsi_iface_param_info* %35, i32* null, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %46

38:                                               ; preds = %4
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %42 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @beiscsi_log(%struct.beiscsi_hba* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %33, %32
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_create_ipv6_iface(%struct.beiscsi_hba*) #1

declare dso_local i32 @iscsi_destroy_iface(i32) #1

declare dso_local i32 @mgmt_set_ip(%struct.beiscsi_hba*, %struct.iscsi_iface_param_info*, i32*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
