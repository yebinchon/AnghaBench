; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_subpage-prot.c_subpage_prot_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_subpage-prot.c_subpage_prot_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }
%struct.subpage_prot_table = type { i64, i32***, i32** }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@SBP_L3_SHIFT = common dso_local global i64 0, align 8
@SBP_L2_SHIFT = common dso_local global i64 0, align 8
@SBP_L2_COUNT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SBP_L1_COUNT = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @subpage_prot_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subpage_prot_clear(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.subpage_prot_table*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %5, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.subpage_prot_table* @pgd_subpage_prot(i32 %18)
  store %struct.subpage_prot_table* %19, %struct.subpage_prot_table** %6, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i32 @down_write(i32* %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %28 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %33 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %31, %2
  br label %36

36:                                               ; preds = %125, %35
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @pmd_addr_end(i64 %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp ult i64 %44, 4294967296
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %48 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  store i32** %49, i32*** %7, align 8
  br label %63

50:                                               ; preds = %40
  %51 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %52 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %51, i32 0, i32 1
  %53 = load i32***, i32**** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @SBP_L3_SHIFT, align 8
  %56 = lshr i64 %54, %55
  %57 = getelementptr inbounds i32**, i32*** %53, i64 %56
  %58 = load i32**, i32*** %57, align 8
  store i32** %58, i32*** %7, align 8
  %59 = load i32**, i32*** %7, align 8
  %60 = icmp ne i32** %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %125

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32**, i32*** %7, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @SBP_L2_SHIFT, align 8
  %67 = lshr i64 %65, %66
  %68 = load i32, i32* @SBP_L2_COUNT, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = and i64 %67, %70
  %72 = getelementptr inbounds i32*, i32** %64, i64 %71
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  br label %125

77:                                               ; preds = %63
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = lshr i64 %78, %79
  %81 = load i32, i32* @SBP_L1_COUNT, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %80, %83
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %8, align 8
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @PAGE_SHIFT, align 8
  %89 = lshr i64 %87, %88
  %90 = load i32, i32* @PTRS_PER_PTE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = and i64 %89, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @PTRS_PER_PTE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %10, align 4
  %98 = load i64, i64* %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i64, i64* @PAGE_SHIFT, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = add i64 %98, %103
  %105 = load i64, i64* %11, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %77
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %3, align 8
  %110 = sub i64 %108, %109
  %111 = load i64, i64* @PAGE_SHIFT, align 8
  %112 = lshr i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %107, %77
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memset(i32* %115, i32 0, i32 %119)
  %121 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %122 = load i64, i64* %3, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @hpte_flush_range(%struct.mm_struct* %121, i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %114, %76, %61
  %126 = load i64, i64* %11, align 8
  store i64 %126, i64* %3, align 8
  br label %36

127:                                              ; preds = %36
  %128 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %129 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %128, i32 0, i32 0
  %130 = call i32 @up_write(i32* %129)
  ret void
}

declare dso_local %struct.subpage_prot_table* @pgd_subpage_prot(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hpte_flush_range(%struct.mm_struct*, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
