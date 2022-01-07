; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }

@DOT11_OID_CHANNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @prism54_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_freq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32* @netdev_priv(%struct.net_device* %12)
  store i32* %13, i32** %9, align 8
  %14 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %15 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %20 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %24 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.iw_freq*, %struct.iw_freq** %7, align 8
  %29 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 100000
  %32 = call i32 @channel_of_freq(i32 %31)
  br label %34

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 0, %33 ]
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @DOT11_OID_CHANNEL, align 4
  %42 = call i32 @mgt_set_request(i32* %40, i32 %41, i32 0, i32* %11)
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %43 ]
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  br label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINPROGRESS, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  ret i32 %56
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @channel_of_freq(i32) #1

declare dso_local i32 @mgt_set_request(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
