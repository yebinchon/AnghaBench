; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_create_busmap_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_create_busmap_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@EHCA_HUGEPAGE_SIZE = common dso_local global i64 0, align 8
@EHCA_SECTSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*)* @ehca_create_busmap_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_create_busmap_callback(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = mul i64 %13, %14
  %16 = load i64, i64* @EHCA_HUGEPAGE_SIZE, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @ehca_update_busmap(i64 %19, i64 %20)
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %60, %22
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @ehca_is_hugepage(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @ehca_update_busmap(i64 %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %36
  %48 = load i64, i64* @EHCA_HUGEPAGE_SIZE, align 8
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = udiv i64 %48, %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %10, align 8
  br label %60

54:                                               ; preds = %32
  %55 = load i64, i64* @EHCA_SECTSIZE, align 8
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = udiv i64 %55, %56
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %54, %47
  br label %28

61:                                               ; preds = %28
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @ehca_update_busmap(i64 %65, i64 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %61, %45, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ehca_update_busmap(i64, i64) #1

declare dso_local i64 @ehca_is_hugepage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
