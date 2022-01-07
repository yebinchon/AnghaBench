; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%struct.orinoco_private = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @orinoco_ioctl_getrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_getrate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %17)
  store %struct.orinoco_private* %18, %struct.orinoco_private** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %20 = call i64 @orinoco_lock(%struct.orinoco_private* %19, i64* %14)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %27 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @orinoco_get_ratemode_cfg(i32 %28, i32* %12, i32* %13)
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i64 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %35 = call i32 @orinoco_hw_get_act_bitrate(%struct.orinoco_private* %34, i32* %15)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %43 = call i32 @orinoco_unlock(%struct.orinoco_private* %42, i64* %14)
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %46 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %52 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %54 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %41, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_get_ratemode_cfg(i32, i32*, i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @orinoco_hw_get_act_bitrate(%struct.orinoco_private*, i32*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
