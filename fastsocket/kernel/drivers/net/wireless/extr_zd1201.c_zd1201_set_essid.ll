; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_essid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.zd1201 = type { i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @zd1201_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.zd1201* @netdev_priv(%struct.net_device* %11)
  store %struct.zd1201* %12, %struct.zd1201** %10, align 8
  %13 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %14 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %34 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %36 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @memset(i32 %37, i32 0, i32 %39)
  %41 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %42 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %46 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %43, i8* %44, i32 %47)
  %49 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %50 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %51 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %54 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @zd1201_join(%struct.zd1201* %49, i32 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %29, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @zd1201_join(%struct.zd1201*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
