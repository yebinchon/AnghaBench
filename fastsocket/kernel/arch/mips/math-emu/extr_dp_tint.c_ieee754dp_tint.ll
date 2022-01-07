; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_tint.c_ieee754dp_tint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_tint.c_ieee754dp_tint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXDP = common dso_local global i32 0, align 4
@FLUSHXDP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dp_tint\00", align 1
@xe = common dso_local global i32 0, align 4
@DP_MBITS = common dso_local global i32 0, align 4
@xm = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@xs = common dso_local global i64 0, align 8
@IEEE754_INEXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_tint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @COMPXDP, align 4
  %9 = load i32, i32* @CLEARCX, align 4
  %10 = load i32, i32* @EXPLODEXDP, align 4
  %11 = load i32, i32* @FLUSHXDP, align 4
  %12 = load i32, i32* @xc, align 4
  switch i32 %12, label %21 [
    i32 133, label %13
    i32 134, label %13
    i32 136, label %13
    i32 132, label %19
    i32 137, label %20
    i32 135, label %20
  ]

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %15 = call i32 @SETCX(i32 %14)
  %16 = call i32 (...) @ieee754si_indef()
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ieee754si_xcpt(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  br label %153

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %153

20:                                               ; preds = %1, %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = load i32, i32* @xe, align 4
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %26 = call i32 @SETCX(i32 %25)
  %27 = call i32 (...) @ieee754si_indef()
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ieee754si_xcpt(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %2, align 4
  br label %153

30:                                               ; preds = %21
  %31 = load i32, i32* @xe, align 4
  %32 = load i32, i32* @DP_MBITS, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @xe, align 4
  %36 = load i32, i32* @DP_MBITS, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @xm, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* @xm, align 4
  br label %145

40:                                               ; preds = %30
  %41 = load i32, i32* @xe, align 4
  %42 = load i32, i32* @DP_MBITS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %144

44:                                               ; preds = %40
  %45 = load i32, i32* @xe, align 4
  %46 = icmp slt i32 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @xm, align 4
  store i32 %48, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %6, align 4
  store i32 0, i32* @xm, align 4
  br label %72

52:                                               ; preds = %44
  %53 = load i32, i32* @xm, align 4
  %54 = load i32, i32* @DP_MBITS, align 4
  %55 = sub nsw i32 64, %54
  %56 = load i32, i32* @xe, align 4
  %57 = add nsw i32 %55, %56
  %58 = shl i32 %53, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = ashr i32 %59, 63
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 %63, 1
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @DP_MBITS, align 4
  %68 = load i32, i32* @xe, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* @xm, align 4
  %71 = ashr i32 %70, %69
  store i32 %71, i32* @xm, align 4
  br label %72

72:                                               ; preds = %52, %47
  %73 = load i32, i32* @xm, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  switch i32 %77, label %118 [
    i32 130, label %78
    i32 128, label %91
    i32 129, label %92
    i32 131, label %105
  ]

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @xm, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @xm, align 4
  br label %90

90:                                               ; preds = %87, %84, %78
  br label %118

91:                                               ; preds = %72
  br label %118

92:                                               ; preds = %72
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95, %92
  %99 = load i64, i64* @xs, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @xm, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @xm, align 4
  br label %104

104:                                              ; preds = %101, %98, %95
  br label %118

105:                                              ; preds = %72
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108, %105
  %112 = load i64, i64* @xs, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @xm, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @xm, align 4
  br label %117

117:                                              ; preds = %114, %111, %108
  br label %118

118:                                              ; preds = %72, %117, %104, %91, %90
  %119 = load i32, i32* @xm, align 4
  %120 = ashr i32 %119, 31
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i64, i64* @xs, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @xm, align 4
  %127 = icmp ne i32 %126, -2147483648
  br i1 %127, label %128, label %134

128:                                              ; preds = %125, %122
  %129 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %130 = call i32 @SETCX(i32 %129)
  %131 = call i32 (...) @ieee754si_indef()
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @ieee754si_xcpt(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %132)
  store i32 %133, i32* %2, align 4
  br label %153

134:                                              ; preds = %125, %118
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %134
  %141 = load i32, i32* @IEEE754_INEXACT, align 4
  %142 = call i32 @SETCX(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %40
  br label %145

145:                                              ; preds = %144, %34
  %146 = load i64, i64* @xs, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* @xm, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @xm, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %151, %148, %128, %24, %19, %13
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754si_xcpt(i32, i8*, i32) #1

declare dso_local i32 @ieee754si_indef(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
