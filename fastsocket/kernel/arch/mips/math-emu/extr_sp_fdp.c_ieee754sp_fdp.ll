; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_fdp.c_ieee754sp_fdp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_fdp.c_ieee754sp_fdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@EXPLODEXDP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@FLUSHXDP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fdp\00", align 1
@xs = common dso_local global i32 0, align 4
@SP_EMAX = common dso_local global i32 0, align 4
@SP_EBIAS = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4
@DP_MBITS = common dso_local global i32 0, align 4
@SP_MBITS = common dso_local global i32 0, align 4
@IEEE754_UNDERFLOW = common dso_local global i32 0, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE754_RU = common dso_local global i32 0, align 4
@IEEE754_RD = common dso_local global i32 0, align 4
@xe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_fdp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @COMPXDP, align 4
  %7 = load i32, i32* @EXPLODEXDP, align 4
  %8 = load i32, i32* @CLEARCX, align 4
  %9 = load i32, i32* @FLUSHXDP, align 4
  %10 = load i32, i32* @xc, align 4
  switch i32 %10, label %73 [
    i32 129, label %11
    i32 130, label %16
    i32 132, label %38
    i32 128, label %41
    i32 133, label %44
    i32 131, label %72
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %13 = call i32 @SETCX(i32 %12)
  %14 = call i32 (...) @ieee754sp_indef()
  %15 = call i32 (i32, i8*, ...) @ieee754sp_nanxcpt(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load i32, i32* @xs, align 4
  %18 = load i32, i32* @SP_EMAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @SP_EBIAS, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @xm, align 4
  %24 = load i32, i32* @DP_MBITS, align 4
  %25 = load i32, i32* @SP_MBITS, align 4
  %26 = sub nsw i32 %24, %25
  %27 = ashr i32 %23, %26
  %28 = call i32 @buildsp(i32 %17, i64 %22, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ieee754sp_isnan(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %16
  %33 = call i32 (...) @ieee754sp_indef()
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %16
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @ieee754sp_nanxcpt(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %1
  %39 = load i32, i32* @xs, align 4
  %40 = call i32 @ieee754sp_inf(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %95

41:                                               ; preds = %1
  %42 = load i32, i32* @xs, align 4
  %43 = call i32 @ieee754sp_zero(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %1
  %45 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %46 = call i32 @SETCX(i32 %45)
  %47 = load i32, i32* @IEEE754_INEXACT, align 4
  %48 = call i32 @SETCX(i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  %50 = load i32, i32* @IEEE754_RU, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @xs, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %44
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  %57 = load i32, i32* @IEEE754_RD, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @xs, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %52
  %63 = load i32, i32* @xs, align 4
  %64 = call i32 @ieee754sp_mind(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ieee754sp_xcpt(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 %66, i32* %2, align 4
  br label %95

67:                                               ; preds = %59, %55
  %68 = load i32, i32* @xs, align 4
  %69 = call i32 @ieee754sp_zero(i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @ieee754sp_xcpt(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %2, align 4
  br label %95

72:                                               ; preds = %1
  br label %73

73:                                               ; preds = %1, %72
  %74 = load i32, i32* @xm, align 4
  %75 = load i32, i32* @DP_MBITS, align 4
  %76 = load i32, i32* @SP_MBITS, align 4
  %77 = add nsw i32 %76, 3
  %78 = sub nsw i32 %75, %77
  %79 = ashr i32 %74, %78
  %80 = load i32, i32* @xm, align 4
  %81 = load i32, i32* @DP_MBITS, align 4
  %82 = load i32, i32* @SP_MBITS, align 4
  %83 = add nsw i32 %82, 3
  %84 = sub nsw i32 %81, %83
  %85 = sub nsw i32 64, %84
  %86 = shl i32 %80, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = or i32 %79, %88
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @xs, align 4
  %91 = load i32, i32* @xe, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @SPNORMRET1(i32 %90, i32 %91, i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %73, %67, %62, %41, %38, %34, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754sp_nanxcpt(i32, i8*, ...) #1

declare dso_local i32 @ieee754sp_indef(...) #1

declare dso_local i32 @buildsp(i32, i64, i32) #1

declare dso_local i32 @ieee754sp_isnan(i32) #1

declare dso_local i32 @ieee754sp_inf(i32) #1

declare dso_local i32 @ieee754sp_zero(i32) #1

declare dso_local i32 @ieee754sp_xcpt(i32, i8*, i32) #1

declare dso_local i32 @ieee754sp_mind(i32) #1

declare dso_local i32 @SPNORMRET1(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
