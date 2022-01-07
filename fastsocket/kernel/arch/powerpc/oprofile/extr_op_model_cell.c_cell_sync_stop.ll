; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_cell_sync_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_cell_sync_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@profiling_mode = common dso_local global i64 0, align 8
@SPU_PROFILING_CYCLES = common dso_local global i64 0, align 8
@SPU_PROFILING_EVENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cell_sync_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cell_sync_stop() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @profiling_mode, align 8
  %3 = load i64, i64* @SPU_PROFILING_CYCLES, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @profiling_mode, align 8
  %7 = load i64, i64* @SPU_PROFILING_EVENTS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %0
  %10 = call i32 (...) @spu_sync_stop()
  store i32 %10, i32* %1, align 4
  br label %12

11:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %9
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @spu_sync_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
