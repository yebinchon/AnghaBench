; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_s3c24xx.c_s3c24xx_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.s3c24xx_spi_devstate*, i32 }
%struct.s3c24xx_spi_devstate = type { i32, i32 }
%struct.s3c24xx_spi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.spi_device*, i32)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no memory for controller state\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPCON_DEFAULT = common dso_local global i32 0, align 4
@BITBANG_CS_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @s3c24xx_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.s3c24xx_spi_devstate*, align 8
  %5 = alloca %struct.s3c24xx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %8, align 8
  store %struct.s3c24xx_spi_devstate* %9, %struct.s3c24xx_spi_devstate** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call %struct.s3c24xx_spi* @to_hw(%struct.spi_device* %10)
  store %struct.s3c24xx_spi* %11, %struct.s3c24xx_spi** %5, align 8
  %12 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %13 = icmp ne %struct.s3c24xx_spi_devstate* %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.s3c24xx_spi_devstate* @kzalloc(i32 8, i32 %15)
  store %struct.s3c24xx_spi_devstate* %16, %struct.s3c24xx_spi_devstate** %4, align 8
  %17 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %18 = icmp ne %struct.s3c24xx_spi_devstate* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %64

25:                                               ; preds = %14
  %26 = load i32, i32* @SPCON_DEFAULT, align 4
  %27 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_spi_devstate, %struct.s3c24xx_spi_devstate* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.s3c24xx_spi_devstate*, %struct.s3c24xx_spi_devstate** %4, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  store %struct.s3c24xx_spi_devstate* %31, %struct.s3c24xx_spi_devstate** %33, align 8
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = call i32 @s3c24xx_spi_update_state(%struct.spi_device* %35, i32* null)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %34
  %42 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %41
  %52 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %53 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %54, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = load i32, i32* @BITBANG_CS_INACTIVE, align 4
  %58 = call i32 %55(%struct.spi_device* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %41
  %60 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %5, align 8
  %61 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %39, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.s3c24xx_spi* @to_hw(%struct.spi_device*) #1

declare dso_local %struct.s3c24xx_spi_devstate* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @s3c24xx_spi_update_state(%struct.spi_device*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
