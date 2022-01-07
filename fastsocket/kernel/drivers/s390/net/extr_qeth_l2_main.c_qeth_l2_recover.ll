; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"recover1\00", align 1
@QETH_RECOVER_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"recover2\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"A recovery process has been started for the device\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Device successfully recovered!\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qeth_l2_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_recover(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.qeth_card*
  store %struct.qeth_card* %7, %struct.qeth_card** %4, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @QETH_DBF_HEX(i32 %10, i32 2, %struct.qeth_card** %4, i32 8)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %14 = call i32 @qeth_do_run_thread(%struct.qeth_card* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load i32, i32* @TRACE, align 4
  %19 = call i32 @QETH_DBF_TEXT(i32 %18, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = call i32 @qeth_set_recovery_task(%struct.qeth_card* %25)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @__qeth_l2_set_offline(%struct.TYPE_3__* %29, i32 1)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @__qeth_l2_set_online(%struct.TYPE_3__* %33, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %17
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %51

43:                                               ; preds = %17
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = call i32 @qeth_close_dev(%struct.qeth_card* %44)
  %46 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %53 = call i32 @qeth_clear_recovery_task(%struct.qeth_card* %52)
  %54 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %55 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %56 = call i32 @qeth_clear_thread_start_bit(%struct.qeth_card* %54, i32 %55)
  %57 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %58 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %59 = call i32 @qeth_clear_thread_running_bit(%struct.qeth_card* %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_card**, i32) #1

declare dso_local i32 @qeth_do_run_thread(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qeth_set_recovery_task(%struct.qeth_card*) #1

declare dso_local i32 @__qeth_l2_set_offline(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @__qeth_l2_set_online(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @qeth_close_dev(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_recovery_task(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_thread_start_bit(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_thread_running_bit(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
