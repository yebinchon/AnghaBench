; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_activate_get_answer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_activate_get_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_channel = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.qeth_cmd_buffer = type { void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)*, i32 }
%struct.qeth_channel.0 = type opaque
%struct.qeth_card = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"idxanswr\00", align 1
@READ_CCW = common dso_local global i32 0, align 4
@QETH_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"noirqpnd\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Error2 in activating channel rc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@CH_STATE_UP = common dso_local global i64 0, align 8
@QETH_TIMEOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_channel*, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*)* @qeth_idx_activate_get_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_idx_activate_get_answer(%struct.qeth_channel* %0, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_channel*, align 8
  %5 = alloca void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, align 8
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %4, align 8
  store void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %1, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %5, align 8
  %10 = load i32, i32* @SETUP, align 4
  %11 = call i32 @QETH_DBF_TEXT(i32 %10, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %13 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qeth_card* @CARD_FROM_CDEV(i32 %14)
  store %struct.qeth_card* %15, %struct.qeth_card** %9, align 8
  %16 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %17 = call %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel* %16)
  store %struct.qeth_cmd_buffer* %17, %struct.qeth_cmd_buffer** %6, align 8
  %18 = load void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %5, align 8
  %19 = bitcast void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %18 to void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)*
  %20 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %20, i32 0, i32 0
  store void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)* %19, void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)** %21, align 8
  %22 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %22, i32 0, i32 3
  %24 = load i32, i32* @READ_CCW, align 4
  %25 = call i32 @memcpy(%struct.TYPE_3__* %23, i32 %24, i32 4)
  %26 = load i32, i32* @QETH_BUFSIZE, align 4
  %27 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @__pa(i32 %32)
  %34 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %35 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %41 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %40, i32 0, i32 1
  %42 = call i64 @atomic_cmpxchg(i32* %41, i32 0, i32 1)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @wait_event(i32 %39, i32 %44)
  %46 = load i32, i32* @SETUP, align 4
  %47 = call i32 @QETH_DBF_TEXT(i32 %46, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %49 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_ccwdev_lock(i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_lock_irqsave(i32 %51, i64 %52)
  %54 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %55 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %58 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %57, i32 0, i32 3
  %59 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %60 = ptrtoint %struct.qeth_cmd_buffer* %59 to i32
  %61 = call i32 @ccw_device_start(i32 %56, %struct.TYPE_3__* %58, i32 %60, i32 0, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %63 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_ccwdev_lock(i32 %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32 %65, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %2
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @SETUP, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @QETH_DBF_TEXT_(i32 %73, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %77 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %76, i32 0, i32 1
  %78 = call i32 @atomic_set(i32* %77, i32 0)
  %79 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 0
  %81 = call i32 @wake_up(i32* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %118

83:                                               ; preds = %2
  %84 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %88 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CH_STATE_UP, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* @QETH_TIMEOUT, align 4
  %94 = call i32 @wait_event_interruptible_timeout(i32 %86, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ERESTARTSYS, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %118

101:                                              ; preds = %83
  %102 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %103 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CH_STATE_UP, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i32, i32* @ETIME, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* @SETUP, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @QETH_DBF_TEXT_(i32 %110, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %114 = call i32 @qeth_clear_cmd_buffers(%struct.qeth_channel* %113)
  br label %116

115:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %107
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %99, %70
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_card* @CARD_FROM_CDEV(i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_start(i32, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @qeth_clear_cmd_buffers(%struct.qeth_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
