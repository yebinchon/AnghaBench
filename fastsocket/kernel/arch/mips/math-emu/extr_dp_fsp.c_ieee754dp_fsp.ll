; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_fsp.c_ieee754dp_fsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_dp_fsp.c_ieee754dp_fsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPXSP = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@FLUSHXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fsp\00", align 1
@xs = common dso_local global i32 0, align 4
@DP_EMAX = common dso_local global i32 0, align 4
@DP_EBIAS = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4
@DP_MBITS = common dso_local global i32 0, align 4
@SP_MBITS = common dso_local global i32 0, align 4
@xe = common dso_local global i64 0, align 8
@SP_HIDDEN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_fsp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @COMPXSP, align 4
  %5 = load i32, i32* @EXPLODEXSP, align 4
  %6 = load i32, i32* @CLEARCX, align 4
  %7 = load i32, i32* @FLUSHXSP, align 4
  %8 = load i32, i32* @xc, align 4
  switch i32 %8, label %48 [
    i32 129, label %9
    i32 130, label %14
    i32 132, label %29
    i32 128, label %32
    i32 133, label %35
    i32 131, label %47
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %11 = call i32 @SETCX(i32 %10)
  %12 = call i32 (...) @ieee754dp_indef()
  %13 = call i32 (i32, i8*, ...) @ieee754dp_nanxcpt(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load i32, i32* @xs, align 4
  %16 = load i32, i32* @DP_EMAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @DP_EBIAS, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @xm, align 4
  %22 = load i32, i32* @DP_MBITS, align 4
  %23 = load i32, i32* @SP_MBITS, align 4
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 %21, %24
  %26 = call i32 @builddp(i32 %15, i64 %20, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @ieee754dp_nanxcpt(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %1
  %30 = load i32, i32* @xs, align 4
  %31 = call i32 @ieee754dp_inf(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %1
  %33 = load i32, i32* @xs, align 4
  %34 = call i32 @ieee754dp_zero(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %41, %35
  %37 = load i32, i32* @xm, align 4
  %38 = load i32, i32* @SP_MBITS, align 4
  %39 = ashr i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @xm, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* @xm, align 4
  %44 = load i64, i64* @xe, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* @xe, align 8
  br label %36

46:                                               ; preds = %36
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %1, %47, %46
  %49 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @xm, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @xm, align 4
  %53 = load i32, i32* @xs, align 4
  %54 = load i64, i64* @xe, align 8
  %55 = load i64, i64* @DP_EBIAS, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @xm, align 4
  %58 = load i32, i32* @DP_MBITS, align 4
  %59 = load i32, i32* @SP_MBITS, align 4
  %60 = sub nsw i32 %58, %59
  %61 = shl i32 %57, %60
  %62 = call i32 @builddp(i32 %53, i64 %56, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %48, %32, %29, %14, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754dp_nanxcpt(i32, i8*, ...) #1

declare dso_local i32 @ieee754dp_indef(...) #1

declare dso_local i32 @builddp(i32, i64, i32) #1

declare dso_local i32 @ieee754dp_inf(i32) #1

declare dso_local i32 @ieee754dp_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
