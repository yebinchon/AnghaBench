; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/boot/compressed/extr_misc.c___memzero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/boot/compressed/extr_misc.c___memzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__memzero(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast %union.anon* %5 to i8**
  store i8* %7, i8** %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = lshr i64 %9, 5
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = bitcast %union.anon* %5 to i64**
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %16, align 8
  store i64 0, i64* %17, align 8
  %19 = bitcast %union.anon* %5 to i64**
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %19, align 8
  store i64 0, i64* %20, align 8
  %22 = bitcast %union.anon* %5 to i64**
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %22, align 8
  store i64 0, i64* %23, align 8
  %25 = bitcast %union.anon* %5 to i64**
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %25, align 8
  store i64 0, i64* %26, align 8
  %28 = bitcast %union.anon* %5 to i64**
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %28, align 8
  store i64 0, i64* %29, align 8
  %31 = bitcast %union.anon* %5 to i64**
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %31, align 8
  store i64 0, i64* %32, align 8
  %34 = bitcast %union.anon* %5 to i64**
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %34, align 8
  store i64 0, i64* %35, align 8
  %37 = bitcast %union.anon* %5 to i64**
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %37, align 8
  store i64 0, i64* %38, align 8
  br label %40

40:                                               ; preds = %15
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load i64, i64* %4, align 8
  %45 = and i64 %44, 16
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = bitcast %union.anon* %5 to i64**
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %48, align 8
  store i64 0, i64* %49, align 8
  %51 = bitcast %union.anon* %5 to i64**
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %51, align 8
  store i64 0, i64* %52, align 8
  %54 = bitcast %union.anon* %5 to i64**
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %54, align 8
  store i64 0, i64* %55, align 8
  %57 = bitcast %union.anon* %5 to i64**
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %57, align 8
  store i64 0, i64* %58, align 8
  br label %60

60:                                               ; preds = %47, %43
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = bitcast %union.anon* %5 to i64**
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %65, align 8
  store i64 0, i64* %66, align 8
  %68 = bitcast %union.anon* %5 to i64**
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %68, align 8
  store i64 0, i64* %69, align 8
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i64, i64* %4, align 8
  %73 = and i64 %72, 4
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = bitcast %union.anon* %5 to i64**
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %76, align 8
  store i64 0, i64* %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i64, i64* %4, align 8
  %81 = and i64 %80, 2
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = bitcast %union.anon* %5 to i8**
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %84, align 8
  store i8 0, i8* %85, align 1
  %87 = bitcast %union.anon* %5 to i8**
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %87, align 8
  store i8 0, i8* %88, align 1
  br label %90

90:                                               ; preds = %83, %79
  %91 = load i64, i64* %4, align 8
  %92 = and i64 %91, 1
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = bitcast %union.anon* %5 to i8**
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %95, align 8
  store i8 0, i8* %96, align 1
  br label %98

98:                                               ; preds = %94, %90
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
