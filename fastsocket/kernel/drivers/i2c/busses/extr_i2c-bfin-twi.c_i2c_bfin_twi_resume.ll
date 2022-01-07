; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_i2c_bfin_twi_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_i2c_bfin_twi_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.bfin_twi_iface = type { i32, i32, i32 }

@bfin_twi_interrupt_entry = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't get IRQ %d !\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_bfin_twi_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_bfin_twi_resume(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bfin_twi_iface*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.bfin_twi_iface* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.bfin_twi_iface* %7, %struct.bfin_twi_iface** %4, align 8
  %8 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %9 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @bfin_twi_interrupt_entry, align 4
  %12 = load i32, i32* @IRQF_DISABLED, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %17 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i32 %15, %struct.bfin_twi_iface* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %24 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %31 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %32 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @write_CLKDIV(%struct.bfin_twi_iface* %30, i32 %33)
  %35 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %36 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %37 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_CONTROL(%struct.bfin_twi_iface* %35, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %29, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.bfin_twi_iface* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.bfin_twi_iface*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @write_CLKDIV(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @write_CONTROL(%struct.bfin_twi_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
