; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_gpio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_gpio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32 }

@CX18_REG_GPIO_DIR1 = common dso_local global i32 0, align 4
@CX18_REG_GPIO_OUT1 = common dso_local global i32 0, align 4
@CX18_REG_GPIO_DIR2 = common dso_local global i32 0, align 4
@CX18_REG_GPIO_OUT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @gpio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_write(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %7 = load %struct.cx18*, %struct.cx18** %2, align 8
  %8 = getelementptr inbounds %struct.cx18, %struct.cx18* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 65535
  store i32 %10, i32* %3, align 4
  %11 = load %struct.cx18*, %struct.cx18** %2, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cx18*, %struct.cx18** %2, align 8
  %16 = getelementptr inbounds %struct.cx18, %struct.cx18* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.cx18*, %struct.cx18** %2, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %6, align 4
  %23 = load %struct.cx18*, %struct.cx18** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* @CX18_REG_GPIO_DIR1, align 4
  %27 = load i32, i32* %3, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @cx18_write_reg_expect(%struct.cx18* %23, i32 %25, i32 %26, i32 %28, i32 %29)
  %31 = load %struct.cx18*, %struct.cx18** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CX18_REG_GPIO_OUT1, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @cx18_write_reg_expect(%struct.cx18* %31, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.cx18*, %struct.cx18** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* @CX18_REG_GPIO_DIR2, align 4
  %44 = load i32, i32* %5, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @cx18_write_reg_expect(%struct.cx18* %40, i32 %42, i32 %43, i32 %45, i32 %46)
  %48 = load %struct.cx18*, %struct.cx18** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CX18_REG_GPIO_OUT2, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @cx18_write_reg_expect(%struct.cx18* %48, i32 %52, i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
