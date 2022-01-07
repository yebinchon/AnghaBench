; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_pcm970-baseboard.c_pcm970_sdhc2_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx2/extr_pcm970-baseboard.c_pcm970_sdhc2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"imx-mmc-detect\00", align 1
@GPIO_PORTC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"imx-mmc-ro\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @pcm970_sdhc2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm970_sdhc2_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call i32 @IRQ_GPIOC(i32 29)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @request_irq(i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load i64, i64* @GPIO_PORTC, align 8
  %20 = add nsw i64 %19, 28
  %21 = call i32 @gpio_request(i64 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = call i32 @IRQ_GPIOC(i32 29)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @free_irq(i32 %25, i8* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i64, i64* @GPIO_PORTC, align 8
  %31 = add nsw i64 %30, 28
  %32 = call i32 @gpio_direction_input(i64 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %24, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IRQ_GPIOC(i32) #1

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
