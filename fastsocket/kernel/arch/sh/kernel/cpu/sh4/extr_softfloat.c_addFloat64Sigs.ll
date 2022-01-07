; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_addFloat64Sigs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_addFloat64Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @addFloat64Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addFloat64Sigs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @extractFloat64Frac(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @extractFloat64Exp(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @extractFloat64Frac(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @extractFloat64Exp(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %26, 9
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 %28, 9
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 2047
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %4, align 4
  br label %125

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %14, align 4
  br label %47

43:                                               ; preds = %37
  %44 = call i32 @LIT64(i32 0)
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @shift64RightJamming(i32 %48, i32 %49, i32* %12)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %10, align 4
  br label %100

52:                                               ; preds = %3
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 2047
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @packFloat64(i32 %59, i32 2047, i32 0)
  store i32 %60, i32* %4, align 4
  br label %125

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %71

67:                                               ; preds = %61
  %68 = call i32 @LIT64(i32 0)
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 @shift64RightJamming(i32 %72, i32 %74, i32* %11)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %10, align 4
  br label %99

77:                                               ; preds = %52
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 2047
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %4, align 4
  br label %125

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %87, %88
  %90 = ashr i32 %89, 9
  %91 = call i32 @packFloat64(i32 %86, i32 0, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %125

92:                                               ; preds = %82
  %93 = call i32 @LIT64(i32 0)
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %10, align 4
  br label %120

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99, %47
  %101 = call i32 @LIT64(i32 0)
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = shl i32 %106, 1
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %113, %100
  br label %120

120:                                              ; preds = %119, %92
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @roundAndPackFloat64(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %85, %80, %58, %35
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @roundAndPackFloat64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
