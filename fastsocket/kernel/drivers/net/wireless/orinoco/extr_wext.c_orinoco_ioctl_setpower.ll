; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_setpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_setpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%struct.orinoco_private = type { i32, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IW_POWER_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @orinoco_ioctl_setpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_setpower(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %13)
  store %struct.orinoco_private* %14, %struct.orinoco_private** %10, align 8
  %15 = load i32, i32* @EINPROGRESS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %18 = call i64 @orinoco_lock(%struct.orinoco_private* %17, i64* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %97

23:                                               ; preds = %4
  %24 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %30 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %92

31:                                               ; preds = %23
  %32 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IW_POWER_MODE, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %48 [
    i32 128, label %37
    i32 130, label %42
    i32 129, label %47
  ]

37:                                               ; preds = %31
  %38 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %39 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %41 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %51

42:                                               ; preds = %31
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %44 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %46 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %51

47:                                               ; preds = %31
  br label %51

48:                                               ; preds = %31
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %93

51:                                               ; preds = %47, %42, %37
  %52 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %53 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %60 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %62 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 1000
  %65 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %66 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %51
  %68 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %69 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IW_POWER_PERIOD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %76 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %78 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 1000
  %81 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %82 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %67
  %84 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %85 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %93

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %28
  br label %93

93:                                               ; preds = %92, %88, %48
  %94 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %95 = call i32 @orinoco_unlock(%struct.orinoco_private* %94, i64* %12)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %20
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
