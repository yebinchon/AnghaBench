; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_inat.c_inat_get_avx_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_inat.c_inat_get_avx_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_VEX_M_MAX = common dso_local global i64 0, align 8
@INAT_LSTPFX_MAX = common dso_local global i64 0, align 8
@inat_avx_tables = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inat_get_avx_attribute(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @X86_VEX_M_MAX, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @INAT_LSTPFX_MAX, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load i32***, i32**** @inat_avx_tables, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32**, i32*** %18, i64 %19
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %27, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
