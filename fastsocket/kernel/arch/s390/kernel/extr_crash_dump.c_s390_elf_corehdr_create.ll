; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_s390_elf_corehdr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_s390_elf_corehdr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*)* @s390_elf_corehdr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_elf_corehdr_create(i8** %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64* %1, i64** %4, align 8
  %12 = call i32 (...) @get_mem_chunk_cnt()
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @get_cpu_cnt()
  %14 = mul nsw i32 %13, 768
  %15 = add nsw i32 4096, %14
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %16, %19
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i8* @kzalloc_panic(i64 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @ehdr_init(i8* %23, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @PTR_ADD(i8* %28, i32 4)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @PTR_ADD(i8* %32, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @PTR_DIFF(i8* %38, i8* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %44, %45
  %47 = call i8* @notes_init(i32* %41, i8* %42, i64 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @PTR_DIFF(i8* %48, i8* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @loads_init(i32* %51, i64 %55)
  %57 = load i64, i64* %11, align 8
  %58 = load i64*, i64** %4, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = call i64 @relocate(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %3, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ugt i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  ret void
}

declare dso_local i32 @get_mem_chunk_cnt(...) #1

declare dso_local i32 @get_cpu_cnt(...) #1

declare dso_local i8* @kzalloc_panic(i64) #1

declare dso_local i8* @ehdr_init(i8*, i32) #1

declare dso_local i8* @PTR_ADD(i8*, i32) #1

declare dso_local i64 @PTR_DIFF(i8*, i8*) #1

declare dso_local i8* @notes_init(i32*, i8*, i64) #1

declare dso_local i32 @loads_init(i32*, i64) #1

declare dso_local i64 @relocate(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
