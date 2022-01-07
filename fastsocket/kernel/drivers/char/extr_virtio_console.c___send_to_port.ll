; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c___send_to_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c___send_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.TYPE_2__, i32, %struct.virtqueue* }
%struct.TYPE_2__ = type { i64 }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port*, %struct.scatterlist*, i32, i64, i8*, i32)* @__send_to_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__send_to_port(%struct.port* %0, %struct.scatterlist* %1, i32 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.port*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.virtqueue*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.port*, %struct.port** %7, align 8
  %18 = getelementptr inbounds %struct.port, %struct.port* %17, i32 0, i32 3
  %19 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  store %struct.virtqueue* %19, %struct.virtqueue** %13, align 8
  %20 = load %struct.port*, %struct.port** %7, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 2
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.port*, %struct.port** %7, align 8
  %25 = call i32 @reclaim_consumed_buffers(%struct.port* %24)
  %26 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @virtqueue_add_buf(%struct.virtqueue* %26, %struct.scatterlist* %27, i32 %28, i32 0, i8* %29)
  store i64 %30, i64* %14, align 8
  %31 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %32 = call i32 @virtqueue_kick(%struct.virtqueue* %31)
  %33 = load i64, i64* %14, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i64 0, i64* %10, align 8
  br label %55

36:                                               ; preds = %6
  %37 = load i64, i64* %14, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.port*, %struct.port** %7, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %55

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %52, %46
  %48 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %49 = call i32 @virtqueue_get_buf(%struct.virtqueue* %48, i32* %16)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (...) @cpu_relax()
  br label %47

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %45, %35
  %56 = load %struct.port*, %struct.port** %7, align 8
  %57 = getelementptr inbounds %struct.port, %struct.port* %56, i32 0, i32 2
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.port*, %struct.port** %7, align 8
  %62 = getelementptr inbounds %struct.port, %struct.port* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %60
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %10, align 8
  ret i64 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reclaim_consumed_buffers(%struct.port*) #1

declare dso_local i64 @virtqueue_add_buf(%struct.virtqueue*, %struct.scatterlist*, i32, i32, i8*) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
