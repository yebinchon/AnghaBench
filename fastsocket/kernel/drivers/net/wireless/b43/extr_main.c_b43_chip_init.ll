; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_10__*, %struct.b43_phy }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.b43_phy = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)* }

@B43_MACCTL_IHR_ENABLED = common dso_local global i32 0, align 4
@B43_MACCTL_SHM_ENABLED = common dso_local global i32 0, align 4
@B43_MACCTL_GMODE = common dso_local global i32 0, align 4
@B43_MACCTL_INFRA = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_INTERFMODE_NONE = common dso_local global i32 0, align 4
@B43_ANTENNA_DEFAULT = common dso_local global i32 0, align 4
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_PRMAXTIME = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43_MMIO_DMA0_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA1_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA2_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA3_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA4_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA5_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chip initialized\0A\00", align 1
@B43_MMIO_POWERUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_chip_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  store %struct.b43_phy* %9, %struct.b43_phy** %4, align 8
  %10 = load i32, i32* @B43_MACCTL_IHR_ENABLED, align 4
  %11 = load i32, i32* @B43_MACCTL_SHM_ENABLED, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @B43_MACCTL_GMODE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @b43_write32(%struct.b43_wldev* %26, i32 %27, i32 %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = call i32 @b43_upload_microcode(%struct.b43_wldev* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %191

35:                                               ; preds = %22
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = call i32 @b43_gpio_init(%struct.b43_wldev* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %191

41:                                               ; preds = %35
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = call i32 @b43_upload_initvals(%struct.b43_wldev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %193

47:                                               ; preds = %41
  %48 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %49 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %51, align 8
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = call i32 %52(%struct.b43_wldev* %53, i32 1)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = call i32 @b43_phy_init(%struct.b43_wldev* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %193

60:                                               ; preds = %47
  %61 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.b43_wldev*, i32)* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %69 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %71, align 8
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @B43_INTERFMODE_NONE, align 4
  %75 = call i32 %72(%struct.b43_wldev* %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %78 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.b43_wldev*, i32)* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %85 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %87, align 8
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  %91 = call i32 %88(%struct.b43_wldev* %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %76
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %94 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  %95 = call i32 @b43_mgmtframe_txantenna(%struct.b43_wldev* %93, i32 %94)
  %96 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %97 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @B43_PHYTYPE_B, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = call i32 @b43_read16(%struct.b43_wldev* %102, i32 94)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, 4
  store i32 %105, i32* %7, align 4
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @b43_write16(%struct.b43_wldev* %106, i32 94, i32 %107)
  br label %109

109:                                              ; preds = %101, %92
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %111 = call i32 @b43_write32(%struct.b43_wldev* %110, i32 256, i32 16777216)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %113 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = call i32 @b43_write32(%struct.b43_wldev* %119, i32 268, i32 16777216)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %124 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %125 = xor i32 %124, -1
  %126 = call i32 @b43_maskset32(%struct.b43_wldev* %122, i32 %123, i32 %125, i32 0)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %128 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %129 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %130 = call i32 @b43_maskset32(%struct.b43_wldev* %127, i32 %128, i32 -1, i32 %129)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* @B43_SHM_SHARED, align 4
  %133 = load i32, i32* @B43_SHM_SH_PRMAXTIME, align 4
  %134 = call i32 @b43_shm_write16(%struct.b43_wldev* %131, i32 %132, i32 %133, i32 0)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = call i32 @b43_adjust_opmode(%struct.b43_wldev* %135)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %138 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %152

143:                                              ; preds = %121
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %145 = call i32 @b43_write16(%struct.b43_wldev* %144, i32 1550, i32 0)
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %147 = call i32 @b43_write16(%struct.b43_wldev* %146, i32 1552, i32 32768)
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %149 = call i32 @b43_write16(%struct.b43_wldev* %148, i32 1540, i32 0)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = call i32 @b43_write16(%struct.b43_wldev* %150, i32 1542, i32 512)
  br label %157

152:                                              ; preds = %121
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %154 = call i32 @b43_write32(%struct.b43_wldev* %153, i32 392, i32 -2147483648)
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %156 = call i32 @b43_write32(%struct.b43_wldev* %155, i32 396, i32 33554432)
  br label %157

157:                                              ; preds = %152, %143
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %159 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %160 = call i32 @b43_write32(%struct.b43_wldev* %158, i32 %159, i32 16384)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %162 = load i32, i32* @B43_MMIO_DMA0_IRQ_MASK, align 4
  %163 = call i32 @b43_write32(%struct.b43_wldev* %161, i32 %162, i32 130048)
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %165 = load i32, i32* @B43_MMIO_DMA1_IRQ_MASK, align 4
  %166 = call i32 @b43_write32(%struct.b43_wldev* %164, i32 %165, i32 56320)
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %168 = load i32, i32* @B43_MMIO_DMA2_IRQ_MASK, align 4
  %169 = call i32 @b43_write32(%struct.b43_wldev* %167, i32 %168, i32 56320)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %171 = load i32, i32* @B43_MMIO_DMA3_IRQ_MASK, align 4
  %172 = call i32 @b43_write32(%struct.b43_wldev* %170, i32 %171, i32 121856)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %174 = load i32, i32* @B43_MMIO_DMA4_IRQ_MASK, align 4
  %175 = call i32 @b43_write32(%struct.b43_wldev* %173, i32 %174, i32 56320)
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %177 = load i32, i32* @B43_MMIO_DMA5_IRQ_MASK, align 4
  %178 = call i32 @b43_write32(%struct.b43_wldev* %176, i32 %177, i32 56320)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %180 = call i32 @b43_mac_phy_clock_set(%struct.b43_wldev* %179, i32 1)
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %182 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %181, i32 0, i32 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %186 [
  ]

186:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %188 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @b43dbg(i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %191

191:                                              ; preds = %186, %40, %34
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %197

193:                                              ; preds = %59, %46
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %195 = call i32 @b43_gpio_cleanup(%struct.b43_wldev* %194)
  %196 = load i32, i32* %5, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %193, %191
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_upload_microcode(%struct.b43_wldev*) #1

declare dso_local i32 @b43_gpio_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_upload_initvals(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mgmtframe_txantenna(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_adjust_opmode(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_phy_clock_set(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43_gpio_cleanup(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
