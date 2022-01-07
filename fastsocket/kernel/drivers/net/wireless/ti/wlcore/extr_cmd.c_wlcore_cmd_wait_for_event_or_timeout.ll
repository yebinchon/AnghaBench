; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_wait_for_event_or_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_wait_for_event_or_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WL1271_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"timeout waiting for event %d\00", align 1
@WL1271_WAIT_EVENT_FAST_POLL_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_cmd_wait_for_event_or_timeout(%struct.wl1271* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = or i32 %14, %15
  %17 = call i32* @kmalloc(i32 4, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %92

23:                                               ; preds = %3
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @WL1271_EVENT_TIMEOUT, align 4
  %26 = call i64 @msecs_to_jiffies(i32 %25)
  %27 = add i64 %24, %26
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %83, %23
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @time_after(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @DEBUG_CMD, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @wl1271_debug(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 1, i32* %37, align 4
  br label %88

38:                                               ; preds = %28
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @WL1271_WAIT_EVENT_FAST_POLL_COUNT, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @usleep_range(i32 50, i32 51)
  br label %48

46:                                               ; preds = %38
  %47 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %50 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @wlcore_read(%struct.wl1271* %49, i32 %54, i32* %55, i32 4, i32 0)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %88

60:                                               ; preds = %48
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %66 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @wlcore_read(%struct.wl1271* %65, i32 %70, i32* %71, i32 4, i32 0)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %88

76:                                               ; preds = %60
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %28, label %87

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %75, %59, %33
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
