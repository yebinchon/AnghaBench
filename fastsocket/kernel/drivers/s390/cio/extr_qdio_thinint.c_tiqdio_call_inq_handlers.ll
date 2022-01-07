; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_call_inq_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_thinint.c_tiqdio_call_inq_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32, %struct.qdio_q** }
%struct.qdio_q = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)*, i32 }

@QDIO_QUEUE_IRQS_DISABLED = common dso_local global i32 0, align 4
@int_discarded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*)* @tiqdio_call_inq_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiqdio_call_inq_handlers(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %88, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %8 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %91

11:                                               ; preds = %5
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %13 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %12, i32 0, i32 1
  %14 = load %struct.qdio_q**, %struct.qdio_q*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %14, i64 %16
  %18 = load %struct.qdio_q*, %struct.qdio_q** %17, align 8
  store %struct.qdio_q* %18, %struct.qdio_q** %4, align 8
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %20 = call i32 @references_shared_dsci(%struct.qdio_irq* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %11
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %24 = call i64 @has_multiple_inq_on_dsci(%struct.qdio_irq* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xchg(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %26, %22, %11
  %34 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %35 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %37, align 8
  %39 = icmp ne i32 (i32, i32, i32)* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %33
  %41 = load i32, i32* @QDIO_QUEUE_IRQS_DISABLED, align 4
  %42 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %43 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i64 @test_and_set_bit(i32 %41, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %50 = load i32, i32* @int_discarded, align 4
  %51 = call i32 @qperf_inc(%struct.qdio_q* %49, i32 %50)
  br label %88

52:                                               ; preds = %40
  %53 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %54 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %56, align 8
  %58 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %64 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %57(i32 %62, i32 %65, i32 %70)
  br label %87

72:                                               ; preds = %33
  %73 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %74 = call i32 @shared_ind(%struct.qdio_q* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %78 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xchg(i32 %81, i32 0)
  br label %83

83:                                               ; preds = %76, %72
  %84 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %85 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %84, i32 0, i32 0
  %86 = call i32 @tasklet_schedule(i32* %85)
  br label %87

87:                                               ; preds = %83, %52
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %5

91:                                               ; preds = %5
  ret void
}

declare dso_local i32 @references_shared_dsci(%struct.qdio_irq*) #1

declare dso_local i64 @has_multiple_inq_on_dsci(%struct.qdio_irq*) #1

declare dso_local i32 @xchg(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @shared_ind(%struct.qdio_q*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
