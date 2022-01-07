; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_read_1G_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_read_1G_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }

@NES_IDX_MAC_MDIO_CONTROL = common dso_local global i32 0, align 4
@NES_IDX_MAC_INT_STATUS = common dso_local global i32 0, align 4
@NES_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Phy is not responding. interrupt status = 0x%X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_read_1G_phy_reg(%struct.nes_device* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %12 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 18
  %16 = or i32 1610743808, %15
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 23
  %20 = or i32 %16, %19
  %21 = call i32 @nes_write_indexed(%struct.nes_device* %11, i32 %12, i32 %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %38, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = call i32 @udelay(i32 30)
  %27 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %28 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %29 = call i32 @nes_read_indexed(%struct.nes_device* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %35 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %36 = call i32 @nes_write_indexed(%struct.nes_device* %34, i32 %35, i32 1)
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %22

41:                                               ; preds = %33, %22
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @NES_DBG_PHY, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @nes_debug(i32 %46, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %8, align 8
  store i32 65535, i32* %49, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %52 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %53 = call i32 @nes_read_indexed(%struct.nes_device* %51, i32 %52)
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
