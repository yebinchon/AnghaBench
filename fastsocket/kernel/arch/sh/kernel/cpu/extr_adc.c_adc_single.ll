; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_adc.c_adc_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_adc.c_adc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADCSR = common dso_local global i64 0, align 8
@ADCSR_ADST = common dso_local global i32 0, align 4
@ADCSR_CKS = common dso_local global i32 0, align 4
@ADCSR_ADF = common dso_local global i8 0, align 1
@ADDRAH = common dso_local global i64 0, align 8
@ADDRAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc_single(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp uge i32 %6, 8
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %62

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 3
  %12 = shl i32 %11, 2
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* @ADCSR, align 8
  %14 = call i32 @ctrl_inb(i64 %13)
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %5, align 1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ADCSR_ADST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ADCSR_CKS, align 4
  %20 = or i32 %18, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %5, align 1
  %23 = load i64, i64* @ADCSR, align 8
  %24 = call i32 @ctrl_outb(i8 zeroext %22, i64 %23)
  br label %25

25:                                               ; preds = %29, %9
  %26 = load i64, i64* @ADCSR, align 8
  %27 = call i32 @ctrl_inb(i64 %26)
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @ADCSR_ADF, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %25, label %36

36:                                               ; preds = %29
  %37 = load i8, i8* @ADCSR_ADF, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* @ADCSR_ADST, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %5, align 1
  %46 = load i8, i8* %5, align 1
  %47 = load i64, i64* @ADCSR, align 8
  %48 = call i32 @ctrl_outb(i8 zeroext %46, i64 %47)
  %49 = load i64, i64* @ADDRAH, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @ctrl_inb(i64 %52)
  %54 = shl i32 %53, 8
  %55 = load i64, i64* @ADDRAL, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @ctrl_inb(i64 %58)
  %60 = or i32 %54, %59
  %61 = ashr i32 %60, 6
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %36, %8
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ctrl_inb(i64) #1

declare dso_local i32 @ctrl_outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
