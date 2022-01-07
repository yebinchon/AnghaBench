; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_armadillo5x0.c_armadillo5x0_sdhc1_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_armadillo5x0.c_armadillo5x0_sdhc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MX31_PIN_ATA_DMACK = common dso_local global i32 0, align 4
@MX31_PIN_ATA_RESET_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sdhc-card-detect\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sdhc-write-protect\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sdhc-detect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @armadillo5x0_sdhc1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armadillo5x0_sdhc1_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @MX31_PIN_ATA_DMACK, align 4
  %12 = call i32 @IOMUX_TO_GPIO(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @MX31_PIN_ATA_RESET_B, align 4
  %14 = call i32 @IOMUX_TO_GPIO(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @gpio_request(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @gpio_direction_input(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @gpio_request(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %47

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @gpio_direction_input(i32 %30)
  %32 = load i32, i32* @MX31_PIN_ATA_DMACK, align 4
  %33 = call i32 @IOMUX_TO_IRQ(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IRQF_DISABLED, align 4
  %36 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %37 = or i32 %35, %36
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @request_irq(i32 %33, i32 %34, i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %51

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @gpio_free(i32 %45)
  br label %47

47:                                               ; preds = %44, %28
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @gpio_free(i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %43, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @IOMUX_TO_GPIO(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IOMUX_TO_IRQ(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
