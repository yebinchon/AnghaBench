; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_decode_pulsedistance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_decode_pulsedistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_decode_pulsedistance(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %36, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @getbit(i32* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load i32, i32* %13, align 4
  %32 = icmp sge i32 %31, 29
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %39

34:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %16

39:                                               ; preds = %33, %16
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 29
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %117

43:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 32
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @getbit(i32* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %63

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %44

63:                                               ; preds = %55, %44
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 7
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %117

67:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %112, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %70, 32
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @getbit(i32* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %112

83:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %83
  br label %110

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = sdiv i32 %92, 2
  %94 = icmp sgt i32 %89, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 %100, 1
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %115

105:                                              ; preds = %99
  br label %109

106:                                              ; preds = %85
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %105
  br label %110

110:                                              ; preds = %109, %84
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %110, %82
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %68

115:                                              ; preds = %104, %68
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %66, %42
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @getbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
