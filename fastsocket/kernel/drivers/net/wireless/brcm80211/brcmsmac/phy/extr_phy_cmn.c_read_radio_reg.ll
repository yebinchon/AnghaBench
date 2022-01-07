; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_read_radio_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_read_radio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RADIO_IDCODE = common dso_local global i64 0, align 8
@PHYTYPE = common dso_local global i32 0, align 4
@RADIO_2057_READ_OFF = common dso_local global i64 0, align 8
@RADIO_2055_READ_OFF = common dso_local global i64 0, align 8
@RADIO_2064_READ_OFF = common dso_local global i64 0, align 8
@PHY_TYPE_SSN = common dso_local global i32 0, align 4
@radioregaddr = common dso_local global i32 0, align 4
@radioregdata = common dso_local global i32 0, align 4
@phy4waddr = common dso_local global i32 0, align 4
@phy4wdatalo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_radio_reg(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @RADIO_IDCODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 65535, i64* %3, align 8
  br label %102

11:                                               ; preds = %2
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %46 [
    i32 128, label %16
    i32 129, label %37
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* @PHYTYPE, align 4
  %18 = call i32 @CONF_HAS(i32 %17, i32 128)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %47

21:                                               ; preds = %16
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NREV_GE(i32 %25, i32 7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* @RADIO_2057_READ_OFF, align 8
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %36

32:                                               ; preds = %21
  %33 = load i64, i64* @RADIO_2055_READ_OFF, align 8
  %34 = load i64, i64* %5, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %47

37:                                               ; preds = %11
  %38 = load i32, i32* @PHYTYPE, align 4
  %39 = call i32 @CONF_HAS(i32 %38, i32 129)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %47

42:                                               ; preds = %37
  %43 = load i64, i64* @RADIO_2064_READ_OFF, align 8
  %44 = load i64, i64* %5, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %47

46:                                               ; preds = %11
  br label %47

47:                                               ; preds = %46, %42, %41, %36, %20
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @D11REV_GE(i32 %52, i32 24)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %47
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @D11REV_IS(i32 %60, i32 22)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %55
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PHY_TYPE_SSN, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63, %47
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @radioregaddr, align 4
  %75 = call i32 @D11REGOFFS(i32 %74)
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @bcma_wflush16(i32 %73, i32 %75, i64 %76)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %79 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @radioregdata, align 4
  %82 = call i32 @D11REGOFFS(i32 %81)
  %83 = call i64 @bcma_read16(i32 %80, i32 %82)
  store i64 %83, i64* %6, align 8
  br label %98

84:                                               ; preds = %63, %55
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @phy4waddr, align 4
  %89 = call i32 @D11REGOFFS(i32 %88)
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @bcma_wflush16(i32 %87, i32 %89, i64 %90)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @phy4wdatalo, align 4
  %96 = call i32 @D11REGOFFS(i32 %95)
  %97 = call i64 @bcma_read16(i32 %94, i32 %96)
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %84, %70
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* %6, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %98, %10
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @CONF_HAS(i32, i32) #1

declare dso_local i32 @NREV_GE(i32, i32) #1

declare dso_local i64 @D11REV_GE(i32, i32) #1

declare dso_local i64 @D11REV_IS(i32, i32) #1

declare dso_local i32 @bcma_wflush16(i32, i32, i64) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i64 @bcma_read16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
