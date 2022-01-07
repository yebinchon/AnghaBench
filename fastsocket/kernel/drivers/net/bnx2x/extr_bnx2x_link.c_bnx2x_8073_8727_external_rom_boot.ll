; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8073_8727_external_rom_boot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8073_8727_external_rom_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i64 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_MISC_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"bnx2x_8073_8727_external_rom_boot port %x:Download failed. fw version = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_ROM_VER1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_M8051_MSGOUT_REG = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8073 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"bnx2x_8073_8727_external_rom_boot port %x:Download complete. fw version = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, i32)* @bnx2x_8073_8727_external_rom_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8073_8727_external_rom_boot(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %13 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %14 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %15 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %11, %struct.bnx2x_phy* %12, i32 %13, i32 %14, i32 1)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %18 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %19 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %20 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i32 %18, i32 %19, i32 140)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %23 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %24 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL1, align 4
  %25 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %21, %struct.bnx2x_phy* %22, i32 %23, i32 %24, i32 1)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %28 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %29 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %30 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET, align 4
  %31 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %26, %struct.bnx2x_phy* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %34 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %35 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %36 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP, align 4
  %37 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32 %36)
  %38 = call i32 @msleep(i32 100)
  br label %39

39:                                               ; preds = %81, %3
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 300
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @NETIF_MSG_LINK, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DP(i32 %45, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %83

51:                                               ; preds = %39
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %54 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %55 = load i32, i32* @MDIO_PMA_REG_ROM_VER1, align 4
  %56 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %52, %struct.bnx2x_phy* %53, i32 %54, i32 %55, i32* %8)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %59 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %60 = load i32, i32* @MDIO_PMA_REG_M8051_MSGOUT_REG, align 4
  %61 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %57, %struct.bnx2x_phy* %58, i32 %59, i32 %60, i32* %9)
  %62 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 17185
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %75 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8073, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %73, %69
  %80 = phi i1 [ false, %69 ], [ %78, %73 ]
  br label %81

81:                                               ; preds = %79, %66, %63
  %82 = phi i1 [ true, %66 ], [ true, %63 ], [ %80, %79 ]
  br i1 %82, label %39, label %83

83:                                               ; preds = %81, %44
  %84 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %85 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %86 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %87 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL1, align 4
  %88 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %84, %struct.bnx2x_phy* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %90 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @bnx2x_save_bcm_spirom_ver(%struct.bnx2x* %89, %struct.bnx2x_phy* %90, i32 %91)
  %93 = load i32, i32* @NETIF_MSG_LINK, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @DP(i32 %93, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bnx2x_save_bcm_spirom_ver(%struct.bnx2x*, %struct.bnx2x_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
