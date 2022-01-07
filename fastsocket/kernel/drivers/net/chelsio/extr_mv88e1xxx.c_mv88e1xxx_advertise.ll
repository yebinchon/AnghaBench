; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_advertise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@MII_GBCR = common dso_local global i32 0, align 4
@GBCR_ADV_1000HALF = common dso_local global i32 0, align 4
@GBCR_ADV_1000FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_PAUSE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE = common dso_local global i32 0, align 4
@ADVERTISED_ASYM_PAUSE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @mv88e1xxx_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_advertise(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %8 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.cphy*, %struct.cphy** %3, align 8
  %14 = load i32, i32* @MII_GBCR, align 4
  %15 = call i32 @simple_mdio_read(%struct.cphy* %13, i32 %14, i32* %5)
  %16 = load i32, i32* @GBCR_ADV_1000HALF, align 4
  %17 = load i32, i32* @GBCR_ADV_1000FULL, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = load i32, i32* @GBCR_ADV_1000HALF, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %12
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @GBCR_ADV_1000FULL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.cphy*, %struct.cphy** %3, align 8
  %42 = load i32, i32* @MII_GBCR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @simple_mdio_write(%struct.cphy* %41, i32 %42, i32 %43)
  store i32 1, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @ADVERTISE_10HALF, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @ADVERTISE_10FULL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @ADVERTISE_100HALF, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @ADVERTISE_100FULL, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ADVERTISED_PAUSE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @ADVERTISE_PAUSE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @ADVERTISED_ASYM_PAUSE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.cphy*, %struct.cphy** %3, align 8
  %100 = load i32, i32* @MII_ADVERTISE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @simple_mdio_write(%struct.cphy* %99, i32 %100, i32 %101)
  ret i32 0
}

declare dso_local i32 @simple_mdio_read(%struct.cphy*, i32, i32*) #1

declare dso_local i32 @simple_mdio_write(%struct.cphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
