; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-ppc/extr_miscthings.c_shove_aux_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-ppc/extr_miscthings.c_shove_aux_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shove_aux_table(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = add i64 4, %14
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %24, %1
  %19 = load i64, i64* %2, align 8
  %20 = inttoptr i64 %19 to i8**
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = add i64 %22, 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %18, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %2, align 8
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %35, %27
  %30 = load i64, i64* %2, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 16
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @AT_NULL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 15
  %42 = and i64 %41, -16
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i64, i64* %2, align 8
  %50 = sub i64 %49, 8
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = inttoptr i64 %51 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = inttoptr i64 %57 to i64*
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %48, label %63

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
