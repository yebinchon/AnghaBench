; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_sch_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_sch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ccw_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ccw_dev_id = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"event: sch 0.%x.%04x, process=%d, action=%d\0A\00", align 1
@DEV_STATE_SENSE_ID = common dso_local global i32 0, align 4
@DEV_EVENT_NOTOPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, i32)* @io_subchannel_sch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_sch_event(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca %struct.ccw_dev_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 4
  %20 = call i32 @device_is_registered(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %185

23:                                               ; preds = %2
  %24 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 3
  %26 = call i64 @work_pending(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %185

29:                                               ; preds = %23
  %30 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %31 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %30)
  store %struct.ccw_device* %31, %struct.ccw_device** %7, align 8
  %32 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %33 = icmp ne %struct.ccw_device* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = call i64 @work_pending(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %185

42:                                               ; preds = %34, %29
  %43 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %44 = call i32 @sch_get_action(%struct.subchannel* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %90 [
    i32 131, label %57
    i32 128, label %60
    i32 135, label %63
    i32 132, label %66
    i32 133, label %66
    i32 129, label %69
    i32 130, label %69
    i32 134, label %89
  ]

57:                                               ; preds = %42
  %58 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %59 = call i32 @ccw_device_trigger_reprobe(%struct.ccw_device* %58)
  store i32 0, i32* %10, align 4
  br label %185

60:                                               ; preds = %42
  %61 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %62 = call i32 @io_subchannel_verify(%struct.subchannel* %61)
  store i32 0, i32* %10, align 4
  br label %185

63:                                               ; preds = %42
  %64 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %65 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %64)
  store i32 0, i32* %10, align 4
  br label %185

66:                                               ; preds = %42, %42
  %67 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %68 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %67)
  br label %91

69:                                               ; preds = %42, %42
  %70 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %71 = icmp ne %struct.ccw_device* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %91

73:                                               ; preds = %69
  %74 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %75 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DEV_STATE_SENSE_ID, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %83 = load i32, i32* @DEV_EVENT_NOTOPER, align 4
  %84 = call i32 @dev_fsm_event(%struct.ccw_device* %82, i32 %83)
  br label %88

85:                                               ; preds = %73
  %86 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %87 = call i32 @ccw_device_set_notoper(%struct.ccw_device* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %91

89:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %185

90:                                               ; preds = %42
  br label %91

91:                                               ; preds = %90, %88, %72, %66
  %92 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %93 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %191

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %121 [
    i32 132, label %102
    i32 133, label %102
    i32 129, label %109
  ]

102:                                              ; preds = %100, %100
  %103 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %104 = call i32 @ccw_device_move_to_orph(%struct.ccw_device* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %191

108:                                              ; preds = %102
  br label %122

109:                                              ; preds = %100
  %110 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %111 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %119 = call i32 @ccw_device_unregister(%struct.ccw_device* %118)
  br label %120

120:                                              ; preds = %117, %109
  br label %122

121:                                              ; preds = %100
  br label %122

122:                                              ; preds = %121, %120, %108
  %123 = load i32, i32* %9, align 4
  switch i32 %123, label %183 [
    i32 132, label %124
    i32 130, label %124
    i32 133, label %139
    i32 129, label %139
    i32 136, label %139
  ]

124:                                              ; preds = %122, %122
  %125 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %126 = icmp ne %struct.ccw_device* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %129 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %127, %124
  %136 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %137 = call i32 @css_sch_device_unregister(%struct.subchannel* %136)
  br label %138

138:                                              ; preds = %135, %127
  br label %184

139:                                              ; preds = %122, %122, %122
  %140 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %141 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %146 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = call %struct.ccw_device* @get_ccwdev_by_dev_id(%struct.ccw_dev_id* %8)
  store %struct.ccw_device* %151, %struct.ccw_device** %7, align 8
  %152 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %153 = icmp ne %struct.ccw_device* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %139
  %155 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %156 = call i32 @sch_create_and_recog_new_device(%struct.subchannel* %155)
  br label %184

157:                                              ; preds = %139
  %158 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %159 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %160 = call i32 @ccw_device_move_to_sch(%struct.ccw_device* %158, %struct.subchannel* %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %165 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %164, i32 0, i32 0
  %166 = call i32 @put_device(i32* %165)
  br label %191

167:                                              ; preds = %157
  %168 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %169 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @spin_lock_irqsave(i32 %170, i64 %171)
  %173 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %174 = call i32 @ccw_device_trigger_reprobe(%struct.ccw_device* %173)
  %175 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %176 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32 %177, i64 %178)
  %180 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %181 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %180, i32 0, i32 0
  %182 = call i32 @put_device(i32* %181)
  br label %184

183:                                              ; preds = %122
  br label %184

184:                                              ; preds = %183, %167, %154, %138
  store i32 0, i32* %3, align 4
  br label %193

185:                                              ; preds = %89, %63, %60, %57, %41, %28, %22
  %186 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %187 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32 %188, i64 %189)
  br label %191

191:                                              ; preds = %185, %163, %107, %99
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %184
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i64 @work_pending(i32*) #1

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @sch_get_action(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ccw_device_trigger_reprobe(%struct.ccw_device*) #1

declare dso_local i32 @io_subchannel_verify(%struct.subchannel*) #1

declare dso_local i32 @ccw_device_set_disconnected(%struct.ccw_device*) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_set_notoper(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ccw_device_move_to_orph(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_unregister(%struct.ccw_device*) #1

declare dso_local i32 @css_sch_device_unregister(%struct.subchannel*) #1

declare dso_local %struct.ccw_device* @get_ccwdev_by_dev_id(%struct.ccw_dev_id*) #1

declare dso_local i32 @sch_create_and_recog_new_device(%struct.subchannel*) #1

declare dso_local i32 @ccw_device_move_to_sch(%struct.ccw_device*, %struct.subchannel*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
