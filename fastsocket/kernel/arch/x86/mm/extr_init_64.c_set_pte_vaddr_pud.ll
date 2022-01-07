; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_init_64.c_set_pte_vaddr_pud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_init_64.c_set_pte_vaddr_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pte_vaddr_pud(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @pud_index(i64 %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32* @fill_pmd(i32* %15, i64 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32* @fill_pte(i32* %18, i64 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @set_pte(i32* %21, i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @__flush_tlb_one(i64 %24)
  ret void
}

declare dso_local i32 @pud_index(i64) #1

declare dso_local i32* @fill_pmd(i32*, i64) #1

declare dso_local i32* @fill_pte(i32*, i64) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @__flush_tlb_one(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
