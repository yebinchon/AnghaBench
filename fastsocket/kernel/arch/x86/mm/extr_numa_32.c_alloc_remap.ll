; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_numa_32.c_alloc_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_numa_32.c_alloc_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@node_remap_alloc_vaddr = common dso_local global i8** null, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@node_remap_end_vaddr = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @alloc_remap(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i8**, i8*** @node_remap_alloc_vaddr, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @L1_CACHE_BYTES, align 4
  %14 = call i64 @ALIGN(i64 %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr i8, i8* %18, i64 %19
  %21 = load i8**, i8*** @node_remap_end_vaddr, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp uge i8* %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17, %2
  store i8* null, i8** %3, align 8
  br label %40

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  %30 = load i8**, i8*** @node_remap_alloc_vaddr, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 %29
  store i8* %35, i8** %33, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @memset(i8* %36, i32 0, i64 %37)
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %28, %27
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
