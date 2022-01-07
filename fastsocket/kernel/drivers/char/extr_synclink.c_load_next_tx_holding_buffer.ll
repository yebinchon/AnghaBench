; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_load_next_tx_holding_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_load_next_tx_holding_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, i32, i64, i32, i64, %struct.tx_holding_buffer* }
%struct.tx_holding_buffer = type { i32, i32 }

@DMABUFFERSIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @load_next_tx_holding_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_next_tx_holding_buffer(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_holding_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %76

11:                                               ; preds = %1
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 5
  %14 = load %struct.tx_holding_buffer*, %struct.tx_holding_buffer** %13, align 8
  %15 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %16 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.tx_holding_buffer, %struct.tx_holding_buffer* %14, i64 %17
  store %struct.tx_holding_buffer* %18, %struct.tx_holding_buffer** %4, align 8
  %19 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %20 = call i32 @num_free_tx_dma_buffers(%struct.mgsl_struct* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.tx_holding_buffer*, %struct.tx_holding_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.tx_holding_buffer, %struct.tx_holding_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMABUFFERSIZE, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.tx_holding_buffer*, %struct.tx_holding_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.tx_holding_buffer, %struct.tx_holding_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMABUFFERSIZE, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %11
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %11
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load %struct.tx_holding_buffer*, %struct.tx_holding_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.tx_holding_buffer, %struct.tx_holding_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %44 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %46 = load %struct.tx_holding_buffer*, %struct.tx_holding_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.tx_holding_buffer, %struct.tx_holding_buffer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tx_holding_buffer*, %struct.tx_holding_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.tx_holding_buffer, %struct.tx_holding_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mgsl_load_tx_dma_buffer(%struct.mgsl_struct* %45, i32 %48, i32 %51)
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %58 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %62 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %39
  %66 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %67 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %39
  %69 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %70 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %69, i32 0, i32 3
  %71 = load i64, i64* @jiffies, align 8
  %72 = call i64 @msecs_to_jiffies(i32 5000)
  %73 = add nsw i64 %71, %72
  %74 = call i32 @mod_timer(i32* %70, i64 %73)
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %35
  br label %76

76:                                               ; preds = %75, %1
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @num_free_tx_dma_buffers(%struct.mgsl_struct*) #1

declare dso_local i32 @mgsl_load_tx_dma_buffer(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
