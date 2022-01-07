; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_sd_update_bus_speed_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_sd_update_bus_speed_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR104 = common dso_local global i32 0, align 4
@UHS_SDR104_BUS_SPEED = common dso_local global i64 0, align 8
@SD_MODE_UHS_DDR50 = common dso_local global i32 0, align 4
@UHS_DDR50_BUS_SPEED = common dso_local global i64 0, align 8
@SD_MODE_UHS_SDR50 = common dso_local global i32 0, align 4
@UHS_SDR50_BUS_SPEED = common dso_local global i64 0, align 8
@SD_MODE_UHS_SDR25 = common dso_local global i32 0, align 4
@UHS_SDR25_BUS_SPEED = common dso_local global i64 0, align 8
@SD_MODE_UHS_SDR12 = common dso_local global i32 0, align 4
@UHS_SDR12_BUS_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @sd_update_bus_speed_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_update_bus_speed_mode(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %3 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %9 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %7, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %143

22:                                               ; preds = %1
  %23 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SD_MODE_UHS_SDR104, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* @UHS_SDR104_BUS_SPEED, align 8
  %41 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %143

43:                                               ; preds = %31, %22
  %44 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %54 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SD_MODE_UHS_DDR50, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i64, i64* @UHS_DDR50_BUS_SPEED, align 8
  %62 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %63 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %142

64:                                               ; preds = %52, %43
  %65 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %71 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %64
  %76 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %77 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SD_MODE_UHS_SDR50, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i64, i64* @UHS_SDR50_BUS_SPEED, align 8
  %85 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %86 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %141

87:                                               ; preds = %75, %64
  %88 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %89 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %94 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %87
  %101 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %102 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SD_MODE_UHS_SDR25, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i64, i64* @UHS_SDR25_BUS_SPEED, align 8
  %110 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %111 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %140

112:                                              ; preds = %100, %87
  %113 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %114 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %119 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %117, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %112
  %128 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %129 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SD_MODE_UHS_SDR12, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i64, i64* @UHS_SDR12_BUS_SPEED, align 8
  %137 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %138 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %127, %112
  br label %140

140:                                              ; preds = %139, %108
  br label %141

141:                                              ; preds = %140, %83
  br label %142

142:                                              ; preds = %141, %60
  br label %143

143:                                              ; preds = %19, %142, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
