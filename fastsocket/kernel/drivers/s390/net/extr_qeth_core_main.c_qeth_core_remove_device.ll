; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ccwgroup_device = type { i32 }
%struct.qeth_card = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ccwgroup_device*)* }
%struct.TYPE_5__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"removedv\00", align 1
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@qeth_core_card_list = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @qeth_core_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_core_remove_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qeth_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %5 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %5, i32 0, i32 0
  %7 = call %struct.qeth_card* @dev_get_drvdata(i32* %6)
  store %struct.qeth_card* %7, %struct.qeth_card** %4, align 8
  %8 = load i32, i32* @SETUP, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %18 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %17, i32 0, i32 0
  %19 = call i32 @qeth_core_remove_osn_attributes(i32* %18)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %22 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %21, i32 0, i32 0
  %23 = call i32 @qeth_core_remove_device_attributes(i32* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ccwgroup_device*)*, i32 (%struct.ccwgroup_device*)** %35, align 8
  %37 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %38 = call i32 %36(%struct.ccwgroup_device* %37)
  %39 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %40 = call i32 @qeth_core_free_discipline(%struct.qeth_card* %39)
  br label %41

41:                                               ; preds = %30, %24
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @write_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qeth_core_card_list, i32 0, i32 0), i64 %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = call i32 @list_del(i32* %45)
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @write_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @qeth_core_card_list, i32 0, i32 0), i64 %47)
  %49 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %50 = call i32 @qeth_core_free_card(%struct.qeth_card* %49)
  %51 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %52 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %51, i32 0, i32 0
  %53 = call i32 @dev_set_drvdata(i32* %52, i32* null)
  %54 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %55 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %54, i32 0, i32 0
  %56 = call i32 @put_device(i32* %55)
  ret void
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_core_remove_osn_attributes(i32*) #1

declare dso_local i32 @qeth_core_remove_device_attributes(i32*) #1

declare dso_local i32 @qeth_core_free_discipline(%struct.qeth_card*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qeth_core_free_card(%struct.qeth_card*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
