; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_genesis_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_genesis_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i64 }

@XM_MMU_CMD = common dso_local global i32 0, align 4
@XM_MMU_ENA_RX = common dso_local global i32 0, align 4
@XM_MMU_ENA_TX = common dso_local global i32 0, align 4
@B3_PA_CTRL = common dso_local global i32 0, align 4
@PA_CLR_TO_TX1 = common dso_local global i32 0, align 4
@PA_CLR_TO_TX2 = common dso_local global i32 0, align 4
@TX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_CLR_MAC_RST = common dso_local global i32 0, align 4
@MFF_SET_MAC_RST = common dso_local global i32 0, align 4
@SK_PHY_XMAC = common dso_local global i64 0, align 8
@B2_GP_IO = common dso_local global i32 0, align 4
@GP_DIR_0 = common dso_local global i32 0, align 4
@GP_IO_0 = common dso_local global i32 0, align 4
@GP_DIR_2 = common dso_local global i32 0, align 4
@GP_IO_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @genesis_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_stop(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 1
  %10 = load %struct.skge_hw*, %struct.skge_hw** %9, align 8
  store %struct.skge_hw* %10, %struct.skge_hw** %3, align 8
  %11 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %12 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %14 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XM_MMU_CMD, align 4
  %17 = call i32 @xm_read16(%struct.skge_hw* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @XM_MMU_ENA_RX, align 4
  %19 = load i32, i32* @XM_MMU_ENA_TX, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @XM_MMU_CMD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @xm_write16(%struct.skge_hw* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @genesis_reset(%struct.skge_hw* %29, i32 %30)
  %32 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %33 = load i32, i32* @B3_PA_CTRL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @PA_CLR_TO_TX1, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @PA_CLR_TO_TX2, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @skge_write16(%struct.skge_hw* %32, i32 %33, i32 %41)
  %43 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TX_MFF_CTRL1, align 4
  %46 = call i32 @SK_REG(i32 %44, i32 %45)
  %47 = load i32, i32* @MFF_CLR_MAC_RST, align 4
  %48 = call i32 @skge_write16(%struct.skge_hw* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %66, %40
  %50 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TX_MFF_CTRL1, align 4
  %53 = call i32 @SK_REG(i32 %51, i32 %52)
  %54 = load i32, i32* @MFF_SET_MAC_RST, align 4
  %55 = call i32 @skge_write16(%struct.skge_hw* %50, i32 %53, i32 %54)
  %56 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TX_MFF_CTRL1, align 4
  %59 = call i32 @SK_REG(i32 %57, i32 %58)
  %60 = call i32 @skge_read16(%struct.skge_hw* %56, i32 %59)
  %61 = load i32, i32* @MFF_SET_MAC_RST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %49
  br label %70

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %5, align 4
  %69 = icmp ugt i32 %68, 0
  br i1 %69, label %49, label %70

70:                                               ; preds = %66, %64
  %71 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %72 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SK_PHY_XMAC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %70
  %77 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %78 = load i32, i32* @B2_GP_IO, align 4
  %79 = call i32 @skge_read32(%struct.skge_hw* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* @GP_DIR_0, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @GP_IO_0, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %98

90:                                               ; preds = %76
  %91 = load i32, i32* @GP_DIR_2, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @GP_IO_2, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %90, %82
  %99 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %100 = load i32, i32* @B2_GP_IO, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @skge_write32(%struct.skge_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %104 = load i32, i32* @B2_GP_IO, align 4
  %105 = call i32 @skge_read32(%struct.skge_hw* %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %70
  %107 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @XM_MMU_CMD, align 4
  %110 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @XM_MMU_CMD, align 4
  %113 = call i32 @xm_read16(%struct.skge_hw* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @XM_MMU_ENA_RX, align 4
  %115 = load i32, i32* @XM_MMU_ENA_TX, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  %119 = call i32 @xm_write16(%struct.skge_hw* %107, i32 %108, i32 %109, i32 %118)
  %120 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @XM_MMU_CMD, align 4
  %123 = call i32 @xm_read16(%struct.skge_hw* %120, i32 %121, i32 %122)
  ret void
}

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @genesis_reset(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_read16(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
