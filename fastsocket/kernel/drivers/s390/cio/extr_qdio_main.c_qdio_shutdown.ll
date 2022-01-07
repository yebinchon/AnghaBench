; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, %struct.qdio_irq* }
%struct.TYPE_4__ = type { i32 }
%struct.qdio_irq = type { i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"qshutdown:%4x\00", align 1
@QDIO_IRQ_STATE_INACTIVE = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_STOPPED = common dso_local global i64 0, align 8
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@QDIO_DOING_CLEANUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%4x SHUTD ERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc:%4d\00", align 1
@QDIO_IRQ_STATE_CLEANUP = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_ERR = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@qdio_int_handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_shutdown(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_irq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  store %struct.qdio_irq* %13, %struct.qdio_irq** %6, align 8
  %14 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %15 = icmp ne %struct.qdio_irq* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %145

19:                                               ; preds = %2
  %20 = call i32 (...) @irqs_disabled()
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %23 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %30 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %33 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QDIO_IRQ_STATE_INACTIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %39 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  store i32 0, i32* %3, align 4
  br label %145

41:                                               ; preds = %19
  %42 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %43 = load i64, i64* @QDIO_IRQ_STATE_STOPPED, align 8
  %44 = call i32 @qdio_set_state(%struct.qdio_irq* %42, i64 %43)
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %46 = call i32 @tiqdio_remove_input_queues(%struct.qdio_irq* %45)
  %47 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %48 = call i32 @qdio_shutdown_queues(%struct.ccw_device* %47)
  %49 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %50 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %51 = call i32 @qdio_shutdown_debug_entries(%struct.qdio_irq* %49, %struct.ccw_device* %50)
  %52 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %53 = call i32 @get_ccwdev_lock(%struct.ccw_device* %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_lock_irqsave(i32 %53, i64 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %62 = load i32, i32* @QDIO_DOING_CLEANUP, align 4
  %63 = call i32 @ccw_device_clear(%struct.ccw_device* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %68

64:                                               ; preds = %41
  %65 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %66 = load i32, i32* @QDIO_DOING_CLEANUP, align 4
  %67 = call i32 @ccw_device_halt(%struct.ccw_device* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %73 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %113

79:                                               ; preds = %68
  %80 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %81 = load i64, i64* @QDIO_IRQ_STATE_CLEANUP, align 8
  %82 = call i32 @qdio_set_state(%struct.qdio_irq* %80, i64 %81)
  %83 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %84 = call i32 @get_ccwdev_lock(%struct.ccw_device* %83)
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32 %84, i64 %85)
  %87 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %88 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %93 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @QDIO_IRQ_STATE_INACTIVE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %79
  %98 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %99 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @QDIO_IRQ_STATE_ERR, align 8
  %102 = icmp eq i64 %100, %101
  br label %103

103:                                              ; preds = %97, %79
  %104 = phi i1 [ true, %79 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 10, %106
  %108 = call i32 @wait_event_interruptible_timeout(i32 %91, i32 %105, i32 %107)
  %109 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %110 = call i32 @get_ccwdev_lock(%struct.ccw_device* %109)
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_lock_irqsave(i32 %110, i64 %111)
  br label %113

113:                                              ; preds = %103, %71
  %114 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %115 = call i32 @qdio_shutdown_thinint(%struct.qdio_irq* %114)
  %116 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %117 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load i64, i64* @qdio_int_handler, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = icmp eq i8* %119, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %125 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %128 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %123, %113
  %130 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %131 = call i32 @get_ccwdev_lock(%struct.ccw_device* %130)
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32 %131, i64 %132)
  %134 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %135 = load i64, i64* @QDIO_IRQ_STATE_INACTIVE, align 8
  %136 = call i32 @qdio_set_state(%struct.qdio_irq* %134, i64 %135)
  %137 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %138 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %129
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %145

144:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %142, %37, %16
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i64) #1

declare dso_local i32 @tiqdio_remove_input_queues(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_shutdown_queues(%struct.ccw_device*) #1

declare dso_local i32 @qdio_shutdown_debug_entries(%struct.qdio_irq*, %struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_clear(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_halt(%struct.ccw_device*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qdio_shutdown_thinint(%struct.qdio_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
