; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_config_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }

@RF3_TXPOWER = common dso_local global i32 0, align 4
@RF2523 = common dso_local global i32 0, align 4
@RF1_TUNER = common dso_local global i32 0, align 4
@RF3_TUNER = common dso_local global i32 0, align 4
@RF2525 = common dso_local global i32 0, align 4
@rt2500pci_config_channel.vals = internal constant [14 x i32] [i32 527550, i32 527618, i32 527622, i32 527626, i32 527630, i32 527634, i32 527638, i32 527642, i32 527646, i32 527650, i32 527654, i32 527658, i32 527662, i32 527674], align 16
@BBP_R70_JAPAN_FILTER = common dso_local global i32 0, align 4
@CNT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rf_channel*, i32)* @rt2500pci_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_config_channel(%struct.rt2x00_dev* %0, %struct.rf_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rf_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rf_channel* %1, %struct.rf_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %9 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %8, i32 0, i32 0
  %10 = load i32, i32* @RF3_TXPOWER, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @TXPOWER_TO_DEV(i32 %11)
  %13 = call i32 @rt2x00_set_field32(i32* %9, i32 %10, i32 %12)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %15 = load i32, i32* @RF2523, align 4
  %16 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %20 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %19, i32 0, i32 1
  %21 = load i32, i32* @RF1_TUNER, align 4
  %22 = call i32 @rt2x00_set_field32(i32* %20, i32 %21, i32 1)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %25 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %24, i32 0, i32 0
  %26 = load i32, i32* @RF3_TUNER, align 4
  %27 = call i32 @rt2x00_set_field32(i32* %25, i32 %26, i32 1)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i32, i32* @RF2525, align 4
  %30 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %23
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %34 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %35 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %33, i32 1, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %39 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %40 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [14 x i32], [14 x i32]* @rt2500pci_config_channel.vals, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %38, i32 2, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %48 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %49 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %47, i32 3, i32 %50)
  %52 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %53 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %32
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %58 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %59 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %57, i32 4, i32 %60)
  br label %62

62:                                               ; preds = %56, %32
  br label %63

63:                                               ; preds = %62, %23
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %65 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %66 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %64, i32 1, i32 %67)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %70 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %71 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %69, i32 2, i32 %72)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %75 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %76 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %74, i32 3, i32 %77)
  %79 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %80 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %85 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %86 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %84, i32 4, i32 %87)
  br label %89

89:                                               ; preds = %83, %63
  store i32 70, i32* %7, align 4
  %90 = load i32, i32* @BBP_R70_JAPAN_FILTER, align 4
  %91 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %92 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 14
  %95 = zext i1 %94 to i32
  %96 = call i32 @rt2x00_set_field8(i32* %7, i32 %90, i32 %95)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @rt2500pci_bbp_write(%struct.rt2x00_dev* %97, i32 70, i32 %98)
  %100 = call i32 @msleep(i32 1)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %102 = load i32, i32* @RF2523, align 4
  %103 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %89
  %106 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %107 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %106, i32 0, i32 1
  %108 = load i32, i32* @RF1_TUNER, align 4
  %109 = call i32 @rt2x00_set_field32(i32* %107, i32 %108, i32 0)
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %111 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %112 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %110, i32 1, i32 %113)
  br label %115

115:                                              ; preds = %105, %89
  %116 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %117 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %116, i32 0, i32 0
  %118 = load i32, i32* @RF3_TUNER, align 4
  %119 = call i32 @rt2x00_set_field32(i32* %117, i32 %118, i32 0)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %121 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %122 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @rt2500pci_rf_write(%struct.rt2x00_dev* %120, i32 3, i32 %123)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %126 = load i32, i32* @CNT0, align 4
  %127 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %128 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %127, i32 0, i32 1
  %129 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %125, i32 %126, i32* %128)
  ret void
}

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @TXPOWER_TO_DEV(i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2500pci_rf_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2500pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
