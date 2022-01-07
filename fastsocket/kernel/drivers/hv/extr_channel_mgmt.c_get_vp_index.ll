; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_get_vp_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_get_vp_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32 }

@IDE = common dso_local global i32 0, align 4
@MAX_PERF_CHN = common dso_local global i32 0, align 4
@hp_devs = common dso_local global %struct.TYPE_7__* null, align 8
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@VERSION_WIN7 = common dso_local global i64 0, align 8
@next_vp = common dso_local global i64 0, align 8
@hv_context = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @get_vp_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_vp_index(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = call i64 (...) @num_online_cpus()
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* @IDE, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_PERF_CHN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_devs, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcmp(i32 %17, i32 %23, i32 4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %31

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %26, %10
  %32 = load i64, i64* @vmbus_proto_version, align 8
  %33 = load i64, i64* @VERSION_WS2008, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @vmbus_proto_version, align 8
  %37 = load i64, i64* @VERSION_WIN7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %35, %31
  store i64 0, i64* %2, align 8
  br label %52

43:                                               ; preds = %39
  %44 = load i64, i64* @next_vp, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* @next_vp, align 8
  %46 = load i64, i64* %7, align 8
  %47 = urem i64 %45, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hv_context, i32 0, i32 0), align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %43, %42
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
