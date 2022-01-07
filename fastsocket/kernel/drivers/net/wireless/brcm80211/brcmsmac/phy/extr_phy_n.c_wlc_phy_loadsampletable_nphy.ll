; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_loadsampletable_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_loadsampletable_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64 }
%struct.cordic_iq = type { i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NPHY_TBL_ID_SAMPLEPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.cordic_iq*, i32)* @wlc_phy_loadsampletable_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_loadsampletable_nphy(%struct.brcms_phy* %0, %struct.cordic_iq* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca %struct.cordic_iq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store %struct.cordic_iq* %1, %struct.cordic_iq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i32* @kmalloc(i32 %12, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %25 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.cordic_iq*, %struct.cordic_iq** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %32, i64 %34
  %36 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 1023
  %40 = shl i32 %39, 10
  %41 = load %struct.cordic_iq*, %struct.cordic_iq** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %41, i64 %43
  %45 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = and i32 %47, 1023
  %49 = or i32 %40, %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %59 = load i32, i32* @NPHY_TBL_ID_SAMPLEPLAY, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %58, i32 %59, i32 %60, i32 0, i32 32, i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %71 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %70, i32 0)
  br label %72

72:                                               ; preds = %17, %69, %57
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
