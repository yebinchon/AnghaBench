; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_validate_chip_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_validate_chip_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.TYPE_2__*, %struct.bcma_device* }
%struct.TYPE_2__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.bcma_device = type { i32 }

@objaddr = common dso_local global i32 0, align 4
@OBJADDR_SHM_SEL = common dso_local global i64 0, align 8
@objdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"wl%d: validate_chip_access: SHM = 0x%x, expected 0xaa5555aa\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"wl%d: validate_chip_access: SHM = 0x%x, expected 0x55aaaa55\0A\00", align 1
@tsf_cfpstart = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@MCTL_IHR_EN = common dso_local global i64 0, align 8
@MCTL_WAKE = common dso_local global i64 0, align 8
@MCTL_GMODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"wl%d: validate_chip_access: maccontrol = 0x%x, expected 0x%x or 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_b_validate_chip_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_validate_chip_access(%struct.brcms_hardware* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wiphy*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %8, i32 0, i32 2
  %10 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  store %struct.bcma_device* %10, %struct.bcma_device** %4, align 8
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.wiphy*, %struct.wiphy** %14, align 8
  store %struct.wiphy* %15, %struct.wiphy** %7, align 8
  %16 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %17 = load i32, i32* @objaddr, align 4
  %18 = call i32 @D11REGOFFS(i32 %17)
  %19 = load i64, i64* @OBJADDR_SHM_SEL, align 8
  %20 = call i32 @bcma_write32(%struct.bcma_device* %16, i32 %18, i64 %19)
  %21 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %22 = load i32, i32* @objaddr, align 4
  %23 = call i32 @D11REGOFFS(i32 %22)
  %24 = call i64 @bcma_read32(%struct.bcma_device* %21, i32 %23)
  %25 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %26 = load i32, i32* @objdata, align 4
  %27 = call i32 @D11REGOFFS(i32 %26)
  %28 = call i64 @bcma_read32(%struct.bcma_device* %25, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %30 = load i32, i32* @objaddr, align 4
  %31 = call i32 @D11REGOFFS(i32 %30)
  %32 = load i64, i64* @OBJADDR_SHM_SEL, align 8
  %33 = call i32 @bcma_write32(%struct.bcma_device* %29, i32 %31, i64 %32)
  %34 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %35 = load i32, i32* @objaddr, align 4
  %36 = call i32 @D11REGOFFS(i32 %35)
  %37 = call i64 @bcma_read32(%struct.bcma_device* %34, i32 %36)
  %38 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %39 = load i32, i32* @objdata, align 4
  %40 = call i32 @D11REGOFFS(i32 %39)
  %41 = call i32 @bcma_write32(%struct.bcma_device* %38, i32 %40, i64 2857719210)
  %42 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %43 = load i32, i32* @objaddr, align 4
  %44 = call i32 @D11REGOFFS(i32 %43)
  %45 = load i64, i64* @OBJADDR_SHM_SEL, align 8
  %46 = call i32 @bcma_write32(%struct.bcma_device* %42, i32 %44, i64 %45)
  %47 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %48 = load i32, i32* @objaddr, align 4
  %49 = call i32 @D11REGOFFS(i32 %48)
  %50 = call i64 @bcma_read32(%struct.bcma_device* %47, i32 %49)
  %51 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %52 = load i32, i32* @objdata, align 4
  %53 = call i32 @D11REGOFFS(i32 %52)
  %54 = call i64 @bcma_read32(%struct.bcma_device* %51, i32 %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 2857719210
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (%struct.wiphy*, i8*, i32, i64, ...) @wiphy_err(%struct.wiphy* %58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62)
  store i32 0, i32* %2, align 4
  br label %152

64:                                               ; preds = %1
  %65 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %66 = load i32, i32* @objaddr, align 4
  %67 = call i32 @D11REGOFFS(i32 %66)
  %68 = load i64, i64* @OBJADDR_SHM_SEL, align 8
  %69 = call i32 @bcma_write32(%struct.bcma_device* %65, i32 %67, i64 %68)
  %70 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %71 = load i32, i32* @objaddr, align 4
  %72 = call i32 @D11REGOFFS(i32 %71)
  %73 = call i64 @bcma_read32(%struct.bcma_device* %70, i32 %72)
  %74 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %75 = load i32, i32* @objdata, align 4
  %76 = call i32 @D11REGOFFS(i32 %75)
  %77 = call i32 @bcma_write32(%struct.bcma_device* %74, i32 %76, i64 1437248085)
  %78 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %79 = load i32, i32* @objaddr, align 4
  %80 = call i32 @D11REGOFFS(i32 %79)
  %81 = load i64, i64* @OBJADDR_SHM_SEL, align 8
  %82 = call i32 @bcma_write32(%struct.bcma_device* %78, i32 %80, i64 %81)
  %83 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %84 = load i32, i32* @objaddr, align 4
  %85 = call i32 @D11REGOFFS(i32 %84)
  %86 = call i64 @bcma_read32(%struct.bcma_device* %83, i32 %85)
  %87 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %88 = load i32, i32* @objdata, align 4
  %89 = call i32 @D11REGOFFS(i32 %88)
  %90 = call i64 @bcma_read32(%struct.bcma_device* %87, i32 %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 1437248085
  br i1 %92, label %93, label %100

93:                                               ; preds = %64
  %94 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %95 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %96 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 (%struct.wiphy*, i8*, i32, i64, ...) @wiphy_err(%struct.wiphy* %94, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %98)
  store i32 0, i32* %2, align 4
  br label %152

100:                                              ; preds = %64
  %101 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %102 = load i32, i32* @objaddr, align 4
  %103 = call i32 @D11REGOFFS(i32 %102)
  %104 = load i64, i64* @OBJADDR_SHM_SEL, align 8
  %105 = call i32 @bcma_write32(%struct.bcma_device* %101, i32 %103, i64 %104)
  %106 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %107 = load i32, i32* @objaddr, align 4
  %108 = call i32 @D11REGOFFS(i32 %107)
  %109 = call i64 @bcma_read32(%struct.bcma_device* %106, i32 %108)
  %110 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %111 = load i32, i32* @objdata, align 4
  %112 = call i32 @D11REGOFFS(i32 %111)
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @bcma_write32(%struct.bcma_device* %110, i32 %112, i64 %113)
  %115 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %116 = load i32, i32* @tsf_cfpstart, align 4
  %117 = call i32 @D11REGOFFS(i32 %116)
  %118 = call i32 @bcma_write32(%struct.bcma_device* %115, i32 %117, i64 0)
  %119 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %120 = load i32, i32* @maccontrol, align 4
  %121 = call i32 @D11REGOFFS(i32 %120)
  %122 = call i64 @bcma_read32(%struct.bcma_device* %119, i32 %121)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @MCTL_IHR_EN, align 8
  %125 = load i64, i64* @MCTL_WAKE, align 8
  %126 = or i64 %124, %125
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %100
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @MCTL_IHR_EN, align 8
  %131 = load i64, i64* @MCTL_GMODE, align 8
  %132 = or i64 %130, %131
  %133 = load i64, i64* @MCTL_WAKE, align 8
  %134 = or i64 %132, %133
  %135 = icmp ne i64 %129, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %128
  %137 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %138 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %139 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @MCTL_IHR_EN, align 8
  %143 = load i64, i64* @MCTL_WAKE, align 8
  %144 = or i64 %142, %143
  %145 = load i64, i64* @MCTL_IHR_EN, align 8
  %146 = load i64, i64* @MCTL_GMODE, align 8
  %147 = or i64 %145, %146
  %148 = load i64, i64* @MCTL_WAKE, align 8
  %149 = or i64 %147, %148
  %150 = call i32 (%struct.wiphy*, i8*, i32, i64, ...) @wiphy_err(%struct.wiphy* %137, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %140, i64 %141, i64 %144, i64 %149)
  store i32 0, i32* %2, align 4
  br label %152

151:                                              ; preds = %128, %100
  store i32 1, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %136, %93, %57
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i64) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i64 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @wiphy_err(%struct.wiphy*, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
