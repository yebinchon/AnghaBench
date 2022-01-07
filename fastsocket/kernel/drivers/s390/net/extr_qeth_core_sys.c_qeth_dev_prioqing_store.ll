; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_prioqing_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_prioqing_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@CARD_STATE_RECOVER = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@QETH_PRIOQ_DEFAULT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"prio_queueing_prec\00", align 1
@QETH_PRIO_Q_ING_PREC = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"prio_queueing_tos\00", align 1
@QETH_PRIO_Q_ING_TOS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:0\00", align 1
@QETH_NO_PRIO_QUEUEING = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:2\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"no_prio_queueing:3\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"no_prio_queueing\00", align 1
@QETH_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_dev_prioqing_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_prioqing_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %13)
  store %struct.qeth_card* %14, %struct.qeth_card** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %16 = icmp ne %struct.qeth_card* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %155

20:                                               ; preds = %4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CARD_STATE_DOWN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CARD_STATE_RECOVER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %141

38:                                               ; preds = %29, %20
  %39 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i8*, i8** @QETH_PRIOQ_DEFAULT, align 8
  %46 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %141

51:                                               ; preds = %38
  %52 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** @QETH_PRIO_Q_ING_PREC, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  br label %140

61:                                               ; preds = %51
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** @QETH_PRIO_Q_ING_TOS, align 8
  %67 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  br label %139

70:                                               ; preds = %61
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %76 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %138

82:                                               ; preds = %70
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %88 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %89 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i8* %87, i8** %90, align 8
  %91 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %137

94:                                               ; preds = %82
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %100 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %101 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  %103 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 2, i32* %105, align 4
  br label %136

106:                                              ; preds = %94
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %112 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %113 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %116 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 3, i32* %117, align 4
  br label %135

118:                                              ; preds = %106
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** @QETH_NO_PRIO_QUEUEING, align 8
  %124 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %125 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  store i8* %123, i8** %126, align 8
  %127 = load i32, i32* @QETH_DEFAULT_QUEUE, align 4
  %128 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %129 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  br label %134

131:                                              ; preds = %118
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %131, %122
  br label %135

135:                                              ; preds = %134, %110
  br label %136

136:                                              ; preds = %135, %98
  br label %137

137:                                              ; preds = %136, %86
  br label %138

138:                                              ; preds = %137, %74
  br label %139

139:                                              ; preds = %138, %65
  br label %140

140:                                              ; preds = %139, %56
  br label %141

141:                                              ; preds = %140, %44, %35
  %142 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %143 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %142, i32 0, i32 1
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  br label %152

150:                                              ; preds = %141
  %151 = load i64, i64* %9, align 8
  br label %152

152:                                              ; preds = %150, %147
  %153 = phi i64 [ %149, %147 ], [ %151, %150 ]
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %152, %17
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
