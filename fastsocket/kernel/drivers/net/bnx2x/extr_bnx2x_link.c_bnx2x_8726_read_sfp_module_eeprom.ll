; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8726_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8726_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@SFP_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reading from eeprom is limited to 0xf\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT = common dso_local global i64 0, align 8
@MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR = common dso_local global i64 0, align 8
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL = common dso_local global i64 0, align 8
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Got bad status 0x%x when reading from SFP+ EEPROM\0A\00", align 1
@MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF = common dso_local global i64 0, align 8
@MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i32, i32, i32*, i32)* @bnx2x_8726_read_sfp_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8726_read_sfp_module_eeprom(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_phy*, align 8
  %10 = alloca %struct.link_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bnx2x*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %9, align 8
  store %struct.link_params* %1, %struct.link_params** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.link_params*, %struct.link_params** %10, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load %struct.bnx2x*, %struct.bnx2x** %20, align 8
  store %struct.bnx2x* %21, %struct.bnx2x** %16, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @SFP_EEPROM_PAGE_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %7
  %26 = load i32, i32* @NETIF_MSG_LINK, align 4
  %27 = call i32 (i32, i8*, ...) @DP(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %133

30:                                               ; preds = %7
  %31 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %33 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %34 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  %39 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %31, %struct.bnx2x_phy* %32, i32 %33, i64 %34, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %42 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %43 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %40, %struct.bnx2x_phy* %41, i32 %42, i64 %43, i32 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %47 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %48 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %49 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 8
  %50 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %46, %struct.bnx2x_phy* %47, i32 %48, i64 %49, i32 11279)
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %68, %30
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %56 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %57 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %58 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 8
  %59 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %55, %struct.bnx2x_phy* %56, i32 %57, i64 %58, i32* %17)
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %71

66:                                               ; preds = %54
  %67 = call i32 @udelay(i32 5)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %51

71:                                               ; preds = %65, %51
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, i32* @NETIF_MSG_LINK, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %81 = and i32 %79, %80
  %82 = call i32 (i32, i8*, ...) @DP(i32 %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %133

85:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %106, %85
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %86
  %91 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %92 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %93 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %94 = load i64, i64* @MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %91, %struct.bnx2x_phy* %92, i32 %93, i64 %97, i32* %17)
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %86

109:                                              ; preds = %86
  store i32 0, i32* %18, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %18, align 4
  %112 = icmp slt i32 %111, 100
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %115 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %116 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %117 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 8
  %118 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %114, %struct.bnx2x_phy* %115, i32 %116, i64 %117, i32* %17)
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %133

125:                                              ; preds = %113
  %126 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %110

130:                                              ; preds = %110
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %124, %77, %25
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
