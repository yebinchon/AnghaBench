; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_data = common dso_local global i64 0, align 8
@output_ptr = common dso_local global i64 0, align 8
@_end = common dso_local global i32 0, align 4
@free_mem_ptr = common dso_local global i64 0, align 8
@HEAP_SIZE = common dso_local global i64 0, align 8
@free_mem_end_ptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Uncompressing Linux... \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Ok, booting the kernel.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_kernel() #0 {
  store i64 0, i64* @output_data, align 8
  store i64 4194304, i64* @output_ptr, align 8
  store i64 ptrtoint (i32* @_end to i64), i64* @free_mem_ptr, align 8
  %1 = load i64, i64* @free_mem_ptr, align 8
  %2 = load i64, i64* @HEAP_SIZE, align 8
  %3 = add i64 %1, %2
  store i64 %3, i64* @free_mem_end_ptr, align 8
  %4 = call i32 (...) @makecrc()
  %5 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @gunzip()
  %7 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @makecrc(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @gunzip(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
