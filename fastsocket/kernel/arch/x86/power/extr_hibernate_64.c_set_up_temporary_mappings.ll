; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_set_up_temporary_mappings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_set_up_temporary_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@temp_level4_pgt = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@__START_KERNEL_map = common dso_local global i64 0, align 8
@init_level4_pgt = common dso_local global i32* null, align 8
@max_pfn = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_up_temporary_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_temporary_mappings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i64 @get_safe_page(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @temp_level4_pgt, align 8
  %10 = load i32*, i32** @temp_level4_pgt, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %77

15:                                               ; preds = %0
  %16 = load i32*, i32** @temp_level4_pgt, align 8
  %17 = load i64, i64* @__START_KERNEL_map, align 8
  %18 = call i32 @pgd_index(i64 %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32*, i32** @init_level4_pgt, align 8
  %22 = load i64, i64* @__START_KERNEL_map, align 8
  %23 = call i32 @pgd_index(i64 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_pgd(i32* %20, i32 %26)
  %28 = call i64 @pfn_to_kaddr(i32 0)
  store i64 %28, i64* %2, align 8
  %29 = load i32, i32* @max_pfn, align 4
  %30 = call i64 @pfn_to_kaddr(i32 %29)
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %74, %15
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i64 @get_safe_page(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %1, align 4
  br label %77

44:                                               ; preds = %35
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @PGDIR_SIZE, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @__pa(i64 %55)
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @__pa(i64 %57)
  %59 = call i32 @res_phys_pud_init(i32* %54, i32 %56, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %1, align 4
  br label %77

63:                                               ; preds = %53
  %64 = load i32*, i32** @temp_level4_pgt, align 8
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @pgd_index(i64 %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32*, i32** %6, align 8
  %70 = ptrtoint i32* %69 to i64
  %71 = call i32 @__pa(i64 %70)
  %72 = call i32 @mk_kernel_pgd(i32 %71)
  %73 = call i32 @set_pgd(i32* %68, i32 %72)
  br label %74

74:                                               ; preds = %63
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %2, align 8
  br label %31

76:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %77

77:                                               ; preds = %76, %61, %41, %12
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @set_pgd(i32*, i32) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @pfn_to_kaddr(i32) #1

declare dso_local i32 @res_phys_pud_init(i32*, i32, i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @mk_kernel_pgd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
