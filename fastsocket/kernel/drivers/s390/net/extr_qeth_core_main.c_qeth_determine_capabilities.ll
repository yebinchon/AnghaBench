; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_determine_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_determine_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ccw_device = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"detcapab\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s qeth_read_conf_data returned %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5err%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"qfmt%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"icnt%d\00", align 1
@QDIO_IQDIO_QFMT = common dso_local global i32 0, align 4
@CHSC_AC1_INITIATE_INPUTQ = common dso_local global i32 0, align 4
@CHSC_AC3_FORMAT2_CQ_AVAILABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Completion Queueing supported\0A\00", align 1
@QETH_CQ_NOTAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_determine_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_determine_capabilities(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @SETUP, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = call %struct.ccw_device* @CARD_DDEV(%struct.qeth_card* %10)
  store %struct.ccw_device* %11, %struct.ccw_device** %6, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %17 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %18 = call i32 @ccw_device_set_online(%struct.ccw_device* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @SETUP, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @QETH_DBF_TEXT_(i32 %22, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %131

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %28 = call i32 @qeth_read_conf_data(%struct.qeth_card* %27, i8** %5, i32* %4)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dev_name(i32* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @SETUP, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @QETH_DBF_TEXT_(i32 %39, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %124

42:                                               ; preds = %26
  %43 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @qeth_configure_unitaddr(%struct.qeth_card* %43, i8* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @qeth_configure_blkt_default(%struct.qeth_card* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %56 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 2
  %58 = call i32 @qdio_get_ssqd_desc(%struct.ccw_device* %55, %struct.TYPE_6__* %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @SETUP, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @QETH_DBF_TEXT_(i32 %62, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i32, i32* @SETUP, align 4
  %67 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @QETH_DBF_TEXT_(i32 %66, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @SETUP, align 4
  %73 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @QETH_DBF_TEXT_(i32 %72, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @SETUP, align 4
  %79 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @QETH_DBF_TEXT_(i32 %78, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @SETUP, align 4
  %85 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @QETH_DBF_TEXT_(i32 %84, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @QDIO_IQDIO_QFMT, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %118, label %96

96:                                               ; preds = %65
  %97 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %98 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CHSC_AC1_INITIATE_INPUTQ, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %96
  %105 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CHSC_AC3_FORMAT2_CQ_AVAILABLE, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %104
  %113 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @dev_info(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %123

118:                                              ; preds = %104, %96, %65
  %119 = load i32, i32* @QETH_CQ_NOTAVAILABLE, align 4
  %120 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %121 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  br label %123

123:                                              ; preds = %118, %112
  br label %124

124:                                              ; preds = %123, %31
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %129 = call i32 @ccw_device_set_offline(%struct.ccw_device* %128)
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %21
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.ccw_device* @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @ccw_device_set_online(%struct.ccw_device*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @qeth_read_conf_data(%struct.qeth_card*, i8**, i32*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @qeth_configure_unitaddr(%struct.qeth_card*, i8*) #1

declare dso_local i32 @qeth_configure_blkt_default(%struct.qeth_card*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qdio_get_ssqd_desc(%struct.ccw_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
