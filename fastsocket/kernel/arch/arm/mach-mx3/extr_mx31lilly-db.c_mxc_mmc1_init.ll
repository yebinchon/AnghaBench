; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_mx31lilly-db.c_mxc_mmc1_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mx3/extr_mx31lilly-db.c_mxc_mmc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MX31_PIN_GPIO1_1 = common dso_local global i32 0, align 4
@gpio_det = common dso_local global i32 0, align 4
@MX31_PIN_LCS0 = common dso_local global i32 0, align 4
@gpio_wp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MMC detect\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MMC w/p\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @mxc_mmc1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_mmc1_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @MX31_PIN_GPIO1_1, align 4
  %10 = call i32 @IOMUX_TO_GPIO(i32 %9)
  store i32 %10, i32* @gpio_det, align 4
  %11 = load i32, i32* @MX31_PIN_LCS0, align 4
  %12 = call i32 @IOMUX_TO_GPIO(i32 %11)
  store i32 %12, i32* @gpio_wp, align 4
  %13 = load i32, i32* @gpio_det, align 4
  %14 = call i32 @gpio_request(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i32, i32* @gpio_wp, align 4
  %21 = call i32 @gpio_request(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %45

25:                                               ; preds = %19
  %26 = load i32, i32* @gpio_det, align 4
  %27 = call i32 @gpio_direction_input(i32 %26)
  %28 = load i32, i32* @gpio_wp, align 4
  %29 = call i32 @gpio_direction_input(i32 %28)
  %30 = load i32, i32* @MX31_PIN_GPIO1_1, align 4
  %31 = call i32 @IOMUX_TO_IRQ(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IRQF_DISABLED, align 4
  %34 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %35 = or i32 %33, %34
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @request_irq(i32 %31, i32 %32, i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %42

41:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %49

42:                                               ; preds = %40
  %43 = load i32, i32* @gpio_wp, align 4
  %44 = call i32 @gpio_free(i32 %43)
  br label %45

45:                                               ; preds = %42, %24
  %46 = load i32, i32* @gpio_det, align 4
  %47 = call i32 @gpio_free(i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %41, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
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
