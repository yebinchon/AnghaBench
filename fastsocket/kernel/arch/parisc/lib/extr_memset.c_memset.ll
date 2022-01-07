; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_memset.c_memset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/lib/extr_memset.c_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memset(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp uge i64 %14, 8
  br i1 %15, label %16, label %131

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = trunc i32 %17 to i8
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @OPSIZ, align 4
  %29 = icmp sgt i32 %28, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 16
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %30, %16
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* @OPSIZ, align 4
  %40 = sext i32 %39 to i64
  %41 = srem i64 %38, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i64, i64* %8, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %45, i8* %48, align 1
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = sub i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @OPSIZ, align 4
  %56 = mul nsw i32 %55, 8
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %54, %57
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %62, %53
  %60 = load i64, i64* %9, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %8, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %8, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* %8, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* %8, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i64, i64* %8, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i64, i64* %8, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i64, i64* %8, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i64, i64* %8, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @OPSIZ, align 4
  %96 = mul nsw i32 8, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %59

102:                                              ; preds = %59
  %103 = load i32, i32* @OPSIZ, align 4
  %104 = mul nsw i32 %103, 8
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %6, align 8
  %107 = urem i64 %106, %105
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i32, i32* @OPSIZ, align 4
  %110 = sext i32 %109 to i64
  %111 = udiv i64 %108, %110
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %115, %102
  %113 = load i64, i64* %9, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load i64, i64* %8, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @OPSIZ, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %8, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub i64 %124, 1
  store i64 %125, i64* %9, align 8
  br label %112

126:                                              ; preds = %112
  %127 = load i32, i32* @OPSIZ, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %6, align 8
  %130 = urem i64 %129, %128
  store i64 %130, i64* %6, align 8
  br label %131

131:                                              ; preds = %126, %3
  br label %132

132:                                              ; preds = %135, %131
  %133 = load i64, i64* %6, align 8
  %134 = icmp ugt i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i64, i64* %8, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %137, i8* %140, align 1
  %141 = load i64, i64* %8, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %6, align 8
  %144 = sub i64 %143, 1
  store i64 %144, i64* %6, align 8
  br label %132

145:                                              ; preds = %132
  %146 = load i8*, i8** %4, align 8
  ret i8* %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
