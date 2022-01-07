; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_am200epd.c_am200_init_gpio_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_am200epd.c_am200_init_gpio_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.metronomefb_par = type { i32 }

@gpios = common dso_local global i32* null, align 8
@gpio_names = common dso_local global i32* null, align 8
@am200_device = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed requesting gpio %s, err=%d\0A\00", align 1
@LED_GPIO_PIN = common dso_local global i32 0, align 4
@STDBY_GPIO_PIN = common dso_local global i32 0, align 4
@RST_GPIO_PIN = common dso_local global i32 0, align 4
@RDY_GPIO_PIN = common dso_local global i32 0, align 4
@ERR_GPIO_PIN = common dso_local global i32 0, align 4
@PCBPWR_GPIO_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metronomefb_par*)* @am200_init_gpio_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am200_init_gpio_regs(%struct.metronomefb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.metronomefb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.metronomefb_par* %0, %struct.metronomefb_par** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @gpios, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = load i32*, i32** @gpios, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @gpio_names, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_request(i32 %16, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @am200_device, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** @gpio_names, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %52

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %6

39:                                               ; preds = %6
  %40 = load i32, i32* @LED_GPIO_PIN, align 4
  %41 = call i32 @gpio_direction_output(i32 %40, i32 0)
  %42 = load i32, i32* @STDBY_GPIO_PIN, align 4
  %43 = call i32 @gpio_direction_output(i32 %42, i32 0)
  %44 = load i32, i32* @RST_GPIO_PIN, align 4
  %45 = call i32 @gpio_direction_output(i32 %44, i32 0)
  %46 = load i32, i32* @RDY_GPIO_PIN, align 4
  %47 = call i32 @gpio_direction_input(i32 %46)
  %48 = load i32, i32* @ERR_GPIO_PIN, align 4
  %49 = call i32 @gpio_direction_input(i32 %48)
  %50 = load i32, i32* @PCBPWR_GPIO_PIN, align 4
  %51 = call i32 @gpio_direction_output(i32 %50, i32 0)
  store i32 0, i32* %2, align 4
  br label %66

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %56, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32*, i32** @gpios, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gpio_free(i32 %62)
  br label %53

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %39
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
