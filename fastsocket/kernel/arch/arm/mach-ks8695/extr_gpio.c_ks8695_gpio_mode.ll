; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_gpio.c_ks8695_gpio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_gpio.c_ks8695_gpio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOPC_IOEINT0EN = common dso_local global i32 0, align 4
@IOPC_IOEINT1EN = common dso_local global i32 0, align 4
@IOPC_IOEINT2EN = common dso_local global i32 0, align 4
@IOPC_IOEINT3EN = common dso_local global i32 0, align 4
@IOPC_IOTIM0EN = common dso_local global i32 0, align 4
@IOPC_IOTIM1EN = common dso_local global i32 0, align 4
@KS8695_GPIO_5 = common dso_local global i32 0, align 4
@KS8695_GPIO_VA = common dso_local global i64 0, align 8
@KS8695_IOPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16)* @ks8695_gpio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_gpio_mode(i32 %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca [6 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* @IOPC_IOEINT0EN, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @IOPC_IOEINT1EN, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @IOPC_IOEINT2EN, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @IOPC_IOEINT3EN, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @IOPC_IOTIM0EN, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @IOPC_IOTIM1EN, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @KS8695_GPIO_5, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %58

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load i64, i64* @KS8695_GPIO_VA, align 8
  %28 = load i64, i64* @KS8695_IOPC, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @__raw_readl(i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i16, i16* %4, align 2
  %32 = icmp ne i16 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %50

42:                                               ; preds = %24
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %42, %33
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @KS8695_GPIO_VA, align 8
  %53 = load i64, i64* @KS8695_IOPC, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @__raw_writel(i64 %51, i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  br label %58

58:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
