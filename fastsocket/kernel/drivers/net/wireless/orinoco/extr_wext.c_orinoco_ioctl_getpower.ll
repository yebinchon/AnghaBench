; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i32 }
%struct.orinoco_private = type { %struct.hermes }
%struct.hermes = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CNFPMENABLED = common dso_local global i32 0, align 4
@HERMES_RID_CNFMAXSLEEPDURATION = common dso_local global i32 0, align 4
@HERMES_RID_CNFPMHOLDOVERDURATION = common dso_local global i32 0, align 4
@HERMES_RID_CNFMULTICASTRECEIVE = common dso_local global i32 0, align 4
@IW_POWER_TYPE = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@IW_POWER_ALL_R = common dso_local global i32 0, align 4
@IW_POWER_UNICAST_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @orinoco_ioctl_getpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_getpower(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.hermes*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %18)
  store %struct.orinoco_private* %19, %struct.orinoco_private** %10, align 8
  %20 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %21 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %20, i32 0, i32 0
  store %struct.hermes* %21, %struct.hermes** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %23 = call i64 @orinoco_lock(%struct.orinoco_private* %22, i64* %17)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %110

28:                                               ; preds = %4
  %29 = load %struct.hermes*, %struct.hermes** %11, align 8
  %30 = load i32, i32* @USER_BAP, align 4
  %31 = load i32, i32* @HERMES_RID_CNFPMENABLED, align 4
  %32 = call i32 @hermes_read_wordrec(%struct.hermes* %29, i32 %30, i32 %31, i32* %13)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %106

36:                                               ; preds = %28
  %37 = load %struct.hermes*, %struct.hermes** %11, align 8
  %38 = load i32, i32* @USER_BAP, align 4
  %39 = load i32, i32* @HERMES_RID_CNFMAXSLEEPDURATION, align 4
  %40 = call i32 @hermes_read_wordrec(%struct.hermes* %37, i32 %38, i32 %39, i32* %14)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %106

44:                                               ; preds = %36
  %45 = load %struct.hermes*, %struct.hermes** %11, align 8
  %46 = load i32, i32* @USER_BAP, align 4
  %47 = load i32, i32* @HERMES_RID_CNFPMHOLDOVERDURATION, align 4
  %48 = call i32 @hermes_read_wordrec(%struct.hermes* %45, i32 %46, i32 %47, i32* %15)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %106

52:                                               ; preds = %44
  %53 = load %struct.hermes*, %struct.hermes** %11, align 8
  %54 = load i32, i32* @USER_BAP, align 4
  %55 = load i32, i32* @HERMES_RID_CNFMULTICASTRECEIVE, align 4
  %56 = call i32 @hermes_read_wordrec(%struct.hermes* %53, i32 %54, i32 %55, i32* %16)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %106

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %66 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %68 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IW_POWER_TYPE, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %76 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %77 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 %78, 1000
  %80 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %81 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %90

82:                                               ; preds = %60
  %83 = load i32, i32* @IW_POWER_PERIOD, align 4
  %84 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %85 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 %86, 1000
  %88 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %89 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @IW_POWER_ALL_R, align 4
  %95 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %96 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %105

99:                                               ; preds = %90
  %100 = load i32, i32* @IW_POWER_UNICAST_R, align 4
  %101 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %102 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %59, %51, %43, %35
  %107 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %108 = call i32 @orinoco_unlock(%struct.orinoco_private* %107, i64* %17)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %25
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @hermes_read_wordrec(%struct.hermes*, i32, i32, i32*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
