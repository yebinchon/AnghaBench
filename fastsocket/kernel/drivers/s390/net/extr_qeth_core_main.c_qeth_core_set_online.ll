; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.qeth_card = type { %struct.TYPE_5__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (%struct.ccwgroup_device*)* }
%struct.TYPE_6__ = type { i64 }

@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@QETH_DISCIPLINE_LAYER3 = common dso_local global i32 0, align 4
@QETH_DISCIPLINE_LAYER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_core_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_core_set_online(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 0
  %8 = call %struct.qeth_card* @dev_get_drvdata(i32* %7)
  store %struct.qeth_card* %8, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %1
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @QETH_DISCIPLINE_LAYER3, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @QETH_DISCIPLINE_LAYER2, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @qeth_core_load_discipline(%struct.qeth_card* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %56

32:                                               ; preds = %25
  %33 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %38(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %56

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (%struct.ccwgroup_device*)*, i32 (%struct.ccwgroup_device*)** %52, align 8
  %54 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %55 = call i32 %53(%struct.ccwgroup_device* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %45, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @qeth_core_load_discipline(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
