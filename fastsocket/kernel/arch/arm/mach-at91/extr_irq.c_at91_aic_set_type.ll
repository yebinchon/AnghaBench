; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_irq.c_at91_aic_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-at91/extr_irq.c_at91_aic_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT91_AIC_SRCTYPE_HIGH = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE_RISING = common dso_local global i32 0, align 4
@AT91_ID_FIQ = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE_FALLING = common dso_local global i32 0, align 4
@AT91_AIC_SRCTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @at91_aic_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_aic_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %41 [
    i32 129, label %9
    i32 130, label %11
    i32 128, label %13
    i32 131, label %27
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @AT91_AIC_SRCTYPE_HIGH, align 4
  store i32 %10, i32* %7, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load i32, i32* @AT91_AIC_SRCTYPE_RISING, align 4
  store i32 %12, i32* %7, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AT91_ID_FIQ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @is_extern_irq(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @AT91_AIC_SRCTYPE_LOW, align 4
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %21
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AT91_ID_FIQ, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @is_extern_irq(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @AT91_AIC_SRCTYPE_FALLING, align 4
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %40, %26, %11, %9
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @AT91_AIC_SMR(i32 %45)
  %47 = call i32 @at91_sys_read(i32 %46)
  %48 = load i32, i32* @AT91_AIC_SRCTYPE, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @AT91_AIC_SMR(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @at91_sys_write(i32 %52, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %41, %37, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @is_extern_irq(i32) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @AT91_AIC_SMR(i32) #1

declare dso_local i32 @at91_sys_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
