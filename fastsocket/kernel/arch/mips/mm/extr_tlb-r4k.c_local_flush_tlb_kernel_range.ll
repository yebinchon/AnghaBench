; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FLUSH_ITLB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @ENTER_CRITICAL(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %11, %12
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = add i64 %13, %16
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  %22 = lshr i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %23, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %2
  %29 = call i32 (...) @read_c0_entryhi()
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @PAGE_MASK, align 4
  %31 = shl i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %3, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %3, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = shl i32 %35, 1
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %4, align 8
  %41 = load i32, i32* @PAGE_MASK, align 4
  %42 = shl i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %4, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %68, %67, %28
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @write_c0_entryhi(i32 %52)
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = shl i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %3, align 8
  %59 = call i32 (...) @mtc0_tlbw_hazard()
  %60 = call i32 (...) @tlb_probe()
  %61 = call i32 (...) @tlb_probe_hazard()
  %62 = call i32 (...) @read_c0_index()
  store i32 %62, i32* %8, align 4
  %63 = call i32 @write_c0_entrylo0(i32 0)
  %64 = call i32 @write_c0_entrylo1(i32 0)
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %46

68:                                               ; preds = %50
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @UNIQUE_ENTRYHI(i32 %69)
  %71 = call i32 @write_c0_entryhi(i32 %70)
  %72 = call i32 (...) @mtc0_tlbw_hazard()
  %73 = call i32 (...) @tlb_write_indexed()
  br label %46

74:                                               ; preds = %46
  %75 = call i32 (...) @tlbw_use_hazard()
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @write_c0_entryhi(i32 %76)
  br label %80

78:                                               ; preds = %2
  %79 = call i32 (...) @local_flush_tlb_all()
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* @FLUSH_ITLB, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @EXIT_CRITICAL(i64 %82)
  ret void
}

declare dso_local i32 @ENTER_CRITICAL(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @tlb_probe_hazard(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @UNIQUE_ENTRYHI(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @EXIT_CRITICAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
