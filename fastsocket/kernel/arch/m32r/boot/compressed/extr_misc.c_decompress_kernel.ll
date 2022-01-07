; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/boot/compressed/extr_misc.c_decompress_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/boot/compressed/extr_misc.c_decompress_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_MEMORY_START = common dso_local global i64 0, align 8
@free_mem_ptr = common dso_local global i64 0, align 8
@BOOT_HEAP_SIZE = common dso_local global i64 0, align 8
@free_mem_end_ptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\0ADecompressing Linux... \00", align 1
@error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"done.\0ABooting the kernel.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_kernel(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* @CONFIG_MEMORY_START, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 8192
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 -2147483648, i32 0
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8* %22, i8** %11, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* @free_mem_ptr, align 8
  %24 = load i64, i64* @free_mem_ptr, align 8
  %25 = load i64, i64* @BOOT_HEAP_SIZE, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* @free_mem_end_ptr, align 8
  %27 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @error, align 4
  %32 = call i32 @decompress(i8* %28, i32 %29, i32* null, i32* null, i8* %30, i32* null, i32 %31)
  %33 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @decompress(i8*, i32, i32*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
