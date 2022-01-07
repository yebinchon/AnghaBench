; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_mark_screen_rdonly.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_mark_screen_rdonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @mark_screen_rdonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_screen_rdonly(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = call i32* @pgd_offset(%struct.mm_struct* %12, i32 655360)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @pgd_none_or_clear_bad(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %63

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @pud_offset(i32* %19, i32 655360)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @pud_none_or_clear_bad(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %63

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @pmd_offset(i32* %26, i32 655360)
  store i32* %27, i32** %5, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @split_huge_page_pmd(%struct.mm_struct* %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @pmd_none_or_clear_bad(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %63

35:                                               ; preds = %25
  %36 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @pte_offset_map_lock(%struct.mm_struct* %36, i32* %37, i32 655360, i32** %7)
  store i32* %38, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %56, %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @pte_present(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pte_wrprotect(i32 %50)
  %52 = call i32 @set_pte(i32* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @pte_unmap_unlock(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %34, %24, %17
  %64 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %65 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %64, i32 0, i32 0
  %66 = call i32 @up_write(i32* %65)
  %67 = call i32 (...) @flush_tlb()
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i32) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32 @split_huge_page_pmd(%struct.mm_struct*, i32*) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i32, i32**) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pte_wrprotect(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @flush_tlb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
