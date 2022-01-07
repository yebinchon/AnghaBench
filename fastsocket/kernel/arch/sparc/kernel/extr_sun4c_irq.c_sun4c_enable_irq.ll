; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4c_irq.c_sun4c_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4c_irq.c_sun4c_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_IRQS = common dso_local global i32 0, align 4
@interrupt_enable = common dso_local global i32 0, align 4
@SUN4C_INT_E1 = common dso_local global i8 0, align 1
@SUN4C_INT_E8 = common dso_local global i8 0, align 1
@SUN4C_INT_E10 = common dso_local global i8 0, align 1
@SUN4C_INT_E14 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sun4c_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4c_enable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* @NR_IRQS, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @interrupt_enable, align 4
  %13 = call zeroext i8 @sbus_readb(i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %43 [
    i32 1, label %15
    i32 8, label %22
    i32 10, label %29
    i32 14, label %36
  ]

15:                                               ; preds = %1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @SUN4C_INT_E1, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  br label %46

22:                                               ; preds = %1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @SUN4C_INT_E8, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %46

29:                                               ; preds = %1
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @SUN4C_INT_E10, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  br label %46

36:                                               ; preds = %1
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @SUN4C_INT_E14, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %5, align 1
  br label %46

43:                                               ; preds = %1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  br label %52

46:                                               ; preds = %36, %29, %22, %15
  %47 = load i8, i8* %5, align 1
  %48 = load i32, i32* @interrupt_enable, align 4
  %49 = call i32 @sbus_writeb(i8 zeroext %47, i32 %48)
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  br label %52

52:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @sbus_readb(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @sbus_writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
