; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_unlockarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_unlockarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@sun4c_iobuffer_start = common dso_local global i64 0, align 8
@sun4c_iobuffer_map = common dso_local global i32* null, align 8
@sun4c_iobuffer_high = common dso_local global i64 0, align 8
@SUN4C_REAL_PGDIR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @sun4c_unlockarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4c_unlockarea(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load i64, i64* @PAGE_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = add i64 %20, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  br label %29

29:                                               ; preds = %32, %2
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @sun4c_put_pte(i64 %35, i32 0)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @sun4c_iobuffer_start, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = lshr i64 %39, %40
  %42 = load i32*, i32** @sun4c_iobuffer_map, align 8
  %43 = call i32 @clear_bit(i64 %41, i32* %42)
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %29

48:                                               ; preds = %29
  %49 = load i64, i64* @sun4c_iobuffer_high, align 8
  %50 = load i64, i64* @sun4c_iobuffer_start, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* @PAGE_SHIFT, align 8
  %53 = lshr i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %69, %48
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32*, i32** @sun4c_iobuffer_map, align 8
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 5
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %58, %55
  %68 = phi i1 [ false, %55 ], [ %66, %58 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 32
  store i32 %71, i32* %8, align 4
  br label %55

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 32
  store i32 %74, i32* %8, align 4
  %75 = load i64, i64* @sun4c_iobuffer_start, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = add i64 %75, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @SUN4C_REAL_PGDIR_ALIGN(i32 %83)
  %85 = load i64, i64* @SUN4C_REAL_PGDIR_SIZE, align 8
  %86 = add i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %93, %72
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @sun4c_iobuffer_high, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i64, i64* @SUN4C_REAL_PGDIR_SIZE, align 8
  %95 = load i64, i64* @sun4c_iobuffer_high, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* @sun4c_iobuffer_high, align 8
  %97 = load i64, i64* @sun4c_iobuffer_high, align 8
  %98 = call i32 @free_locked_segment(i64 %97)
  br label %88

99:                                               ; preds = %88
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @local_irq_restore(i64 %100)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sun4c_put_pte(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i64 @SUN4C_REAL_PGDIR_ALIGN(i32) #1

declare dso_local i32 @free_locked_segment(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
