; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_arbitrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_arbitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlcdrv_state = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@HDLCDRV_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdlcdrv_arbitrate(%struct.net_device* %0, %struct.hdlcdrv_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hdlcdrv_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.hdlcdrv_state* %1, %struct.hdlcdrv_state** %4, align 8
  %5 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %6 = icmp ne %struct.hdlcdrv_state* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %9 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %15 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %21 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %13, %7, %2
  br label %77

25:                                               ; preds = %19
  %26 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %27 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %34 = call i32 @start_tx(%struct.net_device* %32, %struct.hdlcdrv_state* %33)
  br label %77

35:                                               ; preds = %25
  %36 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %37 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %43 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %47 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %77

49:                                               ; preds = %35
  %50 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %51 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %77

57:                                               ; preds = %49
  %58 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %59 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %63 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = call i32 (...) @random32()
  %66 = srem i32 %65, 256
  %67 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %68 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %77

73:                                               ; preds = %57
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %76 = call i32 @start_tx(%struct.net_device* %74, %struct.hdlcdrv_state* %75)
  br label %77

77:                                               ; preds = %73, %72, %56, %41, %31, %24
  ret void
}

declare dso_local i32 @start_tx(%struct.net_device*, %struct.hdlcdrv_state*) #1

declare dso_local i32 @random32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
