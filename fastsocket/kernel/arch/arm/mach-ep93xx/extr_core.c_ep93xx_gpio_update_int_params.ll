; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_core.c_ep93xx_gpio_update_int_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_core.c_ep93xx_gpio_update_int_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@int_en_register_offset = common dso_local global i32* null, align 8
@gpio_int_type2 = common dso_local global i32* null, align 8
@int_type2_register_offset = common dso_local global i32* null, align 8
@gpio_int_type1 = common dso_local global i32* null, align 8
@int_type1_register_offset = common dso_local global i32* null, align 8
@gpio_int_unmasked = common dso_local global i32* null, align 8
@gpio_int_enabled = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep93xx_gpio_update_int_params(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ugt i32 %3, 2
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load i32*, i32** @int_en_register_offset, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @EP93XX_GPIO_REG(i32 %11)
  %13 = call i32 @__raw_writeb(i32 0, i32 %12)
  %14 = load i32*, i32** @gpio_int_type2, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @int_type2_register_offset, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @EP93XX_GPIO_REG(i32 %23)
  %25 = call i32 @__raw_writeb(i32 %18, i32 %24)
  %26 = load i32*, i32** @gpio_int_type1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @int_type1_register_offset, align 8
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @EP93XX_GPIO_REG(i32 %35)
  %37 = call i32 @__raw_writeb(i32 %30, i32 %36)
  %38 = load i32*, i32** @gpio_int_unmasked, align 8
  %39 = load i32, i32* %2, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @gpio_int_enabled, align 8
  %44 = load i32, i32* %2, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %42, %47
  %49 = load i32*, i32** @int_en_register_offset, align 8
  %50 = load i32, i32* %2, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @EP93XX_GPIO_REG(i32 %53)
  %55 = call i32 @__raw_writeb(i32 %48, i32 %54)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @EP93XX_GPIO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
