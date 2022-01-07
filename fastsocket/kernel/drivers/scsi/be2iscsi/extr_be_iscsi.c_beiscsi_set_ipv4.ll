; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_ipv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_iface_param_info = type { i32, i32* }
%struct.beiscsi_hba = type { i32 }

@ISCSI_BOOTPROTO_DHCP = common dso_local global i32 0, align 4
@ISCSI_BOOTPROTO_STATIC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BS_%d : Invalid BOOTPROTO: %d\0A\00", align 1
@ISCSI_IFACE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"BS_%d : Param %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_iface_param_info*, i8*, i32)* @beiscsi_set_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_set_ipv4(%struct.Scsi_Host* %0, %struct.iscsi_iface_param_info* %1, i8* %2, i32 %3) #0 {
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
  switch i32 %15, label %86 [
    i32 131, label %16
    i32 132, label %20
    i32 134, label %59
    i32 130, label %76
    i32 133, label %76
    i32 129, label %82
    i32 128, label %82
  ]

16:                                               ; preds = %4
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %18 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %19 = call i32 @mgmt_set_gateway(%struct.beiscsi_hba* %17, %struct.iscsi_iface_param_info* %18)
  store i32 %19, i32* %10, align 4
  br label %94

20:                                               ; preds = %4
  %21 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ISCSI_BOOTPROTO_DHCP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %30 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %31 = load i32, i32* @ISCSI_BOOTPROTO_DHCP, align 4
  %32 = call i32 @mgmt_set_ip(%struct.beiscsi_hba* %29, %struct.iscsi_iface_param_info* %30, i32* null, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %58

33:                                               ; preds = %20
  %34 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ISCSI_BOOTPROTO_STATIC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %43 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @beiscsi_set_static_ip(%struct.Scsi_Host* %42, %struct.iscsi_iface_param_info* %43, i8* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %57

47:                                               ; preds = %33
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %51 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @beiscsi_log(%struct.beiscsi_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57, %28
  br label %94

59:                                               ; preds = %4
  %60 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISCSI_IFACE_ENABLE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %69 = call i32 @beiscsi_create_ipv4_iface(%struct.beiscsi_hba* %68)
  store i32 %69, i32* %10, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @iscsi_destroy_iface(i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  br label %94

76:                                               ; preds = %4, %4
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %78 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @beiscsi_set_static_ip(%struct.Scsi_Host* %77, %struct.iscsi_iface_param_info* %78, i8* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %94

82:                                               ; preds = %4, %4
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %84 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %85 = call i32 @beiscsi_set_vlan_tag(%struct.Scsi_Host* %83, %struct.iscsi_iface_param_info* %84)
  store i32 %85, i32* %10, align 4
  br label %94

86:                                               ; preds = %4
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %90 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %91 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @beiscsi_log(%struct.beiscsi_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %86, %82, %76, %75, %58, %16
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mgmt_set_gateway(%struct.beiscsi_hba*, %struct.iscsi_iface_param_info*) #1

declare dso_local i32 @mgmt_set_ip(%struct.beiscsi_hba*, %struct.iscsi_iface_param_info*, i32*, i32) #1

declare dso_local i32 @beiscsi_set_static_ip(%struct.Scsi_Host*, %struct.iscsi_iface_param_info*, i8*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @beiscsi_create_ipv4_iface(%struct.beiscsi_hba*) #1

declare dso_local i32 @iscsi_destroy_iface(i32) #1

declare dso_local i32 @beiscsi_set_vlan_tag(%struct.Scsi_Host*, %struct.iscsi_iface_param_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
