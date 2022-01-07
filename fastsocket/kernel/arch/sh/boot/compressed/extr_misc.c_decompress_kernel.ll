; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_text = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@output = common dso_local global i8* null, align 8
@_end = common dso_local global i32 0, align 4
@free_mem_ptr = common dso_local global i64 0, align 8
@HEAP_SIZE = common dso_local global i64 0, align 8
@free_mem_end_ptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Uncompressing Linux... \00", align 1
@CACHE_ENABLE = common dso_local global i32 0, align 4
@input_data = common dso_local global i32 0, align 4
@input_len = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@CACHE_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Ok, booting the kernel.\0A\00", align 1
@CONFIG_MEMORY_START = common dso_local global i32 0, align 4
@P2SEG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_kernel() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @PAGE_SIZE, align 8
  %3 = add i64 ptrtoint (i32* @_text to i64), %2
  %4 = call i64 @PHYSADDR(i64 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** @output, align 8
  store i64 ptrtoint (i32* @_end to i64), i64* @free_mem_ptr, align 8
  %7 = load i64, i64* @free_mem_ptr, align 8
  %8 = load i64, i64* @HEAP_SIZE, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* @free_mem_end_ptr, align 8
  %10 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CACHE_ENABLE, align 4
  %12 = call i32 @cache_control(i32 %11)
  %13 = load i32, i32* @input_data, align 4
  %14 = load i32, i32* @input_len, align 4
  %15 = load i8*, i8** @output, align 8
  %16 = load i32, i32* @error, align 4
  %17 = call i32 @decompress(i32 %13, i32 %14, i32* null, i32* null, i8* %15, i32* null, i32 %16)
  %18 = load i32, i32* @CACHE_DISABLE, align 4
  %19 = call i32 @cache_control(i32 %18)
  %20 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @PHYSADDR(i64) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @cache_control(i32) #1

declare dso_local i32 @decompress(i32, i32, i32*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
