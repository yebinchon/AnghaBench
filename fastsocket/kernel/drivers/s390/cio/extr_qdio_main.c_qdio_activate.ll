; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.qdio_irq*, %struct.TYPE_6__ }
%struct.qdio_irq = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"qactivate:%4x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_INACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@CCWDEV_REPORT_ALL = common dso_local global i32 0, align 4
@QDIO_DOING_ACTIVATE = common dso_local global i32 0, align 4
@DOIO_DENY_PREFETCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x act IO ERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rc:%4x\00", align 1
@EIO = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_activate(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.qdio_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.qdio_irq*, %struct.qdio_irq** %17, align 8
  store %struct.qdio_irq* %18, %struct.qdio_irq** %4, align 8
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %20 = icmp ne %struct.qdio_irq* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %125

24:                                               ; preds = %1
  %25 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %125

35:                                               ; preds = %24
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %37 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %40 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @QDIO_IRQ_STATE_INACTIVE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %120

47:                                               ; preds = %35
  %48 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %49 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %53 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @CCW_FLAG_SLI, align 4
  %56 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %57 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %60 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %64 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %67 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %70 = call i32 @get_ccwdev_lock(%struct.ccw_device* %69)
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_lock_irqsave(i32 %70, i64 %71)
  %73 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %74 = load i32, i32* @CCWDEV_REPORT_ALL, align 4
  %75 = call i32 @ccw_device_set_options(%struct.ccw_device* %73, i32 %74)
  %76 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %77 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %78 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %77, i32 0, i32 3
  %79 = load i32, i32* @QDIO_DOING_ACTIVATE, align 4
  %80 = load i32, i32* @DOIO_DENY_PREFETCH, align 4
  %81 = call i32 @ccw_device_start(%struct.ccw_device* %76, %struct.TYPE_10__* %78, i32 %79, i32 0, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %47
  %85 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %86 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %84, %47
  %93 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %94 = call i32 @get_ccwdev_lock(%struct.ccw_device* %93)
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %120

100:                                              ; preds = %92
  %101 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %102 = call i64 @is_thinint_irq(%struct.qdio_irq* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %106 = call i32 @tiqdio_add_input_queues(%struct.qdio_irq* %105)
  br label %107

107:                                              ; preds = %104, %100
  %108 = call i32 @msleep(i32 5)
  %109 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %110 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %115 [
    i32 128, label %112
    i32 129, label %112
  ]

112:                                              ; preds = %107, %107
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %119

115:                                              ; preds = %107
  %116 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %117 = load i32, i32* @QDIO_IRQ_STATE_ACTIVE, align 4
  %118 = call i32 @qdio_set_state(%struct.qdio_irq* %116, i32 %117)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %99, %44
  %121 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %122 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %32, %21
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_set_options(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_start(%struct.ccw_device*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @is_thinint_irq(%struct.qdio_irq*) #1

declare dso_local i32 @tiqdio_add_input_queues(%struct.qdio_irq*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
