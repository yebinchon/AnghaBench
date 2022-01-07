; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i32 }
%struct.smc_private = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: smc91c92 reset called.\0A\00", align 1
@RCR_SOFTRESET = common dso_local global i32 0, align 4
@RCR = common dso_local global i64 0, align 8
@RCR_CLEAR = common dso_local global i32 0, align 4
@TCR_CLEAR = common dso_local global i32 0, align 4
@TCR = common dso_local global i64 0, align 8
@CTL_AUTO_RELEASE = common dso_local global i32 0, align 4
@CTL_TE_ENABLE = common dso_local global i32 0, align 4
@CTL_CR_ENABLE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@MANFID_OSITECH = common dso_local global i64 0, align 8
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@OSI_AUI_PWR = common dso_local global i32 0, align 4
@OSITECH_AUI_PWR = common dso_local global i64 0, align 8
@ADDR0 = common dso_local global i64 0, align 8
@MC_RESET = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@INTERRUPT = common dso_local global i64 0, align 8
@CFG_MII_SELECT = common dso_local global i32 0, align 4
@TCR_MONCSN = common dso_local global i32 0, align 4
@TCR_ENABLE = common dso_local global i32 0, align 4
@TCR_PAD_EN = common dso_local global i32 0, align 4
@IM_EPH_INT = common dso_local global i32 0, align 4
@IM_RX_OVRN_INT = common dso_local global i32 0, align 4
@IM_RCV_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.smc_private* @netdev_priv(%struct.net_device* %9)
  store %struct.smc_private* %10, %struct.smc_private** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @SMC_SELECT_BANK(i32 0)
  %16 = load i32, i32* @RCR_SOFTRESET, align 4
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @RCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outw(i32 %16, i64 %20)
  %22 = call i32 @udelay(i32 10)
  %23 = load i32, i32* @RCR_CLEAR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @RCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %23, i64 %27)
  %29 = load i32, i32* @TCR_CLEAR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @TCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outw(i32 %29, i64 %33)
  %35 = call i32 @SMC_SELECT_BANK(i32 1)
  %36 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %37 = load i32, i32* @CTL_TE_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CTL_CR_ENABLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @CONTROL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 %40, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @smc_set_xcvr(%struct.net_device* %46, i32 %49)
  %51 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %52 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MANFID_OSITECH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %1
  %57 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %58 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @OSI_AUI_PWR, align 4
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load i32, i32* %3, align 4
  %73 = sub i32 %72, 16
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @inw(i64 %76)
  %78 = and i32 %77, 65280
  %79 = or i32 %71, %78
  %80 = load i32, i32* %3, align 4
  %81 = sub i32 %80, 16
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outw(i32 %79, i64 %84)
  br label %86

86:                                               ; preds = %70, %56, %1
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %116, %86
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %99, %106
  %108 = load i32, i32* %3, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* @ADDR0, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @outw(i32 %107, i64 %114)
  br label %116

116:                                              ; preds = %90
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %5, align 4
  br label %87

119:                                              ; preds = %87
  %120 = call i32 @SMC_SELECT_BANK(i32 2)
  %121 = load i32, i32* @MC_RESET, align 4
  %122 = load i32, i32* %3, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* @MMU_CMD, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outw(i32 %121, i64 %125)
  %127 = load i32, i32* %3, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* @INTERRUPT, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outw(i32 0, i64 %130)
  %132 = call i32 @SMC_SELECT_BANK(i32 0)
  %133 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %134 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CFG_MII_SELECT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %119
  br label %142

140:                                              ; preds = %119
  %141 = load i32, i32* @TCR_MONCSN, align 4
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ 0, %139 ], [ %141, %140 ]
  %144 = load i32, i32* @TCR_ENABLE, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @TCR_PAD_EN, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %149 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %147, %150
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* @TCR, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @outw(i32 %151, i64 %155)
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = call i32 @set_rx_mode(%struct.net_device* %157)
  %159 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %160 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CFG_MII_SELECT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %142
  %166 = call i32 @SMC_SELECT_BANK(i32 3)
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %169 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @mdio_write(%struct.net_device* %167, i32 %171, i32 0, i32 32768)
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %175 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @mdio_write(%struct.net_device* %173, i32 %177, i32 4, i32 481)
  %179 = load %struct.net_device*, %struct.net_device** %2, align 8
  %180 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %181 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @mdio_write(%struct.net_device* %179, i32 %183, i32 0, i32 0)
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  %186 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %187 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @mdio_write(%struct.net_device* %185, i32 %189, i32 0, i32 4608)
  br label %191

191:                                              ; preds = %165, %142
  %192 = call i32 @SMC_SELECT_BANK(i32 2)
  %193 = load i32, i32* @IM_EPH_INT, align 4
  %194 = load i32, i32* @IM_RX_OVRN_INT, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @IM_RCV_INT, align 4
  %197 = or i32 %195, %196
  %198 = shl i32 %197, 8
  %199 = load i32, i32* %3, align 4
  %200 = zext i32 %199 to i64
  %201 = load i64, i64* @INTERRUPT, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @outw(i32 %198, i64 %202)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smc_set_xcvr(%struct.net_device*, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
