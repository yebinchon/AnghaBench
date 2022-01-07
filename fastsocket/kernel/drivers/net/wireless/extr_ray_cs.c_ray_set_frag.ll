; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_ray_set_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_ray_set_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@CARD_AWAITING_PARAM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @ray_set_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ray_set_frag(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %15 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CARD_AWAITING_PARAM, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %27 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 32767, i32* %11, align 4
  br label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 2347
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %61

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 255
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* @EINPROGRESS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %41, %37, %22
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
