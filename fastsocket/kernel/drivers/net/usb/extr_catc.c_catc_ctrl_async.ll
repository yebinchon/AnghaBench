; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_ctrl_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_ctrl_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catc = type { i32, i32, i32, i32, %struct.ctrl_queue* }
%struct.ctrl_queue = type { i32, void (%struct.catc.0*, %struct.ctrl_queue*)*, i8*, i8*, i8*, i8*, i8* }
%struct.catc.0 = type opaque

@CTRL_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ctrl queue full\00", align 1
@CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.catc*, i8*, i8*, i8*, i8*, i8*, i32, void (%struct.catc*, %struct.ctrl_queue*)*)* @catc_ctrl_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catc_ctrl_async(%struct.catc* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, void (%struct.catc*, %struct.ctrl_queue*)* %7) #0 {
  %9 = alloca %struct.catc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (%struct.catc*, %struct.ctrl_queue*)*, align 8
  %17 = alloca %struct.ctrl_queue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.catc* %0, %struct.catc** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store void (%struct.catc*, %struct.ctrl_queue*)* %7, void (%struct.catc*, %struct.ctrl_queue*)** %16, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.catc*, %struct.catc** %9, align 8
  %21 = getelementptr inbounds %struct.catc, %struct.catc* %20, i32 0, i32 2
  %22 = load i64, i64* %19, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.catc*, %struct.catc** %9, align 8
  %25 = getelementptr inbounds %struct.catc, %struct.catc* %24, i32 0, i32 4
  %26 = load %struct.ctrl_queue*, %struct.ctrl_queue** %25, align 8
  %27 = load %struct.catc*, %struct.catc** %9, align 8
  %28 = getelementptr inbounds %struct.catc, %struct.catc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %26, i64 %30
  store %struct.ctrl_queue* %31, %struct.ctrl_queue** %17, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %34 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %37 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %40 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %43 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %46 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %49 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load void (%struct.catc*, %struct.ctrl_queue*)*, void (%struct.catc*, %struct.ctrl_queue*)** %16, align 8
  %51 = bitcast void (%struct.catc*, %struct.ctrl_queue*)* %50 to void (%struct.catc.0*, %struct.ctrl_queue*)*
  %52 = load %struct.ctrl_queue*, %struct.ctrl_queue** %17, align 8
  %53 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %52, i32 0, i32 1
  store void (%struct.catc.0*, %struct.ctrl_queue*)* %51, void (%struct.catc.0*, %struct.ctrl_queue*)** %53, align 8
  %54 = load %struct.catc*, %struct.catc** %9, align 8
  %55 = getelementptr inbounds %struct.catc, %struct.catc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @CTRL_QUEUE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %57, %59
  %61 = load %struct.catc*, %struct.catc** %9, align 8
  %62 = getelementptr inbounds %struct.catc, %struct.catc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.catc*, %struct.catc** %9, align 8
  %64 = getelementptr inbounds %struct.catc, %struct.catc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.catc*, %struct.catc** %9, align 8
  %67 = getelementptr inbounds %struct.catc, %struct.catc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %8
  %71 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.catc*, %struct.catc** %9, align 8
  %73 = getelementptr inbounds %struct.catc, %struct.catc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* @CTRL_QUEUE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %75, %77
  %79 = load %struct.catc*, %struct.catc** %9, align 8
  %80 = getelementptr inbounds %struct.catc, %struct.catc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  store i32 -1, i32* %18, align 4
  br label %81

81:                                               ; preds = %70, %8
  %82 = load i32, i32* @CTRL_RUNNING, align 4
  %83 = load %struct.catc*, %struct.catc** %9, align 8
  %84 = getelementptr inbounds %struct.catc, %struct.catc* %83, i32 0, i32 3
  %85 = call i32 @test_and_set_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load %struct.catc*, %struct.catc** %9, align 8
  %89 = call i32 @catc_ctrl_run(%struct.catc* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.catc*, %struct.catc** %9, align 8
  %92 = getelementptr inbounds %struct.catc, %struct.catc* %91, i32 0, i32 2
  %93 = load i64, i64* %19, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %18, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @catc_ctrl_run(%struct.catc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
