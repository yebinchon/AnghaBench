; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_gup.c_get_user_pages_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_gup.c_get_user_pages_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@__VIRTUAL_MASK_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_user_pages_fast(i64 %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %10, align 8
  store i32 0, i32* %16, align 4
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = shl i64 %27, %28
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %12, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %84

37:                                               ; preds = %4
  %38 = call i32 (...) @local_irq_disable()
  %39 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32* @pgd_offset(%struct.mm_struct* %39, i64 %40)
  store i32* %41, i32** %15, align 8
  br label %42

42:                                               ; preds = %62, %37
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i64 @pgd_addr_end(i64 %45, i64 %46)
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @pgd_none(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %82

52:                                               ; preds = %42
  %53 = load i32, i32* %17, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.page**, %struct.page*** %9, align 8
  %58 = call i32 @gup_pud_range(i32 %53, i64 %54, i64 %55, i32 %56, %struct.page** %57, i32* %16)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %82

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %15, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %15, align 8
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %42, label %69

69:                                               ; preds = %62
  %70 = call i32 (...) @local_irq_enable()
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %73, %74
  %76 = load i64, i64* @PAGE_SHIFT, align 8
  %77 = lshr i64 %75, %76
  %78 = icmp ne i64 %72, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @VM_BUG_ON(i32 %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %5, align 4
  br label %127

82:                                               ; preds = %60, %51
  %83 = call i32 (...) @local_irq_enable()
  br label %84

84:                                               ; preds = %82, %36
  %85 = load i32, i32* %16, align 4
  %86 = load i64, i64* @PAGE_SHIFT, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %85, %87
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %6, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.page**, %struct.page*** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.page*, %struct.page** %93, i64 %94
  store %struct.page** %95, %struct.page*** %9, align 8
  %96 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %97 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %96, i32 0, i32 0
  %98 = call i32 @down_read(i32* %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %100 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %102, %103
  %105 = load i64, i64* @PAGE_SHIFT, align 8
  %106 = lshr i64 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.page**, %struct.page*** %9, align 8
  %109 = call i32 @get_user_pages(%struct.TYPE_3__* %99, %struct.mm_struct* %100, i64 %101, i64 %106, i32 %107, i32 0, %struct.page** %108, i32* null)
  store i32 %109, i32* %18, align 4
  %110 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %111 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %110, i32 0, i32 0
  %112 = call i32 @up_read(i32* %111)
  %113 = load i32, i32* %16, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %84
  %116 = load i32, i32* %18, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %18, align 4
  br label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %120, %118
  br label %125

125:                                              ; preds = %124, %84
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %69
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @gup_pud_range(i32, i64, i64, i32, %struct.page**, i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_3__*, %struct.mm_struct*, i64, i64, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
