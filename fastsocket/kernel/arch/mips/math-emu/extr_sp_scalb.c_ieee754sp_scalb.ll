; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_scalb.c_ieee754sp_scalb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_scalb.c_ieee754sp_scalb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPXSP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"scalb\00", align 1
@SPDNORMX = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@xe = common dso_local global i64 0, align 8
@xm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_scalb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @COMPXSP, align 4
  %7 = load i32, i32* @CLEARCX, align 4
  %8 = load i32, i32* @EXPLODEXSP, align 4
  %9 = load i32, i32* @xc, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 130, label %15
    i32 132, label %15
    i32 128, label %15
    i32 133, label %17
    i32 131, label %19
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ieee754sp_nanxcpt(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2, %2, %2
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @SPDNORMX, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %2, %19, %17
  %21 = load i32, i32* @xs, align 4
  %22 = load i64, i64* @xe, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* @xm, align 4
  %27 = shl i32 %26, 3
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SPNORMRET2(i32 %21, i64 %25, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %15, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ieee754sp_nanxcpt(i32, i8*, i32, i32) #1

declare dso_local i32 @SPNORMRET2(i32, i64, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
