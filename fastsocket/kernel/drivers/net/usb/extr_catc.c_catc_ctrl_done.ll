; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_ctrl_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_ctrl_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.catc* }
%struct.catc = type { i32, i64, i32, i32, i64, %struct.ctrl_queue* }
%struct.ctrl_queue = type { i32 (%struct.catc*, %struct.ctrl_queue*)*, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"ctrl_done, status %d, len %d.\00", align 1
@CTRL_QUEUE = common dso_local global i32 0, align 4
@CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @catc_ctrl_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_ctrl_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca %struct.ctrl_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 2
  %9 = load %struct.catc*, %struct.catc** %8, align 8
  store %struct.catc* %9, %struct.catc** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.catc*, %struct.catc** %3, align 8
  %23 = getelementptr inbounds %struct.catc, %struct.catc* %22, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.catc*, %struct.catc** %3, align 8
  %27 = getelementptr inbounds %struct.catc, %struct.catc* %26, i32 0, i32 5
  %28 = load %struct.ctrl_queue*, %struct.ctrl_queue** %27, align 8
  %29 = load %struct.catc*, %struct.catc** %3, align 8
  %30 = getelementptr inbounds %struct.catc, %struct.catc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %28, i64 %32
  store %struct.ctrl_queue* %33, %struct.ctrl_queue** %4, align 8
  %34 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %35 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %21
  %39 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %40 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %45 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %50 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.catc*, %struct.catc** %3, align 8
  %53 = getelementptr inbounds %struct.catc, %struct.catc* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %56 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(i64 %51, i64 %54, i64 %57)
  br label %65

59:                                               ; preds = %43, %38
  %60 = load %struct.catc*, %struct.catc** %3, align 8
  %61 = getelementptr inbounds %struct.catc, %struct.catc* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %64 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %48
  br label %66

66:                                               ; preds = %65, %21
  %67 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %68 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %67, i32 0, i32 0
  %69 = load i32 (%struct.catc*, %struct.ctrl_queue*)*, i32 (%struct.catc*, %struct.ctrl_queue*)** %68, align 8
  %70 = icmp ne i32 (%struct.catc*, %struct.ctrl_queue*)* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %73 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %72, i32 0, i32 0
  %74 = load i32 (%struct.catc*, %struct.ctrl_queue*)*, i32 (%struct.catc*, %struct.ctrl_queue*)** %73, align 8
  %75 = load %struct.catc*, %struct.catc** %3, align 8
  %76 = load %struct.ctrl_queue*, %struct.ctrl_queue** %4, align 8
  %77 = call i32 %74(%struct.catc* %75, %struct.ctrl_queue* %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.catc*, %struct.catc** %3, align 8
  %80 = getelementptr inbounds %struct.catc, %struct.catc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @CTRL_QUEUE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %82, %84
  %86 = load %struct.catc*, %struct.catc** %3, align 8
  %87 = getelementptr inbounds %struct.catc, %struct.catc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.catc*, %struct.catc** %3, align 8
  %89 = getelementptr inbounds %struct.catc, %struct.catc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.catc*, %struct.catc** %3, align 8
  %92 = getelementptr inbounds %struct.catc, %struct.catc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %78
  %97 = load %struct.catc*, %struct.catc** %3, align 8
  %98 = call i32 @catc_ctrl_run(%struct.catc* %97)
  br label %104

99:                                               ; preds = %78
  %100 = load i32, i32* @CTRL_RUNNING, align 4
  %101 = load %struct.catc*, %struct.catc** %3, align 8
  %102 = getelementptr inbounds %struct.catc, %struct.catc* %101, i32 0, i32 3
  %103 = call i32 @clear_bit(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.catc*, %struct.catc** %3, align 8
  %106 = getelementptr inbounds %struct.catc, %struct.catc* %105, i32 0, i32 2
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  ret void
}

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @catc_ctrl_run(%struct.catc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
