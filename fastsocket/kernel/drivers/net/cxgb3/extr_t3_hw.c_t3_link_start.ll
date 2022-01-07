; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*)*, i32 (%struct.cphy*, i32, i32)*, i32 (%struct.cphy*, i32)* }
%struct.cmac = type { i32 }
%struct.link_config = type { i32, i32, i32, i64, i32, i32, i32, i32, i8, i64 }

@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_link_start(%struct.cphy* %0, %struct.cmac* %1, %struct.link_config* %2) #0 {
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca %struct.link_config*, align 8
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store %struct.cmac* %1, %struct.cmac** %5, align 8
  store %struct.link_config* %2, %struct.link_config** %6, align 8
  %8 = load %struct.link_config*, %struct.link_config** %6, align 8
  %9 = getelementptr inbounds %struct.link_config, %struct.link_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAUSE_RX, align 4
  %12 = load i32, i32* @PAUSE_TX, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.link_config*, %struct.link_config** %6, align 8
  %16 = getelementptr inbounds %struct.link_config, %struct.link_config* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.link_config*, %struct.link_config** %6, align 8
  %18 = getelementptr inbounds %struct.link_config, %struct.link_config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %113

23:                                               ; preds = %3
  %24 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %25 = load i32, i32* @ADVERTISED_Pause, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.link_config*, %struct.link_config** %6, align 8
  %29 = getelementptr inbounds %struct.link_config, %struct.link_config* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %36 = load %struct.link_config*, %struct.link_config** %6, align 8
  %37 = getelementptr inbounds %struct.link_config, %struct.link_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PAUSE_RX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* @ADVERTISED_Pause, align 4
  %46 = load %struct.link_config*, %struct.link_config** %6, align 8
  %47 = getelementptr inbounds %struct.link_config, %struct.link_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %34
  br label %51

51:                                               ; preds = %50, %23
  %52 = load %struct.cphy*, %struct.cphy** %4, align 8
  %53 = getelementptr inbounds %struct.cphy, %struct.cphy* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32)** %55, align 8
  %57 = load %struct.cphy*, %struct.cphy** %4, align 8
  %58 = load %struct.link_config*, %struct.link_config** %6, align 8
  %59 = getelementptr inbounds %struct.link_config, %struct.link_config* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %56(%struct.cphy* %57, i32 %60)
  %62 = load %struct.link_config*, %struct.link_config** %6, align 8
  %63 = getelementptr inbounds %struct.link_config, %struct.link_config* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AUTONEG_DISABLE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %51
  %68 = load %struct.link_config*, %struct.link_config** %6, align 8
  %69 = getelementptr inbounds %struct.link_config, %struct.link_config* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.link_config*, %struct.link_config** %6, align 8
  %72 = getelementptr inbounds %struct.link_config, %struct.link_config* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.link_config*, %struct.link_config** %6, align 8
  %74 = getelementptr inbounds %struct.link_config, %struct.link_config* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.link_config*, %struct.link_config** %6, align 8
  %77 = getelementptr inbounds %struct.link_config, %struct.link_config* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = trunc i32 %78 to i8
  %80 = load %struct.link_config*, %struct.link_config** %6, align 8
  %81 = getelementptr inbounds %struct.link_config, %struct.link_config* %80, i32 0, i32 8
  store i8 %79, i8* %81, align 8
  %82 = load %struct.cmac*, %struct.cmac** %5, align 8
  %83 = load %struct.link_config*, %struct.link_config** %6, align 8
  %84 = getelementptr inbounds %struct.link_config, %struct.link_config* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.link_config*, %struct.link_config** %6, align 8
  %87 = getelementptr inbounds %struct.link_config, %struct.link_config* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @t3_mac_set_speed_duplex_fc(%struct.cmac* %82, i32 %85, i32 %88, i32 %89)
  %91 = load %struct.cphy*, %struct.cphy** %4, align 8
  %92 = getelementptr inbounds %struct.cphy, %struct.cphy* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32 (%struct.cphy*, i32, i32)*, i32 (%struct.cphy*, i32, i32)** %94, align 8
  %96 = load %struct.cphy*, %struct.cphy** %4, align 8
  %97 = load %struct.link_config*, %struct.link_config** %6, align 8
  %98 = getelementptr inbounds %struct.link_config, %struct.link_config* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.link_config*, %struct.link_config** %6, align 8
  %101 = getelementptr inbounds %struct.link_config, %struct.link_config* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %95(%struct.cphy* %96, i32 %99, i32 %102)
  br label %112

104:                                              ; preds = %51
  %105 = load %struct.cphy*, %struct.cphy** %4, align 8
  %106 = getelementptr inbounds %struct.cphy, %struct.cphy* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32 (%struct.cphy*)*, i32 (%struct.cphy*)** %108, align 8
  %110 = load %struct.cphy*, %struct.cphy** %4, align 8
  %111 = call i32 %109(%struct.cphy* %110)
  br label %112

112:                                              ; preds = %104, %67
  br label %128

113:                                              ; preds = %3
  %114 = load %struct.cmac*, %struct.cmac** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @t3_mac_set_speed_duplex_fc(%struct.cmac* %114, i32 -1, i32 -1, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = trunc i32 %117 to i8
  %119 = load %struct.link_config*, %struct.link_config** %6, align 8
  %120 = getelementptr inbounds %struct.link_config, %struct.link_config* %119, i32 0, i32 8
  store i8 %118, i8* %120, align 8
  %121 = load %struct.cphy*, %struct.cphy** %4, align 8
  %122 = getelementptr inbounds %struct.cphy, %struct.cphy* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (%struct.cphy*, i32)*, i32 (%struct.cphy*, i32)** %124, align 8
  %126 = load %struct.cphy*, %struct.cphy** %4, align 8
  %127 = call i32 %125(%struct.cphy* %126, i32 0)
  br label %128

128:                                              ; preds = %113, %112
  ret i32 0
}

declare dso_local i32 @t3_mac_set_speed_duplex_fc(%struct.cmac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
