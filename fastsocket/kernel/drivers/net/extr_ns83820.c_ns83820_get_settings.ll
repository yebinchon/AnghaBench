; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_ns83820_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_ns83820_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32 }
%struct.ns83820 = type { i32, i64 }

@CFG = common dso_local global i64 0, align 8
@SPDSTS_POLARITY = common dso_local global i32 0, align 4
@TANAR = common dso_local global i64 0, align 8
@TBICR = common dso_local global i64 0, align 8
@CFG_TBI_EN = common dso_local global i32 0, align 4
@CFG_DUPSTS = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@CFG_SPDSTS0 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@TBICR_MR_AN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ns83820_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.ns83820*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ns83820* @PRIV(%struct.net_device* %11)
  store %struct.ns83820* %12, %struct.ns83820** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.ns83820*, %struct.ns83820** %5, align 8
  %14 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @SPDSTS_POLARITY, align 4
  %20 = xor i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ns83820*, %struct.ns83820** %5, align 8
  %22 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TANAR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ns83820*, %struct.ns83820** %5, align 8
  %28 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TBICR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ns83820*, %struct.ns83820** %5, align 8
  %34 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CFG_TBI_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CFG_DUPSTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %10, align 4
  br label %53

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CFG_DUPSTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ns83820*, %struct.ns83820** %5, align 8
  %58 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CFG_TBI_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %65 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @PORT_FIBRE, align 4
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %63, %53
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @DUPLEX_FULL, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @DUPLEX_HALF, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @CFG_SPDSTS0, align 4
  %89 = sdiv i32 %87, %88
  %90 = and i32 %89, 3
  switch i32 %90, label %99 [
    i32 2, label %91
    i32 1, label %95
  ]

91:                                               ; preds = %83
  %92 = load i32, i32* @SPEED_1000, align 4
  %93 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %103

95:                                               ; preds = %83
  %96 = load i32, i32* @SPEED_100, align 4
  %97 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %103

99:                                               ; preds = %83
  %100 = load i32, i32* @SPEED_10, align 4
  %101 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %95, %91
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @TBICR_MR_AN_ENABLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %111 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  ret i32 0
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
