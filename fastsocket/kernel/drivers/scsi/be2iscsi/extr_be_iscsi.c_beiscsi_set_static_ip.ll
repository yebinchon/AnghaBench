; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_static_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_set_static_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_iface_param_info = type { i32 }
%struct.beiscsi_hba = type { i32 }
%struct.nlattr = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BS_%d : Unsupported param %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"BS_%d : IP and Subnet Mask required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISCSI_BOOTPROTO_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_iface_param_info*, i8*, i32)* @beiscsi_set_static_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_set_static_ip(%struct.Scsi_Host* %0, %struct.iscsi_iface_param_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.iscsi_iface_param_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.beiscsi_hba*, align 8
  %11 = alloca %struct.iscsi_iface_param_info*, align 8
  %12 = alloca %struct.iscsi_iface_param_info*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.beiscsi_hba* %16, %struct.beiscsi_hba** %10, align 8
  store %struct.iscsi_iface_param_info* null, %struct.iscsi_iface_param_info** %11, align 8
  store %struct.iscsi_iface_param_info* null, %struct.iscsi_iface_param_info** %12, align 8
  %17 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %61 [
    i32 129, label %20
    i32 130, label %39
    i32 128, label %50
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.nlattr* @nla_find(i8* %21, i32 %22, i32 130)
  store %struct.nlattr* %23, %struct.nlattr** %13, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %28 = call %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr* %27)
  store %struct.iscsi_iface_param_info* %28, %struct.iscsi_iface_param_info** %11, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.nlattr* @nla_find(i8* %30, i32 %31, i32 128)
  store %struct.nlattr* %32, %struct.nlattr** %13, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %37 = call %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr* %36)
  store %struct.iscsi_iface_param_info* %37, %struct.iscsi_iface_param_info** %12, align 8
  br label %38

38:                                               ; preds = %35, %29
  br label %69

39:                                               ; preds = %4
  %40 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  store %struct.iscsi_iface_param_info* %40, %struct.iscsi_iface_param_info** %11, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.nlattr* @nla_find(i8* %41, i32 %42, i32 128)
  store %struct.nlattr* %43, %struct.nlattr** %13, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %48 = call %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr* %47)
  store %struct.iscsi_iface_param_info* %48, %struct.iscsi_iface_param_info** %12, align 8
  br label %49

49:                                               ; preds = %46, %39
  br label %69

50:                                               ; preds = %4
  %51 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  store %struct.iscsi_iface_param_info* %51, %struct.iscsi_iface_param_info** %12, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.nlattr* @nla_find(i8* %52, i32 %53, i32 130)
  store %struct.nlattr* %54, %struct.nlattr** %13, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %59 = call %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr* %58)
  store %struct.iscsi_iface_param_info* %59, %struct.iscsi_iface_param_info** %11, align 8
  br label %60

60:                                               ; preds = %57, %50
  br label %69

61:                                               ; preds = %4
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %65 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %7, align 8
  %66 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %61, %60, %49, %38
  %70 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %11, align 8
  %71 = icmp ne %struct.iscsi_iface_param_info* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %12, align 8
  %74 = icmp ne %struct.iscsi_iface_param_info* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %77 = load i32, i32* @KERN_ERR, align 4
  %78 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %79 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %89

82:                                               ; preds = %72
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %10, align 8
  %84 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %11, align 8
  %85 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %12, align 8
  %86 = load i32, i32* @ISCSI_BOOTPROTO_STATIC, align 4
  %87 = call i32 @mgmt_set_ip(%struct.beiscsi_hba* %83, %struct.iscsi_iface_param_info* %84, %struct.iscsi_iface_param_info* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %82, %75
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.nlattr* @nla_find(i8*, i32, i32) #1

declare dso_local %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @mgmt_set_ip(%struct.beiscsi_hba*, %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
