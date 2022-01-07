; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_config_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }

@RF3_TXPOWER = common dso_local global i32 0, align 4
@RF2525E = common dso_local global i32 0, align 4
@rt2500usb_config_channel.vals = internal constant [14 x i32] [i32 2218, i32 2222, i32 2222, i32 2226, i32 2226, i32 2230, i32 2230, i32 2234, i32 2234, i32 2238, i32 2231, i32 2306, i32 2306, i32 2310], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rf_channel*, i32)* @rt2500usb_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_config_channel(%struct.rt2x00_dev* %0, %struct.rf_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rf_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rf_channel* %1, %struct.rf_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %8 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %7, i32 0, i32 0
  %9 = load i32, i32* @RF3_TXPOWER, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @TXPOWER_TO_DEV(i32 %10)
  %12 = call i32 @rt2x00_set_field32(i32* %8, i32 %9, i32 %11)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @RF2525E, align 4
  %15 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %19 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %20 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [14 x i32], [14 x i32]* @rt2500usb_config_channel.vals, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rt2500usb_rf_write(%struct.rt2x00_dev* %18, i32 2, i32 %25)
  %27 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %28 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %33 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %34 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rt2500usb_rf_write(%struct.rt2x00_dev* %32, i32 4, i32 %35)
  br label %37

37:                                               ; preds = %31, %17
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %41 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rt2500usb_rf_write(%struct.rt2x00_dev* %39, i32 1, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %45 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %46 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rt2500usb_rf_write(%struct.rt2x00_dev* %44, i32 2, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %51 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rt2500usb_rf_write(%struct.rt2x00_dev* %49, i32 3, i32 %52)
  %54 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %55 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %38
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %60 = load %struct.rf_channel*, %struct.rf_channel** %5, align 8
  %61 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rt2500usb_rf_write(%struct.rt2x00_dev* %59, i32 4, i32 %62)
  br label %64

64:                                               ; preds = %58, %38
  ret void
}

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @TXPOWER_TO_DEV(i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2500usb_rf_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
