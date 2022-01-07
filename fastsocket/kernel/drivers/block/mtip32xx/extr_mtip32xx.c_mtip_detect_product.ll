; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_detect_product.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_detect_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@HOST_HSORG = common dso_local global i64 0, align 8
@MTIP_PRODUCT_UNKNOWN = common dso_local global i32 0, align 4
@MTIP_PRODUCT_ASICFPGA = common dso_local global i32 0, align 4
@HSORG_HWREV = common dso_local global i32 0, align 4
@HSORG_SLOTGROUPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ASIC-FPGA design, HS rev 0x%x, %i slot groups [%i slots]\0A\00", align 1
@MTIP_MAX_SLOT_GROUPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Warning: driver only supports %i slot groups.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unrecognized product id\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @mtip_detect_product to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_detect_product(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %6 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %7 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HOST_HSORG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @MTIP_PRODUCT_UNKNOWN, align 4
  %13 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %14 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  %21 = load i32, i32* @MTIP_PRODUCT_ASICFPGA, align 4
  %22 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @HSORG_HWREV, align 4
  %26 = and i32 %24, %25
  %27 = ashr i32 %26, 8
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @HSORG_SLOTGROUPS, align 4
  %30 = and i32 %28, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %33 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 %38, 32
  %40 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %20
  %45 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %46 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_warn(i32* %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %20
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %55 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %62

56:                                               ; preds = %1
  %57 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %58 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @dev_warn(i32* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
