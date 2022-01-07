; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_mpc52xx_psc_spi.c_mpc52xx_psc_spi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_mpc52xx_psc_spi.c_mpc52xx_psc_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.mpc52xx_psc_spi_cs*, i32 }
%struct.mpc52xx_psc_spi_cs = type { i32, i32 }
%struct.mpc52xx_psc_spi = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mpc52xx_psc_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_psc_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mpc52xx_psc_spi*, align 8
  %5 = alloca %struct.mpc52xx_psc_spi_cs*, align 8
  %6 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.mpc52xx_psc_spi* @spi_master_get_devdata(i32 %9)
  store %struct.mpc52xx_psc_spi* %10, %struct.mpc52xx_psc_spi** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %12, align 8
  store %struct.mpc52xx_psc_spi_cs* %13, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = srem i32 %16, 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %24 = icmp ne %struct.mpc52xx_psc_spi_cs* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mpc52xx_psc_spi_cs* @kzalloc(i32 8, i32 %26)
  store %struct.mpc52xx_psc_spi_cs* %27, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %28 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %29 = icmp ne %struct.mpc52xx_psc_spi_cs* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %25
  %34 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 2
  store %struct.mpc52xx_psc_spi_cs* %34, %struct.mpc52xx_psc_spi_cs** %36, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %42 = getelementptr inbounds %struct.mpc52xx_psc_spi_cs, %struct.mpc52xx_psc_spi_cs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %47 = getelementptr inbounds %struct.mpc52xx_psc_spi_cs, %struct.mpc52xx_psc_spi_cs* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %49 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %53 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %37
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = call i32 @mpc52xx_psc_spi_deactivate_cs(%struct.spi_device* %57)
  br label %59

59:                                               ; preds = %56, %37
  %60 = load %struct.mpc52xx_psc_spi*, %struct.mpc52xx_psc_spi** %4, align 8
  %61 = getelementptr inbounds %struct.mpc52xx_psc_spi, %struct.mpc52xx_psc_spi* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %30, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.mpc52xx_psc_spi* @spi_master_get_devdata(i32) #1

declare dso_local %struct.mpc52xx_psc_spi_cs* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mpc52xx_psc_spi_deactivate_cs(%struct.spi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
