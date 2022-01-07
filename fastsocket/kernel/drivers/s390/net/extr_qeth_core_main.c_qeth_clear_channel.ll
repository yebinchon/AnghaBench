; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_clear_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_clear_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_channel = type { i64, i32 }
%struct.qeth_card = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"clearch\00", align 1
@QETH_CLEAR_CHANNEL_PARM = common dso_local global i32 0, align 4
@CH_STATE_STOPPED = common dso_local global i64 0, align 8
@QETH_TIMEOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@CH_STATE_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_channel*)* @qeth_clear_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_clear_channel(%struct.qeth_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  store %struct.qeth_channel* %0, %struct.qeth_channel** %3, align 8
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.qeth_card* @CARD_FROM_CDEV(i32 %11)
  store %struct.qeth_card* %12, %struct.qeth_card** %5, align 8
  %13 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %14 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @get_ccwdev_lock(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %20 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @QETH_CLEAR_CHANNEL_PARM, align 4
  %23 = call i32 @ccw_device_clear(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %25 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @get_ccwdev_lock(i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32 %27, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %65

34:                                               ; preds = %1
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %39 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CH_STATE_STOPPED, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @QETH_TIMEOUT, align 4
  %45 = call i32 @wait_event_interruptible_timeout(i32 %37, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %34
  %53 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %54 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CH_STATE_STOPPED, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ETIME, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i64, i64* @CH_STATE_DOWN, align 8
  %63 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %64 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %58, %50, %32
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_card* @CARD_FROM_CDEV(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_clear(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
