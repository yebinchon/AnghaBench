; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_start_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdio_q** }
%struct.qdio_q = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64* }

@ENODEV = common dso_local global i32 0, align 4
@QDIO_QUEUE_IRQS_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_start_irq(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %11, align 8
  store %struct.qdio_irq* %12, %struct.qdio_irq** %7, align 8
  %13 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %14 = icmp ne %struct.qdio_irq* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %20 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %19, i32 0, i32 0
  %21 = load %struct.qdio_q**, %struct.qdio_q*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %21, i64 %23
  %25 = load %struct.qdio_q*, %struct.qdio_q** %24, align 8
  store %struct.qdio_q* %25, %struct.qdio_q** %6, align 8
  %26 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %27 = call i32 @queue_irqs_enabled(%struct.qdio_q* %26)
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %30 = call i32 @shared_ind(%struct.qdio_q* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %18
  %33 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %34 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @xchg(i64* %37, i32 0)
  br label %39

39:                                               ; preds = %32, %18
  %40 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %41 = call i32 @qdio_stop_polling(%struct.qdio_q* %40)
  %42 = load i32, i32* @QDIO_QUEUE_IRQS_DISABLED, align 4
  %43 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %44 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %42, i32* %46)
  %48 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %49 = call i32 @shared_ind(%struct.qdio_q* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %39
  %52 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %53 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %66

60:                                               ; preds = %51, %39
  %61 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %62 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %66

65:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %76

66:                                               ; preds = %64, %59
  %67 = load i32, i32* @QDIO_QUEUE_IRQS_DISABLED, align 4
  %68 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %69 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i64 @test_and_set_bit(i32 %67, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %65, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @queue_irqs_enabled(%struct.qdio_q*) #1

declare dso_local i32 @shared_ind(%struct.qdio_q*) #1

declare dso_local i32 @xchg(i64*, i32) #1

declare dso_local i32 @qdio_stop_polling(%struct.qdio_q*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qdio_inbound_q_done(%struct.qdio_q*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
