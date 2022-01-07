; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ASID_MASK = common dso_local global i64 0, align 8
@r3k_have_wired_reg = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = call i64 (...) @read_c0_entryhi()
  %7 = load i64, i64* @ASID_MASK, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %2, align 8
  %9 = call i32 @write_c0_entrylo0(i32 0)
  %10 = load i64, i64* @r3k_have_wired_reg, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @read_c0_wired()
  br label %15

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 8, %14 ]
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %32, %15
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 %22, 8
  %24 = call i32 @write_c0_index(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 524288
  %27 = shl i32 %26, 12
  %28 = sext i32 %27 to i64
  %29 = call i32 @write_c0_entryhi(i64 %28)
  %30 = load i32, i32* @BARRIER, align 4
  %31 = call i32 (...) @tlb_write_indexed()
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @write_c0_entryhi(i64 %36)
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @read_c0_wired(...) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
