; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_queue_unusedframes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_queue_unusedframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@F_UNUSED = common dso_local global i64 0, align 8
@F_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et61x251_device*)* @et61x251_queue_unusedframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et61x251_queue_unusedframes(%struct.et61x251_device* %0) #0 {
  %2 = alloca %struct.et61x251_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.et61x251_device* %0, %struct.et61x251_device** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %8 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %5
  %12 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %13 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @F_UNUSED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %11
  %22 = load i64, i64* @F_QUEUED, align 8
  %23 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %24 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %30 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %34 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %40 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %39, i32 0, i32 2
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.et61x251_device*, %struct.et61x251_device** %2, align 8
  %43 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %21, %11
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %5

50:                                               ; preds = %5
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
