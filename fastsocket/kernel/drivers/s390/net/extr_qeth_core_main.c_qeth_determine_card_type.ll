; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_determine_card_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_determine_card_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"detcdtyp\00", align 1
@QETH_PRIOQ_DEFAULT = common dso_local global i32 0, align 4
@QETH_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@known_devices = common dso_local global i64** null, align 8
@QETH_DEV_MODEL_IND = common dso_local global i64 0, align 8
@QETH_DEV_TYPE_IND = common dso_local global i64 0, align 8
@QETH_QUEUE_NO_IND = common dso_local global i64 0, align 8
@QETH_MULTICAST_IND = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"The adapter hardware is of an unknown type\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_determine_card_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_determine_card_type(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @QETH_PRIOQ_DEFAULT, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @QETH_DEFAULT_QUEUE, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  br label %15

15:                                               ; preds = %94, %1
  %16 = load i64**, i64*** @known_devices, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64*, i64** %16, i64 %18
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @QETH_DEV_MODEL_IND, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %15
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = call %struct.TYPE_10__* @CARD_RDEV(%struct.qeth_card* %26)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64**, i64*** @known_devices, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @QETH_DEV_TYPE_IND, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %30, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %25
  %41 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %42 = call %struct.TYPE_10__* @CARD_RDEV(%struct.qeth_card* %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64**, i64*** @known_devices, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @QETH_DEV_MODEL_IND, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %45, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %40
  %56 = load i64**, i64*** @known_devices, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @QETH_DEV_MODEL_IND, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i64**, i64*** @known_devices, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @QETH_QUEUE_NO_IND, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %79 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i64**, i64*** @known_devices, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @QETH_MULTICAST_IND, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  %92 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %93 = call i32 @qeth_get_channel_path_desc(%struct.qeth_card* %92)
  store i32 0, i32* %2, align 4
  br label %109

94:                                               ; preds = %40, %25
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %15

97:                                               ; preds = %15
  %98 = load i64, i64* @QETH_CARD_TYPE_UNKNOWN, align 8
  %99 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %100 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %97, %55
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.TYPE_10__* @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @qeth_get_channel_path_desc(%struct.qeth_card*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
