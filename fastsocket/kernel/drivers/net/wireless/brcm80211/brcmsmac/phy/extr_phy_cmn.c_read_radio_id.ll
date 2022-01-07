; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_read_radio_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_read_radio_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@radioregaddr = common dso_local global i32 0, align 4
@radioregdata = common dso_local global i32 0, align 4
@phy4waddr = common dso_local global i32 0, align 4
@RADIO_IDCODE = common dso_local global i32 0, align 4
@phy4wdatalo = common dso_local global i32 0, align 4
@phy4wdatahi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @read_radio_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_radio_id(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @D11REV_GE(i32 %11, i32 24)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %1
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @radioregaddr, align 4
  %19 = call i32 @D11REGOFFS(i32 %18)
  %20 = call i32 @bcma_wflush16(i32 %17, i32 %19, i32 0)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @radioregdata, align 4
  %25 = call i32 @D11REGOFFS(i32 %24)
  %26 = call i64 @bcma_read16(i32 %23, i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @radioregaddr, align 4
  %32 = call i32 @D11REGOFFS(i32 %31)
  %33 = call i32 @bcma_wflush16(i32 %30, i32 %32, i32 1)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @radioregdata, align 4
  %38 = call i32 @D11REGOFFS(i32 %37)
  %39 = call i64 @bcma_read16(i32 %36, i32 %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @radioregaddr, align 4
  %45 = call i32 @D11REGOFFS(i32 %44)
  %46 = call i32 @bcma_wflush16(i32 %43, i32 %45, i32 2)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @radioregdata, align 4
  %51 = call i32 @D11REGOFFS(i32 %50)
  %52 = call i64 @bcma_read16(i32 %49, i32 %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 15
  %56 = shl i32 %55, 28
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  %61 = shl i32 %60, 12
  %62 = or i32 %56, %61
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 15
  %66 = or i32 %62, %65
  store i32 %66, i32* %3, align 4
  br label %92

67:                                               ; preds = %1
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @phy4waddr, align 4
  %72 = call i32 @D11REGOFFS(i32 %71)
  %73 = load i32, i32* @RADIO_IDCODE, align 4
  %74 = call i32 @bcma_wflush16(i32 %70, i32 %72, i32 %73)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @phy4wdatalo, align 4
  %79 = call i32 @D11REGOFFS(i32 %78)
  %80 = call i64 @bcma_read16(i32 %77, i32 %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %3, align 4
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @phy4wdatahi, align 4
  %86 = call i32 @D11REGOFFS(i32 %85)
  %87 = call i64 @bcma_read16(i32 %84, i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %67, %14
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @D11REV_GE(i32, i32) #1

declare dso_local i32 @bcma_wflush16(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i64 @bcma_read16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
