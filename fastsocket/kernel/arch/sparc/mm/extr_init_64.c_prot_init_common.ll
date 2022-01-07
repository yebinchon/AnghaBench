; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_prot_init_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_prot_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_COPY = common dso_local global i8* null, align 8
@PAGE_SHARED = common dso_local global i8* null, align 8
@protection_map = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @prot_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prot_init_common(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i8* @__pgprot(i64 %11)
  store i8* %12, i8** @PAGE_COPY, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i8* @__pgprot(i64 %13)
  store i8* %14, i8** @PAGE_SHARED, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @__pgprot(i64 %15)
  %17 = load i8**, i8*** @protection_map, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  %23 = call i8* @__pgprot(i64 %22)
  %24 = load i8**, i8*** @protection_map, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  %30 = call i8* @__pgprot(i64 %29)
  %31 = load i8**, i8*** @protection_map, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = call i8* @__pgprot(i64 %36)
  %38 = load i8**, i8*** @protection_map, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 3
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i8* @__pgprot(i64 %40)
  %42 = load i8**, i8*** @protection_map, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 4
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @__pgprot(i64 %44)
  %46 = load i8**, i8*** @protection_map, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 5
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i8* @__pgprot(i64 %48)
  %50 = load i8**, i8*** @protection_map, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 6
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i8* @__pgprot(i64 %52)
  %54 = load i8**, i8*** @protection_map, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 7
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i8* @__pgprot(i64 %56)
  %58 = load i8**, i8*** @protection_map, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 8
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = xor i64 %61, -1
  %63 = and i64 %60, %62
  %64 = call i8* @__pgprot(i64 %63)
  %65 = load i8**, i8*** @protection_map, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 9
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = xor i64 %68, -1
  %70 = and i64 %67, %69
  %71 = call i8* @__pgprot(i64 %70)
  %72 = load i8**, i8*** @protection_map, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 10
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = xor i64 %75, -1
  %77 = and i64 %74, %76
  %78 = call i8* @__pgprot(i64 %77)
  %79 = load i8**, i8*** @protection_map, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 11
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i8* @__pgprot(i64 %81)
  %83 = load i8**, i8*** @protection_map, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 12
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i8* @__pgprot(i64 %85)
  %87 = load i8**, i8*** @protection_map, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 13
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i8* @__pgprot(i64 %89)
  %91 = load i8**, i8*** @protection_map, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 14
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i8* @__pgprot(i64 %93)
  %95 = load i8**, i8*** @protection_map, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 15
  store i8* %94, i8** %96, align 8
  ret void
}

declare dso_local i8* @__pgprot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
