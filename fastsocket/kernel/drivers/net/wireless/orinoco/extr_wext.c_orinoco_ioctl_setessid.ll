; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_setessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_setessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.orinoco_private = type { i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @orinoco_ioctl_setessid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_setessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %12)
  store %struct.orinoco_private* %13, %struct.orinoco_private** %10, align 8
  %14 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %15 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @E2BIG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %24 = call i64 @orinoco_lock(%struct.orinoco_private* %23, i64* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %22
  %30 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %31 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %40 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %44 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %41, i8* %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %49 = call i32 @orinoco_unlock(%struct.orinoco_private* %48, i64* %11)
  %50 = load i32, i32* @EINPROGRESS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %26, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
