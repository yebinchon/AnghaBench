; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_lockarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_lockarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@sun4c_iobuffer_map = common dso_local global i32 0, align 4
@iobuffer_map_size = common dso_local global i64 0, align 8
@sun4c_iobuffer_start = common dso_local global i64 0, align 8
@sun4c_iobuffer_high = common dso_local global i64 0, align 8
@SUN4C_REAL_PGDIR_SIZE = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@SUN4C_PAGE_KERNEL = common dso_local global i32 0, align 4
@_SUN4C_PAGE_NOCACHE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"DMA vaddr=0x%p size=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Out of iobuffer table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @sun4c_lockarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sun4c_lockarea(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = add i64 %20, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i32, i32* @sun4c_iobuffer_map, align 4
  %31 = load i64, i64* @iobuffer_map_size, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @find_next_zero_bit(i32 %30, i64 %31, i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* @iobuffer_map_size, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %138

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %43, %44
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %58

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @sun4c_iobuffer_map, align 4
  %51 = call i64 @test_bit(i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %57

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %41

57:                                               ; preds = %53
  br label %29

58:                                               ; preds = %47
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = shl i64 %61, %62
  %64 = load i64, i64* @sun4c_iobuffer_start, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i64 @SUN4C_REAL_PGDIR_ALIGN(i64 %66)
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %72, %58
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @sun4c_iobuffer_high, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i64, i64* @sun4c_iobuffer_high, align 8
  %74 = call i32 @get_locked_segment(i64 %73)
  %75 = load i64, i64* @SUN4C_REAL_PGDIR_SIZE, align 8
  %76 = load i64, i64* @sun4c_iobuffer_high, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* @sun4c_iobuffer_high, align 8
  br label %68

78:                                               ; preds = %68
  %79 = load i8*, i8** %4, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load i64, i64* @PAGE_MASK, align 8
  %82 = and i64 %80, %81
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %6, align 8
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %120, %78
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %86, %87
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @PAGE_OFFSET, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* @PAGE_SHIFT, align 8
  %95 = lshr i64 %93, %94
  store i64 %95, i64* %10, align 8
  %96 = load i32, i32* @SUN4C_PAGE_KERNEL, align 4
  %97 = call i64 @pgprot_val(i32 %96)
  %98 = load i64, i64* %10, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* @_SUN4C_PAGE_NOCACHE, align 8
  %101 = load i64, i64* %10, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i32, i32* @sun4c_iobuffer_map, align 4
  %105 = call i32 @set_bit(i64 %103, i32 %104)
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @PAGE_SHIFT, align 8
  %108 = shl i64 %106, %107
  %109 = load i64, i64* @sun4c_iobuffer_start, align 8
  %110 = add i64 %108, %109
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @sun4c_flush_page(i64 %111)
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @sun4c_put_pte(i64 %113, i64 %114)
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %90
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %84

123:                                              ; preds = %84
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @local_irq_restore(i64 %124)
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* @PAGE_SHIFT, align 8
  %128 = shl i64 %126, %127
  %129 = load i64, i64* @sun4c_iobuffer_start, align 8
  %130 = add i64 %128, %129
  %131 = load i8*, i8** %4, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load i64, i64* @PAGE_MASK, align 8
  %134 = xor i64 %133, -1
  %135 = and i64 %132, %134
  %136 = add i64 %130, %135
  %137 = inttoptr i64 %136 to i8*
  store i8* %137, i8** %3, align 8
  br label %145

138:                                              ; preds = %39
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @local_irq_restore(i64 %139)
  %141 = load i8*, i8** %4, align 8
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %141, i64 %142)
  %144 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %145

145:                                              ; preds = %138, %123
  %146 = load i8*, i8** %3, align 8
  ret i8* %146
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @SUN4C_REAL_PGDIR_ALIGN(i64) #1

declare dso_local i32 @get_locked_segment(i64) #1

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @sun4c_flush_page(i64) #1

declare dso_local i32 @sun4c_put_pte(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @printk(i8*, i8*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
