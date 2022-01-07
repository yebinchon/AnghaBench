; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_feed_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_feed_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32, i64, i32 (%struct.flexcop_device*, i32)*, i64 }
%struct.dvb_demux_feed = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_pid_feed_control(%struct.flexcop_device* %0, %struct.dvb_demux_feed* %1, i32 %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca %struct.dvb_demux_feed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store %struct.dvb_demux_feed* %1, %struct.dvb_demux_feed** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %9 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, 32
  %12 = add nsw i32 6, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 -1
  %17 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %18 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 -1
  %31 = sext i32 %30 to i64
  %32 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %33 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %26, %3
  %37 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %38 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %43 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %41, %36
  %52 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %53 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %58 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %59 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @flexcop_pid_control(%struct.flexcop_device* %57, i32 %60, i32 %63, i32 %64)
  %66 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %67 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %72 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %71, i32 1)
  br label %86

73:                                               ; preds = %56
  %74 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %75 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 8192
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %79, i32 %80)
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %84 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %83, i32 0)
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %70
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %89 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %87
  %94 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @flexcop_rcv_data_ctrl(%struct.flexcop_device* %94, i32 %95)
  %97 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %98 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %97, i32 0, i32 3
  %99 = load i32 (%struct.flexcop_device*, i32)*, i32 (%struct.flexcop_device*, i32)** %98, align 8
  %100 = icmp ne i32 (%struct.flexcop_device*, i32)* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %103 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %102, i32 0, i32 3
  %104 = load i32 (%struct.flexcop_device*, i32)*, i32 (%struct.flexcop_device*, i32)** %103, align 8
  %105 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 %104(%struct.flexcop_device* %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %93
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %113 = call i32 @flexcop_reset_block_300(%struct.flexcop_device* %112)
  %114 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %115 = call i32 @flexcop_hw_filter_init(%struct.flexcop_device* %114)
  br label %116

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116, %87
  ret i32 0
}

declare dso_local i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device*, i32) #1

declare dso_local i32 @flexcop_pid_control(%struct.flexcop_device*, i32, i32, i32) #1

declare dso_local i32 @flexcop_rcv_data_ctrl(%struct.flexcop_device*, i32) #1

declare dso_local i32 @flexcop_reset_block_300(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_hw_filter_init(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
