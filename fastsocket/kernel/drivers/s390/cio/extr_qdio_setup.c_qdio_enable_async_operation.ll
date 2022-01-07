; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_qdio_enable_async_operation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_qdio_enable_async_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_output_q = type { i32, i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_enable_async_operation(%struct.qdio_output_q* %0) #0 {
  %2 = alloca %struct.qdio_output_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qdio_output_q* %0, %struct.qdio_output_q** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i32 @kzalloc(i32 %8, i32 %9)
  %11 = load %struct.qdio_output_q*, %struct.qdio_output_q** %2, align 8
  %12 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.qdio_output_q*, %struct.qdio_output_q** %2, align 8
  %14 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %3, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.qdio_output_q*, %struct.qdio_output_q** %2, align 8
  %22 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
