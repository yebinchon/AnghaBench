; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mmc_det_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mmc_det_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: card %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"****** Resetting SD-card bus width ******\0A\00", align 1
@AT91_MCI_SDCR = common dso_local global i32 0, align 4
@AT91_MCI_SDCBUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_mmc_det_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_mmc_det_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at91mci_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.at91mci_host*
  store %struct.at91mci_host* %8, %struct.at91mci_host** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @irq_to_gpio(i32 %9)
  %11 = call i32 @gpio_get_value(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %17 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %23 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %25 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_hostname(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %20
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %38 = load i32, i32* @AT91_MCI_SDCR, align 4
  %39 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %40 = load i32, i32* @AT91_MCI_SDCR, align 4
  %41 = call i32 @at91_mci_read(%struct.at91mci_host* %39, i32 %40)
  %42 = load i32, i32* @AT91_MCI_SDCBUS, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @at91_mci_write(%struct.at91mci_host* %37, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %35, %20
  %47 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %48 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msecs_to_jiffies(i32 100)
  %51 = call i32 @mmc_detect_change(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %2
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %53
}

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

declare dso_local i32 @at91_mci_read(%struct.at91mci_host*, i32) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
