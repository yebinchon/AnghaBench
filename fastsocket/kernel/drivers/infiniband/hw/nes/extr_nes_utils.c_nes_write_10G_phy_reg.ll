; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_write_10G_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_write_10G_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }

@NES_IDX_MAC_MDIO_CONTROL = common dso_local global i32 0, align 4
@NES_IDX_MAC_INT_STATUS = common dso_local global i32 0, align 4
@NES_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Phy is not responding. interrupt status = 0x%X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_write_10G_phy_reg(%struct.nes_device* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %16 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %17 = load i32, i32* %9, align 4
  %18 = or i32 131072, %17
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 18
  %22 = or i32 %18, %21
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 %23, 23
  %25 = or i32 %22, %24
  %26 = call i32 @nes_write_indexed(%struct.nes_device* %15, i32 %16, i32 %25)
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %43, %5
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 100
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = call i32 @udelay(i32 30)
  %32 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %33 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %34 = call i32 @nes_read_indexed(%struct.nes_device* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %40 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %41 = call i32 @nes_write_indexed(%struct.nes_device* %39, i32 %40, i32 1)
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %27

46:                                               ; preds = %38, %27
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @NES_DBG_PHY, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @nes_debug(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %56 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 268566528, %57
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %60, 18
  %62 = or i32 %58, %61
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 %63, 23
  %65 = or i32 %62, %64
  %66 = call i32 @nes_write_indexed(%struct.nes_device* %55, i32 %56, i32 %65)
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %83, %54
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 100
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = call i32 @udelay(i32 30)
  %72 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %73 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %74 = call i32 @nes_read_indexed(%struct.nes_device* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %80 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %81 = call i32 @nes_write_indexed(%struct.nes_device* %79, i32 %80, i32 1)
  br label %86

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %67

86:                                               ; preds = %78, %67
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @NES_DBG_PHY, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @nes_debug(i32 %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %86
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
