; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_devices.c_platform_register_pflash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_devices.c_platform_register_pflash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.mtd_partition* }
%struct.mtd_partition = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@GEMINI_GLOBAL_BASE = common dso_local global i32 0, align 4
@GLOBAL_STATUS = common dso_local global i64 0, align 8
@FLASH_TYPE_MASK = common dso_local global i32 0, align 4
@FLASH_TYPE_PARALLEL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FLASH_WIDTH_16BIT = common dso_local global i32 0, align 4
@pflash_platform_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GLOBAL_MISC_CTRL = common dso_local global i64 0, align 8
@PFLASH_PADS_DISABLE = common dso_local global i32 0, align 4
@SFLASH_PADS_DISABLE = common dso_local global i32 0, align 4
@NAND_PADS_DISABLE = common dso_local global i32 0, align 4
@flash_resource = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@pflash_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_register_pflash(i32 %0, %struct.mtd_partition* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_partition*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mtd_partition* %1, %struct.mtd_partition** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GEMINI_GLOBAL_BASE, align 4
  %10 = call i64 @IO_ADDRESS(i32 %9)
  %11 = load i64, i64* @GLOBAL_STATUS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @__raw_readl(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @FLASH_TYPE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @FLASH_TYPE_PARALLEL, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FLASH_WIDTH_16BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pflash_platform_data, i32 0, i32 0), align 8
  br label %29

28:                                               ; preds = %22
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pflash_platform_data, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* @GEMINI_GLOBAL_BASE, align 4
  %31 = call i64 @IO_ADDRESS(i32 %30)
  %32 = load i64, i64* @GLOBAL_MISC_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @__raw_readl(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @PFLASH_PADS_DISABLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @SFLASH_PADS_DISABLE, align 4
  %40 = load i32, i32* @NAND_PADS_DISABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GEMINI_GLOBAL_BASE, align 4
  %46 = call i64 @IO_ADDRESS(i32 %45)
  %47 = load i64, i64* @GLOBAL_MISC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @__raw_writel(i32 %44, i64 %48)
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @flash_resource, i32 0, i32 0), align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @flash_resource, i32 0, i32 1), align 8
  %55 = load %struct.mtd_partition*, %struct.mtd_partition** %6, align 8
  store %struct.mtd_partition* %55, %struct.mtd_partition** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pflash_platform_data, i32 0, i32 2), align 8
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pflash_platform_data, i32 0, i32 1), align 4
  %57 = call i32 @platform_device_register(i32* @pflash_device)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %29, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @IO_ADDRESS(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @platform_device_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
