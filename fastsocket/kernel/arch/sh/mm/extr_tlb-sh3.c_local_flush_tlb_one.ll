; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_tlb-sh3.c_local_flush_tlb_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_tlb-sh3.c_local_flush_tlb_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MMU_NTLB_WAYS = common dso_local global i32 0, align 4
@MMU_TLB_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPU_HAS_MMU_PAGE_ASSOC = common dso_local global i32 0, align 4
@MMU_PAGE_ASSOC_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_one(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @MMU_NTLB_WAYS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i64, i64* @MMU_TLB_ADDRESS_ARRAY, align 8
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, 126976
  %13 = or i64 %10, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, 4294836224
  %16 = load i64, i64* %3, align 8
  %17 = or i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %19 = load i32, i32* @CPU_HAS_MMU_PAGE_ASSOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* @MMU_PAGE_ASSOC_BIT, align 8
  %24 = load i64, i64* %5, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %5, align 8
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = add i64 %33, %36
  %38 = call i32 @ctrl_outl(i64 %32, i64 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %27

42:                                               ; preds = %27
  ret void
}

declare dso_local i32 @ctrl_outl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
