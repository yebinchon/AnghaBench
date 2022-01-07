; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_aq100x.c_aq100x_advertise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_aq100x.c_aq100x_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADV_10G_FULL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADV_1G_FULL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADV_1G_HALF = common dso_local global i32 0, align 4
@AQ_1G_CTRL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @aq100x_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq100x_advertise(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ADV_10G_FULL, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.cphy*, %struct.cphy** %4, align 8
  %18 = load i32, i32* @MDIO_MMD_AN, align 4
  %19 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %20 = load i32, i32* @ADV_10G_FULL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @t3_mdio_change_bits(%struct.cphy* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %101

27:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @ADV_1G_FULL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @ADV_1G_HALF, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.cphy*, %struct.cphy** %4, align 8
  %47 = load i32, i32* @MDIO_MMD_AN, align 4
  %48 = load i32, i32* @AQ_1G_CTRL, align 4
  %49 = load i32, i32* @ADV_1G_FULL, align 4
  %50 = load i32, i32* @ADV_1G_HALF, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @t3_mdio_change_bits(%struct.cphy* %46, i32 %47, i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %101

58:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @ADVERTISE_100HALF, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @ADVERTISE_100FULL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @ADVERTISED_Pause, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.cphy*, %struct.cphy** %4, align 8
  %96 = load i32, i32* @MDIO_MMD_AN, align 4
  %97 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @t3_mdio_change_bits(%struct.cphy* %95, i32 %96, i32 %97, i32 4064, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %56, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @t3_mdio_change_bits(%struct.cphy*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
