; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_gpio.c_s3c2410_gpio_getirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_gpio.c_s3c2410_gpio_getirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@IRQ_EINT0 = common dso_local global i32 0, align 4
@IRQ_EINT4 = common dso_local global i32 0, align 4
@IRQ_EINT8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c2410_gpio_getirq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @S3C2410_GPF(i32 0)
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @S3C2410_GPG(i32 15)
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @S3C2410_GPG(i32 0)
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @S3C2410_GPF(i32 7)
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %18, %14
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @S3C2410_GPF(i32 4)
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @S3C2410_GPF(i32 0)
  %32 = sub i32 %30, %31
  %33 = load i32, i32* @IRQ_EINT0, align 4
  %34 = add i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @S3C2410_GPG(i32 0)
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @S3C2410_GPF(i32 4)
  %42 = sub i32 %40, %41
  %43 = load i32, i32* @IRQ_EINT4, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @S3C2410_GPG(i32 0)
  %48 = sub i32 %46, %47
  %49 = load i32, i32* @IRQ_EINT8, align 4
  %50 = add i32 %48, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %39, %29, %22, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @S3C2410_GPF(i32) #1

declare dso_local i32 @S3C2410_GPG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
