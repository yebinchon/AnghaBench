; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcma_sflash = type { i32, i32, i32, i32, %struct.bcm47xxsflash* }
%struct.bcm47xxsflash = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to register MTD device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm47xxsflash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxsflash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcma_sflash*, align 8
  %5 = alloca %struct.bcm47xxsflash*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.bcma_sflash* @dev_get_platdata(i32* %8)
  store %struct.bcma_sflash* %9, %struct.bcma_sflash** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.bcm47xxsflash* @kzalloc(i32 20, i32 %10)
  store %struct.bcm47xxsflash* %11, %struct.bcm47xxsflash** %5, align 8
  %12 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %13 = icmp ne %struct.bcm47xxsflash* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %19 = load %struct.bcma_sflash*, %struct.bcma_sflash** %4, align 8
  %20 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %19, i32 0, i32 4
  store %struct.bcm47xxsflash* %18, %struct.bcm47xxsflash** %20, align 8
  %21 = load %struct.bcma_sflash*, %struct.bcma_sflash** %4, align 8
  %22 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %25 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bcma_sflash*, %struct.bcma_sflash** %4, align 8
  %27 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %30 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bcma_sflash*, %struct.bcma_sflash** %4, align 8
  %32 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %35 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bcma_sflash*, %struct.bcma_sflash** %4, align 8
  %37 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %40 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %42 = call i32 @bcm47xxsflash_fill_mtd(%struct.bcm47xxsflash* %41)
  %43 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %44 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %43, i32 0, i32 0
  %45 = load i32, i32* @probes, align 4
  %46 = call i32 @mtd_device_parse_register(i32* %44, i32 %45, i32* null, i32* null, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %59

53:                                               ; preds = %49
  %54 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %5, align 8
  %55 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %54, i32 0, i32 0
  %56 = call i32 @kfree(i32* %55)
  br label %57

57:                                               ; preds = %53, %14
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.bcma_sflash* @dev_get_platdata(i32*) #1

declare dso_local %struct.bcm47xxsflash* @kzalloc(i32, i32) #1

declare dso_local i32 @bcm47xxsflash_fill_mtd(%struct.bcm47xxsflash*) #1

declare dso_local i32 @mtd_device_parse_register(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
