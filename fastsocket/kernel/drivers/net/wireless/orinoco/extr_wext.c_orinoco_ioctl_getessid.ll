; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.orinoco_private = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @orinoco_ioctl_getessid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_getessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %14)
  store %struct.orinoco_private* %15, %struct.orinoco_private** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @orinoco_hw_get_essid(%struct.orinoco_private* %20, i32* %11, i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %56

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %30 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %33 = call i64 @orinoco_lock(%struct.orinoco_private* %32, i64* %13)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %56

38:                                               ; preds = %31
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %41 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %44 = call i32 @memcpy(i8* %39, i32 %42, i32 %43)
  %45 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %46 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %52 = call i32 @orinoco_unlock(%struct.orinoco_private* %51, i64* %13)
  br label %53

53:                                               ; preds = %38, %27
  %54 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %55 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %35, %25
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @orinoco_hw_get_essid(%struct.orinoco_private*, i32*, i8*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
