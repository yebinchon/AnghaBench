; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_establish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { %struct.ccw_device* }
%struct.ccw_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.qdio_irq*, %struct.TYPE_8__ }
%struct.qdio_irq = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_14__, i64, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"qestablish:%4x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@QDIO_DOING_ESTABLISH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x est IO ERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc:%4x\00", align 1
@QDIO_IRQ_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_ERR = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"qDmmwc:%2x\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"qib ac:%4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_establish(%struct.qdio_initialize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.qdio_irq*, align 8
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  %8 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %9 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %8, i32 0, i32 0
  %10 = load %struct.ccw_device*, %struct.ccw_device** %9, align 8
  store %struct.ccw_device* %10, %struct.ccw_device** %5, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %19 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.qdio_irq*, %struct.qdio_irq** %21, align 8
  store %struct.qdio_irq* %22, %struct.qdio_irq** %4, align 8
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %24 = icmp ne %struct.qdio_irq* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %180

28:                                               ; preds = %1
  %29 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %180

39:                                               ; preds = %28
  %40 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %41 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %44 = call i32 @qdio_setup_irq(%struct.qdio_initialize* %43)
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %46 = call i32 @qdio_establish_thinint(%struct.qdio_irq* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %51 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %54 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %55 = call i32 @qdio_shutdown(%struct.ccw_device* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %180

57:                                               ; preds = %39
  %58 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %59 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %63 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @CCW_FLAG_SLI, align 4
  %66 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %67 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %70 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %74 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %77 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %80 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %83 = call i32 @get_ccwdev_lock(%struct.ccw_device* %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_lock_irqsave(i32 %83, i64 %84)
  %86 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %87 = call i32 @ccw_device_set_options_mask(%struct.ccw_device* %86, i32 0)
  %88 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %89 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %90 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %89, i32 0, i32 5
  %91 = load i32, i32* @QDIO_DOING_ESTABLISH, align 4
  %92 = call i32 @ccw_device_start(%struct.ccw_device* %88, %struct.TYPE_14__* %90, i32 %91, i32 0, i32 0)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %57
  %96 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %97 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %95, %57
  %104 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %105 = call i32 @get_ccwdev_lock(%struct.ccw_device* %104)
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32 %105, i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %112 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %115 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %116 = call i32 @qdio_shutdown(%struct.ccw_device* %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %180

118:                                              ; preds = %103
  %119 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %120 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %125 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @QDIO_IRQ_STATE_ESTABLISHED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %118
  %130 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %131 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @QDIO_IRQ_STATE_ERR, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %129, %118
  %136 = phi i1 [ true, %118 ], [ %134, %129 ]
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* @HZ, align 4
  %139 = call i32 @wait_event_interruptible_timeout(i32 %123, i32 %137, i32 %138)
  %140 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %141 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @QDIO_IRQ_STATE_ESTABLISHED, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %135
  %146 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %147 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %146, i32 0, i32 1
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %150 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %151 = call i32 @qdio_shutdown(%struct.ccw_device* %149, i32 %150)
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %180

154:                                              ; preds = %135
  %155 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %156 = call i32 @qdio_setup_ssqd_info(%struct.qdio_irq* %155)
  %157 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %158 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %163 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %168 = call i32 @qdio_detect_hsicq(%struct.qdio_irq* %167)
  %169 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %170 = call i32 @qdio_init_buf_states(%struct.qdio_irq* %169)
  %171 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %172 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %171, i32 0, i32 1
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %175 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %176 = call i32 @qdio_print_subchannel_info(%struct.qdio_irq* %174, %struct.ccw_device* %175)
  %177 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %178 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %179 = call i32 @qdio_setup_debug_entries(%struct.qdio_irq* %177, %struct.ccw_device* %178)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %154, %145, %110, %49, %36, %25
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qdio_setup_irq(%struct.qdio_initialize*) #1

declare dso_local i32 @qdio_establish_thinint(%struct.qdio_irq*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qdio_shutdown(%struct.ccw_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_set_options_mask(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_start(%struct.ccw_device*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qdio_setup_ssqd_info(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_detect_hsicq(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_init_buf_states(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_print_subchannel_info(%struct.qdio_irq*, %struct.ccw_device*) #1

declare dso_local i32 @qdio_setup_debug_entries(%struct.qdio_irq*, %struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
