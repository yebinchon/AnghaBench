; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_recog_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_recog_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_12__*, %struct.TYPE_10__, i32, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.subchannel = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DEV_STATE_DISCONNECTED_SENSE_ID = common dso_local global i32 0, align 4
@DEV_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@CDEV_TODO_REBIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_recog_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_recog_done(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %5, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %13 = call i64 @cio_disable_subchannel(%struct.subchannel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 129, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %21 = call i64 @cio_update_schib(%struct.subchannel* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 129, i32* %4, align 4
  br label %36

24:                                               ; preds = %16
  %25 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %26 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  %34 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %23
  %37 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DEV_STATE_DISCONNECTED_SENSE_ID, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %47 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @__recover_lost_chpids(%struct.subchannel* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %57 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DEV_STATE_DISCONNECTED_SENSE_ID, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 130
  br i1 %68, label %69, label %85

69:                                               ; preds = %66, %63
  %70 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %71 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @DEV_STATE_DISCONNECTED, align 4
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %81 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = call i32 @wake_up(i32* %83)
  br label %188

85:                                               ; preds = %66, %55
  %86 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %87 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %96 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %100 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %105 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = call i32 @wake_up(i32* %107)
  br label %188

109:                                              ; preds = %85
  %110 = load i32, i32* %4, align 4
  switch i32 %110, label %175 [
    i32 129, label %111
    i32 128, label %112
    i32 130, label %153
  ]

111:                                              ; preds = %109
  br label %175

112:                                              ; preds = %109
  %113 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %114 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %119 = call i32 @ccw_device_update_sense_data(%struct.ccw_device* %118)
  br label %175

120:                                              ; preds = %112
  %121 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %122 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i32 128, i32* %124, align 8
  %125 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %126 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %131 = call i32 @ccw_device_test_sense_data(%struct.ccw_device* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %120
  %134 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %135 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %134, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %140 = call i32 @ccw_device_online(%struct.ccw_device* %139)
  %141 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %142 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %141, i32 0, i32 0
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = call i32 @wake_up(i32* %144)
  br label %152

146:                                              ; preds = %120
  %147 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %148 = call i32 @ccw_device_update_sense_data(%struct.ccw_device* %147)
  %149 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %150 = load i32, i32* @CDEV_TODO_REBIND, align 4
  %151 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %133
  br label %188

153:                                              ; preds = %109
  %154 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %155 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %161 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %166 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 130, i32* %168, align 8
  %169 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %170 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %169, i32 0, i32 0
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = call i32 @wake_up(i32* %172)
  br label %188

174:                                              ; preds = %153
  br label %175

175:                                              ; preds = %109, %174, %117, %111
  %176 = load i32, i32* %4, align 4
  %177 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %178 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 8
  %181 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %182 = call i32 @io_subchannel_recog_done(%struct.ccw_device* %181)
  %183 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %184 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %183, i32 0, i32 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = call i32 @wake_up(i32* %186)
  br label %188

188:                                              ; preds = %175, %159, %152, %93, %69
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @__recover_lost_chpids(%struct.subchannel*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ccw_device_update_sense_data(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_test_sense_data(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_online(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @io_subchannel_recog_done(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
