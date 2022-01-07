; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_start_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_start_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i32 }
%struct.raw3270_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.raw3270_request = type { i32, i32*, i32* }

@raw3270_wake_init = common dso_local global i32* null, align 8
@raw3270_wait_queue = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@raw3270_registered = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270*, %struct.raw3270_view*, %struct.raw3270_request*)* @raw3270_start_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_start_init(%struct.raw3270* %0, %struct.raw3270_view* %1, %struct.raw3270_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw3270*, align 8
  %6 = alloca %struct.raw3270_view*, align 8
  %7 = alloca %struct.raw3270_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.raw3270* %0, %struct.raw3270** %5, align 8
  store %struct.raw3270_view* %1, %struct.raw3270_view** %6, align 8
  store %struct.raw3270_request* %2, %struct.raw3270_request** %7, align 8
  %10 = load i32*, i32** @raw3270_wake_init, align 8
  %11 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %12 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %14 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %13, i32 0, i32 1
  store i32* @raw3270_wait_queue, i32** %14, align 8
  %15 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %16 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_ccwdev_lock(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %24 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %25 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %26 = call i32 @__raw3270_start(%struct.raw3270* %23, %struct.raw3270_view* %24, %struct.raw3270_request* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %28 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_ccwdev_lock(i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32 %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %3
  %40 = load i32, i32* @raw3270_wait_queue, align 4
  %41 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %42 = call i32 @raw3270_request_final(%struct.raw3270_request* %41)
  %43 = call i32 @wait_event_interruptible(i32 %40, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ERESTARTSYS, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.raw3270_view*, %struct.raw3270_view** %6, align 8
  %50 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %53 = call i32 @raw3270_halt_io(%struct.TYPE_2__* %51, %struct.raw3270_request* %52)
  %54 = load i32, i32* @raw3270_wait_queue, align 4
  %55 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %56 = call i32 @raw3270_request_final(%struct.raw3270_request* %55)
  %57 = call i32 @wait_event(i32 %54, i32 %56)
  %58 = load i32, i32* @ERESTARTSYS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %39
  %61 = load %struct.raw3270_request*, %struct.raw3270_request** %7, align 8
  %62 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %48, %37
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__raw3270_start(%struct.raw3270*, %struct.raw3270_view*, %struct.raw3270_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @raw3270_request_final(%struct.raw3270_request*) #1

declare dso_local i32 @raw3270_halt_io(%struct.TYPE_2__*, %struct.raw3270_request*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
