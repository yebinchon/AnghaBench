; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_tlong.c_ieee754dp_tlong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_tlong.c_ieee754dp_tlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXDP = common dso_local global i32 0, align 4
@FLUSHXDP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dp_tlong\00", align 1
@xe = common dso_local global i32 0, align 4
@xs = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4
@DP_HIDDEN_BIT = common dso_local global i32 0, align 4
@DP_MBITS = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_tlong(i32 %0) #0 {
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
  %16 = call i32 (...) @ieee754di_indef()
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ieee754di_xcpt(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  br label %160

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

20:                                               ; preds = %1, %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = load i32, i32* @xe, align 4
  %23 = icmp sge i32 %22, 63
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* @xe, align 4
  %26 = icmp eq i32 %25, 63
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* @xs, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @xm, align 4
  %32 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %160

35:                                               ; preds = %30, %27, %24
  %36 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %37 = call i32 @SETCX(i32 %36)
  %38 = call i32 (...) @ieee754di_indef()
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ieee754di_xcpt(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %2, align 4
  br label %160

41:                                               ; preds = %21
  %42 = load i32, i32* @xe, align 4
  %43 = load i32, i32* @DP_MBITS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @xe, align 4
  %47 = load i32, i32* @DP_MBITS, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* @xm, align 4
  %50 = shl i32 %49, %48
  store i32 %50, i32* @xm, align 4
  br label %152

51:                                               ; preds = %41
  %52 = load i32, i32* @xe, align 4
  %53 = load i32, i32* @DP_MBITS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %151

55:                                               ; preds = %51
  %56 = load i32, i32* @xe, align 4
  %57 = icmp slt i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @xm, align 4
  store i32 %59, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  store i32 0, i32* @xm, align 4
  br label %85

63:                                               ; preds = %55
  %64 = load i32, i32* @xm, align 4
  %65 = load i32, i32* @xe, align 4
  %66 = add nsw i32 %65, 1
  %67 = shl i32 %64, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @DP_MBITS, align 4
  %69 = sub nsw i32 63, %68
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = ashr i32 %72, 63
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 %76, 1
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @DP_MBITS, align 4
  %81 = load i32, i32* @xe, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @xm, align 4
  %84 = ashr i32 %83, %82
  store i32 %84, i32* @xm, align 4
  br label %85

85:                                               ; preds = %63, %58
  %86 = load i32, i32* @xm, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  switch i32 %90, label %131 [
    i32 130, label %91
    i32 128, label %104
    i32 129, label %105
    i32 131, label %118
  ]

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @xm, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @xm, align 4
  br label %103

103:                                              ; preds = %100, %97, %91
  br label %131

104:                                              ; preds = %85
  br label %131

105:                                              ; preds = %85
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
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @xm, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @xm, align 4
  br label %117

117:                                              ; preds = %114, %111, %108
  br label %131

118:                                              ; preds = %85
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %118
  %125 = load i64, i64* @xs, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @xm, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @xm, align 4
  br label %130

130:                                              ; preds = %127, %124, %121
  br label %131

131:                                              ; preds = %85, %130, %117, %104, %103
  %132 = load i32, i32* @xm, align 4
  %133 = ashr i32 %132, 63
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %137 = call i32 @SETCX(i32 %136)
  %138 = call i32 (...) @ieee754di_indef()
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @ieee754di_xcpt(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %139)
  store i32 %140, i32* %2, align 4
  br label %160

141:                                              ; preds = %131
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @IEEE754_INEXACT, align 4
  %149 = call i32 @SETCX(i32 %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %51
  br label %152

152:                                              ; preds = %151, %45
  %153 = load i64, i64* @xs, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @xm, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @xm, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %155, %135, %35, %34, %19, %13
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754di_xcpt(i32, i8*, i32) #1

declare dso_local i32 @ieee754di_indef(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
