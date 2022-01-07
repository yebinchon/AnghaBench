; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_write_1G_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_write_1G_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }

@NES_IDX_MAC_MDIO_CONTROL = common dso_local global i32 0, align 4
@NES_IDX_MAC_INT_STATUS = common dso_local global i32 0, align 4
@NES_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Phy is not responding. interrupt status = 0x%X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_write_1G_phy_reg(%struct.nes_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %12 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %13 = load i32, i32* %8, align 4
  %14 = or i32 1342308352, %13
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 18
  %18 = or i32 %14, %17
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 23
  %22 = or i32 %18, %21
  %23 = call i32 @nes_write_indexed(%struct.nes_device* %11, i32 %12, i32 %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %40, %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 100
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = call i32 @udelay(i32 30)
  %29 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %30 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %31 = call i32 @nes_read_indexed(%struct.nes_device* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %37 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %38 = call i32 @nes_write_indexed(%struct.nes_device* %36, i32 %37, i32 1)
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %24

43:                                               ; preds = %35, %24
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @NES_DBG_PHY, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @nes_debug(i32 %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %43
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
