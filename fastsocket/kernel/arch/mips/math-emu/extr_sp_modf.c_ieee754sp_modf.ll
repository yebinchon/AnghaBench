; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_modf.c_ieee754sp_modf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_modf.c_ieee754sp_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPXSP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@xe = common dso_local global i64 0, align 8
@SP_MBITS = common dso_local global i64 0, align 8
@SP_EBIAS = common dso_local global i64 0, align 8
@xm = common dso_local global i64 0, align 8
@SP_HIDDEN_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_modf(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @COMPXSP, align 4
  %7 = load i32, i32* @CLEARCX, align 4
  %8 = load i32, i32* @EXPLODEXSP, align 4
  %9 = load i32, i32* @xc, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 130, label %10
    i32 132, label %10
    i32 128, label %10
    i32 133, label %14
    i32 131, label %19
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %3, align 4
  br label %93

14:                                               ; preds = %2
  %15 = load i32, i32* @xs, align 4
  %16 = call i32 @ieee754sp_zero(i32 %15)
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %2, %19
  %21 = load i64, i64* @xe, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @xs, align 4
  %25 = call i32 @ieee754sp_zero(i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %3, align 4
  br label %93

28:                                               ; preds = %20
  %29 = load i64, i64* @xe, align 8
  %30 = load i64, i64* @SP_MBITS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @xs, align 4
  %36 = call i32 @ieee754sp_zero(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %93

37:                                               ; preds = %28
  %38 = load i32, i32* @xs, align 4
  %39 = load i64, i64* @xe, align 8
  %40 = load i64, i64* @SP_EBIAS, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @xm, align 8
  %43 = load i64, i64* @SP_MBITS, align 8
  %44 = load i64, i64* @xe, align 8
  %45 = sub nsw i64 %43, %44
  %46 = ashr i64 %42, %45
  %47 = load i64, i64* @SP_MBITS, align 8
  %48 = load i64, i64* @xe, align 8
  %49 = sub nsw i64 %47, %48
  %50 = shl i64 %46, %49
  %51 = load i64, i64* @SP_HIDDEN_BIT, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %50, %52
  %54 = call i32 @buildsp(i32 %38, i64 %41, i64 %53)
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i64, i64* @xm, align 8
  %57 = load i64, i64* @SP_MBITS, align 8
  %58 = load i64, i64* @xe, align 8
  %59 = sub nsw i64 %57, %58
  %60 = sub nsw i64 32, %59
  %61 = shl i64 %56, %60
  %62 = load i64, i64* @SP_MBITS, align 8
  %63 = load i64, i64* @xe, align 8
  %64 = sub nsw i64 %62, %63
  %65 = sub nsw i64 32, %64
  %66 = ashr i64 %61, %65
  store i64 %66, i64* @xm, align 8
  %67 = load i64, i64* @xm, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %37
  %70 = load i32, i32* @xs, align 4
  %71 = call i32 @ieee754sp_zero(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %93

72:                                               ; preds = %37
  br label %73

73:                                               ; preds = %78, %72
  %74 = load i64, i64* @xm, align 8
  %75 = load i64, i64* @SP_MBITS, align 8
  %76 = ashr i64 %74, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i64, i64* @xm, align 8
  %80 = shl i64 %79, 1
  store i64 %80, i64* @xm, align 8
  %81 = load i64, i64* @xe, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* @xe, align 8
  br label %73

83:                                               ; preds = %73
  %84 = load i32, i32* @xs, align 4
  %85 = load i64, i64* @xe, align 8
  %86 = load i64, i64* @SP_EBIAS, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* @xm, align 8
  %89 = load i64, i64* @SP_HIDDEN_BIT, align 8
  %90 = xor i64 %89, -1
  %91 = and i64 %88, %90
  %92 = call i32 @buildsp(i32 %84, i64 %87, i64 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %83, %69, %32, %23, %14, %10
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ieee754sp_zero(i32) #1

declare dso_local i32 @buildsp(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
