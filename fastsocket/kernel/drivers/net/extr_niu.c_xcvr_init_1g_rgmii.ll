; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_init_1g_rgmii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_init_1g_rgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@MIF_CONFIG = common dso_local global i32 0, align 4
@MIF_CONFIG_INDIRECT_MODE = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @xcvr_init_1g_rgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcvr_init_1g_rgmii(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %10 = load i32, i32* @MIF_CONFIG, align 4
  %11 = call i32 @nr64(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MIF_CONFIG_INDIRECT_MODE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @MIF_CONFIG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @nw64(i32 %16, i32 %17)
  %19 = load %struct.niu*, %struct.niu** %3, align 8
  %20 = call i32 @mii_reset(%struct.niu* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %138

25:                                               ; preds = %1
  %26 = load %struct.niu*, %struct.niu** %3, align 8
  %27 = load %struct.niu*, %struct.niu** %3, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MII_BMSR, align 4
  %31 = call i32 @mii_read(%struct.niu* %26, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %138

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BMSR_ESTATEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.niu*, %struct.niu** %3, align 8
  %44 = load %struct.niu*, %struct.niu** %3, align 8
  %45 = getelementptr inbounds %struct.niu, %struct.niu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MII_ESTATUS, align 4
  %48 = call i32 @mii_read(%struct.niu* %43, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %138

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %36
  store i32 0, i32* %6, align 4
  %56 = load %struct.niu*, %struct.niu** %3, align 8
  %57 = load %struct.niu*, %struct.niu** %3, align 8
  %58 = getelementptr inbounds %struct.niu, %struct.niu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MII_BMCR, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mii_write(%struct.niu* %56, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %138

67:                                               ; preds = %55
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BMSR_ESTATEN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.niu*, %struct.niu** %3, align 8
  %83 = load %struct.niu*, %struct.niu** %3, align 8
  %84 = getelementptr inbounds %struct.niu, %struct.niu* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MII_CTRL1000, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @mii_write(%struct.niu* %82, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %138

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %67
  %95 = load i32, i32* @BMCR_SPEED1000, align 4
  %96 = load i32, i32* @BMCR_FULLDPLX, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.niu*, %struct.niu** %3, align 8
  %99 = load %struct.niu*, %struct.niu** %3, align 8
  %100 = getelementptr inbounds %struct.niu, %struct.niu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MII_BMCR, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @mii_write(%struct.niu* %98, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %138

109:                                              ; preds = %94
  %110 = load %struct.niu*, %struct.niu** %3, align 8
  %111 = load %struct.niu*, %struct.niu** %3, align 8
  %112 = getelementptr inbounds %struct.niu, %struct.niu* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MII_BMCR, align 4
  %115 = call i32 @mii_read(%struct.niu* %110, i32 %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %138

120:                                              ; preds = %109
  %121 = load %struct.niu*, %struct.niu** %3, align 8
  %122 = load %struct.niu*, %struct.niu** %3, align 8
  %123 = getelementptr inbounds %struct.niu, %struct.niu* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MII_BMCR, align 4
  %126 = call i32 @mii_read(%struct.niu* %121, i32 %124, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load %struct.niu*, %struct.niu** %3, align 8
  %128 = load %struct.niu*, %struct.niu** %3, align 8
  %129 = getelementptr inbounds %struct.niu, %struct.niu* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MII_BMSR, align 4
  %132 = call i32 @mii_read(%struct.niu* %127, i32 %130, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %120
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %135, %118, %107, %91, %65, %51, %34, %23
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @mii_reset(%struct.niu*) #1

declare dso_local i32 @mii_read(%struct.niu*, i32, i32) #1

declare dso_local i32 @mii_write(%struct.niu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
