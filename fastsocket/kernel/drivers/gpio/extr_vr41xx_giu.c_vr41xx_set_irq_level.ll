; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_set_irq_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_vr41xx_giu.c_vr41xx_set_irq_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIUINT_HIGH_OFFSET = common dso_local global i32 0, align 4
@IRQ_LEVEL_HIGH = common dso_local global i64 0, align 8
@GIUINTALSELL = common dso_local global i32 0, align 4
@GIUINTSTATL = common dso_local global i32 0, align 4
@GIUINT_HIGH_MAX = common dso_local global i32 0, align 4
@GIUINTALSELH = common dso_local global i32 0, align 4
@GIUINTSTATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_set_irq_level(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GIUINT_HIGH_OFFSET, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IRQ_LEVEL_HIGH, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @GIUINTALSELL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @giu_set(i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %9
  %20 = load i32, i32* @GIUINTALSELL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @giu_clear(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @GIUINTSTATL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @giu_write(i32 %24, i32 %25)
  br label %52

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @GIUINT_HIGH_MAX, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @GIUINT_HIGH_OFFSET, align 4
  %34 = sub i32 %32, %33
  %35 = shl i32 1, %34
  store i32 %35, i32* %5, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @IRQ_LEVEL_HIGH, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @GIUINTALSELH, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @giu_set(i32 %40, i32 %41)
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @GIUINTALSELH, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @giu_clear(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @GIUINTSTATH, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @giu_write(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %27
  br label %52

52:                                               ; preds = %51, %23
  ret void
}

declare dso_local i32 @giu_set(i32, i32) #1

declare dso_local i32 @giu_clear(i32, i32) #1

declare dso_local i32 @giu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
