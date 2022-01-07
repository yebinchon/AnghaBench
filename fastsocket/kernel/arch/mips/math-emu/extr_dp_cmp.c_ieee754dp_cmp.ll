; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_cmp.c_ieee754dp_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_cmp.c_ieee754dp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@COMPYDP = common dso_local global i32 0, align 4
@EXPLODEXDP = common dso_local global i32 0, align 4
@EXPLODEYDP = common dso_local global i32 0, align 4
@FLUSHXDP = common dso_local global i32 0, align 4
@FLUSHYDP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@xc = common dso_local global i64 0, align 8
@IEEE754_CLASS_SNAN = common dso_local global i64 0, align 8
@yc = common dso_local global i64 0, align 8
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@IEEE754_CUN = common dso_local global i32 0, align 4
@IEEE754_CLT = common dso_local global i32 0, align 4
@IEEE754_CGT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fcmpf\00", align 1
@DP_SIGN_BIT = common dso_local global i32 0, align 4
@IEEE754_CEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_cmp(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @COMPXDP, align 4
  %15 = load i32, i32* @COMPYDP, align 4
  %16 = load i32, i32* @EXPLODEXDP, align 4
  %17 = load i32, i32* @EXPLODEYDP, align 4
  %18 = load i32, i32* @FLUSHXDP, align 4
  %19 = load i32, i32* @FLUSHYDP, align 4
  %20 = load i32, i32* @CLEARCX, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ieee754dp_isnan(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ieee754dp_isnan(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %25, %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @xc, align 8
  %35 = load i64, i64* @IEEE754_CLASS_SNAN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @yc, align 8
  %39 = load i64, i64* @IEEE754_CLASS_SNAN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33, %30
  %42 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %43 = call i32 @SETCX(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IEEE754_CUN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %116

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IEEE754_CLT, align 4
  %53 = load i32, i32* @IEEE754_CGT, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %62 = call i64 @SETANDTESTCX(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ieee754si_xcpt(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %5, align 4
  br label %116

68:                                               ; preds = %60, %57
  br label %69

69:                                               ; preds = %68, %50
  store i32 0, i32* %5, align 4
  br label %116

70:                                               ; preds = %25
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 0, %78
  %80 = load i32, i32* @DP_SIGN_BIT, align 4
  %81 = xor i32 %79, %80
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 0, %86
  %88 = load i32, i32* @DP_SIGN_BIT, align 4
  %89 = xor i32 %87, %88
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @IEEE754_CLT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %116

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @IEEE754_CEQ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %116

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @IEEE754_CGT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %110, %104, %94, %69, %64, %49
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @ieee754dp_isnan(i32) #1

declare dso_local i32 @SETCX(i32) #1

declare dso_local i64 @SETANDTESTCX(i32) #1

declare dso_local i32 @ieee754si_xcpt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
