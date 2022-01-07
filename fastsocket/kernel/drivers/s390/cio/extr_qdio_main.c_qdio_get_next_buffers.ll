; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_get_next_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_get_next_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdio_q** }
%struct.qdio_q = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_get_next_buffers(%struct.ccw_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qdio_q*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.qdio_irq*, %struct.qdio_irq** %17, align 8
  store %struct.qdio_irq* %18, %struct.qdio_irq** %13, align 8
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %13, align 8
  %20 = icmp ne %struct.qdio_irq* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %4
  %25 = load %struct.qdio_irq*, %struct.qdio_irq** %13, align 8
  %26 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %25, i32 0, i32 0
  %27 = load %struct.qdio_q**, %struct.qdio_q*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %27, i64 %29
  %31 = load %struct.qdio_q*, %struct.qdio_q** %30, align 8
  store %struct.qdio_q* %31, %struct.qdio_q** %10, align 8
  %32 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %33 = call i32 @queue_irqs_enabled(%struct.qdio_q* %32)
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %36 = call i32 @qdio_sync_after_thinint(%struct.qdio_q* %35)
  %37 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %38 = call i32 @qdio_check_outbound_after_thinint(%struct.qdio_q* %37)
  %39 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %40 = call i32 @qdio_inbound_q_moved(%struct.qdio_q* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %78

43:                                               ; preds = %24
  %44 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %45 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %43
  %58 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %11, align 4
  %61 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %72 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @sub_buf(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %57, %54, %42, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @queue_irqs_enabled(%struct.qdio_q*) #1

declare dso_local i32 @qdio_sync_after_thinint(%struct.qdio_q*) #1

declare dso_local i32 @qdio_check_outbound_after_thinint(%struct.qdio_q*) #1

declare dso_local i32 @qdio_inbound_q_moved(%struct.qdio_q*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sub_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
