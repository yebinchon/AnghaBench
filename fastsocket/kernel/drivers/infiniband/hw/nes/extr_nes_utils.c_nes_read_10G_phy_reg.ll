; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_read_10G_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_read_10G_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }

@NES_IDX_MAC_MDIO_CONTROL = common dso_local global i32 0, align 4
@NES_IDX_MAC_INT_STATUS = common dso_local global i32 0, align 4
@NES_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Phy is not responding. interrupt status = 0x%X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_read_10G_phy_reg(%struct.nes_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.nes_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %14 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %15 = load i64, i64* %8, align 8
  %16 = trunc i64 %15 to i32
  %17 = or i32 131072, %16
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 18
  %20 = or i32 %17, %19
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 23
  %23 = or i32 %20, %22
  %24 = call i32 @nes_write_indexed(%struct.nes_device* %13, i32 %14, i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %41, %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 100
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = call i32 @udelay(i32 30)
  %30 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %31 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %32 = call i32 @nes_read_indexed(%struct.nes_device* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %38 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %39 = call i32 @nes_write_indexed(%struct.nes_device* %37, i32 %38, i32 1)
  br label %44

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %25

44:                                               ; preds = %36, %25
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @NES_DBG_PHY, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @nes_debug(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %54 = load i32, i32* @NES_IDX_MAC_MDIO_CONTROL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 18
  %57 = or i32 805437440, %56
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, 23
  %60 = or i32 %57, %59
  %61 = call i32 @nes_write_indexed(%struct.nes_device* %53, i32 %54, i32 %60)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %78, %52
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 100
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = call i32 @udelay(i32 30)
  %67 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %68 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %69 = call i32 @nes_read_indexed(%struct.nes_device* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.nes_device*, %struct.nes_device** %5, align 8
  %75 = load i32, i32* @NES_IDX_MAC_INT_STATUS, align 4
  %76 = call i32 @nes_write_indexed(%struct.nes_device* %74, i32 %75, i32 1)
  br label %81

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %62

81:                                               ; preds = %73, %62
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @NES_DBG_PHY, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @nes_debug(i32 %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %81
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
