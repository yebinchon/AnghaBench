; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00config.c_rt2x00lib_config_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00config.c_rt2x00lib_config_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__, %struct.antenna_setup }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.rt2x00_dev*, %struct.antenna_setup*)* }
%struct.TYPE_4__ = type { %struct.link_ant }
%struct.link_ant = type { i32, %struct.antenna_setup }
%struct.antenna_setup = type { i64, i64 }

@ANTENNA_RX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i64 0, align 8
@ANTENNA_B = common dso_local global i8* null, align 8
@ANTENNA_TX_DIVERSITY = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_config_antenna(%struct.rt2x00_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.antenna_setup, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.link_ant*, align 8
  %7 = alloca %struct.antenna_setup*, align 8
  %8 = alloca %struct.antenna_setup*, align 8
  %9 = bitcast %struct.antenna_setup* %4 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.link_ant* %14, %struct.link_ant** %6, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 4
  store %struct.antenna_setup* %16, %struct.antenna_setup** %7, align 8
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %19, i32 0, i32 1
  store %struct.antenna_setup* %20, %struct.antenna_setup** %8, align 8
  %21 = load %struct.link_ant*, %struct.link_ant** %6, align 8
  %22 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %34 = load %struct.link_ant*, %struct.link_ant** %6, align 8
  %35 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.antenna_setup*, %struct.antenna_setup** %7, align 8
  %39 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i8*, i8** @ANTENNA_B, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  br label %52

47:                                               ; preds = %32
  %48 = load %struct.antenna_setup*, %struct.antenna_setup** %7, align 8
  %49 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %27
  br label %65

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.antenna_setup*, %struct.antenna_setup** %8, align 8
  %61 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.link_ant*, %struct.link_ant** %6, align 8
  %67 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %79 = load %struct.link_ant*, %struct.link_ant** %6, align 8
  %80 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.antenna_setup*, %struct.antenna_setup** %7, align 8
  %84 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load i8*, i8** @ANTENNA_B, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  store i64 %90, i64* %91, align 8
  br label %97

92:                                               ; preds = %77
  %93 = load %struct.antenna_setup*, %struct.antenna_setup** %7, align 8
  %94 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %88
  br label %98

98:                                               ; preds = %97, %72
  br label %110

99:                                               ; preds = %65
  %100 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ANTENNA_SW_DIVERSITY, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.antenna_setup*, %struct.antenna_setup** %8, align 8
  %106 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %98
  %111 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %113 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %112, i32 0, i32 1
  %114 = call i64 @test_bit(i32 %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %118 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @rt2x00queue_stop_queue(i32 %119)
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.rt2x00_dev*, %struct.antenna_setup*)*, i32 (%struct.rt2x00_dev*, %struct.antenna_setup*)** %127, align 8
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %130 = call i32 %128(%struct.rt2x00_dev* %129, %struct.antenna_setup* %4)
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %132 = call i32 @rt2x00link_reset_tuner(%struct.rt2x00_dev* %131, i32 1)
  %133 = load %struct.antenna_setup*, %struct.antenna_setup** %8, align 8
  %134 = call i32 @memcpy(%struct.antenna_setup* %133, %struct.antenna_setup* %4, i32 16)
  %135 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %137 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %136, i32 0, i32 1
  %138 = call i64 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %121
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %142 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @rt2x00queue_start_queue(i32 %143)
  br label %145

145:                                              ; preds = %140, %121
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_stop_queue(i32) #1

declare dso_local i32 @rt2x00link_reset_tuner(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @memcpy(%struct.antenna_setup*, %struct.antenna_setup*, i32) #1

declare dso_local i32 @rt2x00queue_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
