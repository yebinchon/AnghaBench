; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00lib_antenna_diversity_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00lib_antenna_diversity_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.link_ant }
%struct.link_ant = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.antenna_setup = type { i32, i32 }

@ANTENNA_MODE_SAMPLE = common dso_local global i32 0, align 4
@ANTENNA_A = common dso_local global i32 0, align 4
@ANTENNA_B = common dso_local global i32 0, align 4
@ANTENNA_RX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_TX_DIVERSITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2x00lib_antenna_diversity_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_antenna_diversity_sample(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.link_ant*, align 8
  %4 = alloca %struct.antenna_setup, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.link_ant* %10, %struct.link_ant** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2x00link_antenna_get_link_rssi(%struct.rt2x00_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2x00link_antenna_get_rssi_history(%struct.rt2x00_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %16 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %15, i32 0, i32 1
  %17 = call i32 @memcpy(%struct.antenna_setup* %4, %struct.TYPE_4__* %16, i32 8)
  %18 = load i32, i32* @ANTENNA_MODE_SAMPLE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %21 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rt2x00link_antenna_update_rssi_history(%struct.rt2x00_dev* %28, i32 %29)
  br label %68

31:                                               ; preds = %1
  %32 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %33 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ANTENNA_A, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ANTENNA_B, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @ANTENNA_A, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %5, align 4
  %44 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %45 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.link_ant*, %struct.link_ant** %3, align 8
  %55 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %4, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = bitcast %struct.antenna_setup* %4 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = call i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev* %64, i64 %66)
  br label %68

68:                                               ; preds = %63, %27
  ret void
}

declare dso_local i32 @rt2x00link_antenna_get_link_rssi(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_antenna_get_rssi_history(%struct.rt2x00_dev*) #1

declare dso_local i32 @memcpy(%struct.antenna_setup*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @rt2x00link_antenna_update_rssi_history(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
