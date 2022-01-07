; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_init_64.c_free_initmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_init_64.c_free_initmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__init_begin = common dso_local global i64 0, align 8
@__init_end = common dso_local global i64 0, align 8
@POISON_FREE_INITMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@totalram_pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Freeing unused kernel memory: %luk freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_initmem() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @__init_begin, align 8
  store i64 %2, i64* %1, align 8
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @__init_end, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load i64, i64* %1, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load i32, i32* @POISON_FREE_INITMEM, align 4
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = call i32 @memset(i8* %9, i32 %10, i64 %11)
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @virt_to_page(i64 %13)
  %15 = call i32 @ClearPageReserved(i32 %14)
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @virt_to_page(i64 %16)
  %18 = call i32 @init_page_count(i32 %17)
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @free_page(i64 %19)
  %21 = load i32, i32* @totalram_pages, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @totalram_pages, align 4
  br label %23

23:                                               ; preds = %7
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %1, align 8
  br label %3

27:                                               ; preds = %3
  %28 = load i64, i64* @__init_end, align 8
  %29 = load i64, i64* @__init_begin, align 8
  %30 = sub i64 %28, %29
  %31 = lshr i64 %30, 10
  %32 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %31)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @init_page_count(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
