; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c___flush_itlb_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c___flush_itlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ITLB_ARF_WAYS = common dso_local global i32 0, align 4
@XCHAL_ITLB_ARF_ENTRIES_LOG2 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__flush_itlb_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_itlb_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @ITLB_ARF_WAYS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @XCHAL_ITLB_ARF_ENTRIES_LOG2, align 4
  %12 = shl i32 1, %11
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @invalidate_itlb_entry_no_isync(i32 %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %9

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %4

29:                                               ; preds = %4
  call void asm sideeffect "isync\0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i32 @invalidate_itlb_entry_no_isync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 525}
