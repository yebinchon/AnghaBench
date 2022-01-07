; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_send_control_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_send_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.qeth_cmd_buffer = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"osndctrd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"osnoirqp\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"qeth_osn_send_control_data: ccw_device_start rc = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" err%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*)* @qeth_osn_send_control_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_osn_send_control_data(%struct.qeth_card* %0, i32 %1, %struct.qeth_cmd_buffer* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qeth_cmd_buffer* %2, %struct.qeth_cmd_buffer** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @TRACE, align 4
  %10 = call i32 @QETH_DBF_TEXT(i32 %9, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @atomic_cmpxchg(i32* %16, i32 0, i32 1)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event(i32 %13, i32 %19)
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %24 = call i32 @qeth_prepare_control_data(%struct.qeth_card* %21, i32 %22, %struct.qeth_cmd_buffer* %23)
  %25 = load i32, i32* @TRACE, align 4
  %26 = call i32 @QETH_DBF_TEXT(i32 %25, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_ccwdev_lock(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_lock_irqsave(i32 %31, i64 %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %42 = ptrtoint %struct.qeth_cmd_buffer* %41 to i32
  %43 = call i32 @ccw_device_start(i32 %37, i32* %40, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_ccwdev_lock(i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %3
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @TRACE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @QETH_DBF_TEXT_(i32 %56, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %63 = call i32 @qeth_release_buffer(i32 %61, %struct.qeth_cmd_buffer* %62)
  %64 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @atomic_set(i32* %66, i32 0)
  %68 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 0
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %53, %3
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @qeth_prepare_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @qeth_release_buffer(i32, %struct.qeth_cmd_buffer*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
