; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_probe_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.ccwgroup_device = type { %struct.TYPE_12__**, %struct.device }
%struct.TYPE_12__ = type { i8* }
%struct.device = type { i32 }
%struct.qeth_card = type { %struct.TYPE_15__, i32, %struct.ccwgroup_device*, %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.ccwgroup_device*)* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"probedev\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qeth_irq = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@QETH_DISCIPLINE_LAYER2 = common dso_local global i32 0, align 4
@qeth_core_card_list = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_core_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_core_probe_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %8 = load i32, i32* @SETUP, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %11 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @get_device(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %182

18:                                               ; preds = %1
  %19 = load i32, i32* @SETUP, align 4
  %20 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %20, i32 0, i32 1
  %22 = call i32 @dev_name(%struct.device* %21)
  %23 = call i32 @QETH_DBF_TEXT_(i32 %19, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call %struct.qeth_card* (...) @qeth_alloc_card()
  store %struct.qeth_card* %24, %struct.qeth_card** %4, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = icmp ne %struct.qeth_card* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @SETUP, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @QETH_DBF_TEXT_(i32 %28, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %178

34:                                               ; preds = %18
  %35 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %42, align 8
  %43 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %44 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %50, align 8
  %51 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %52 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %53, i64 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %60 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %59, i32 0, i32 1
  %61 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %62 = call i32 @dev_set_drvdata(%struct.device* %60, %struct.qeth_card* %61)
  %63 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %64 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 2
  store %struct.ccwgroup_device* %63, %struct.ccwgroup_device** %65, align 8
  %66 = load i8*, i8** @qeth_irq, align 8
  %67 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %68 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %69, i64 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i8* %66, i8** %72, align 8
  %73 = load i8*, i8** @qeth_irq, align 8
  %74 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %75 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %76, i64 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i8* %73, i8** %79, align 8
  %80 = load i8*, i8** @qeth_irq, align 8
  %81 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %82 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %83, i64 2
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i8* %80, i8** %86, align 8
  %87 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %88 = call i32 @qeth_determine_card_type(%struct.qeth_card* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %34
  %92 = load i32, i32* @SETUP, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @QETH_DBF_TEXT_(i32 %92, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %175

95:                                               ; preds = %34
  %96 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %97 = call i32 @qeth_setup_card(%struct.qeth_card* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @SETUP, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @QETH_DBF_TEXT_(i32 %101, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %175

104:                                              ; preds = %95
  %105 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 129
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call i32 @qeth_core_create_osn_attributes(%struct.device* %111)
  store i32 %112, i32* %6, align 4
  br label %116

113:                                              ; preds = %104
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @qeth_core_create_device_attributes(%struct.device* %114)
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %175

120:                                              ; preds = %116
  %121 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %122 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %148 [
    i32 129, label %125
    i32 130, label %125
    i32 131, label %147
    i32 128, label %147
  ]

125:                                              ; preds = %120, %120
  %126 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %127 = load i32, i32* @QETH_DISCIPLINE_LAYER2, align 4
  %128 = call i32 @qeth_core_load_discipline(%struct.qeth_card* %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %162

132:                                              ; preds = %125
  %133 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %134 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32 (%struct.ccwgroup_device*)*, i32 (%struct.ccwgroup_device*)** %137, align 8
  %139 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %140 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %139, i32 0, i32 2
  %141 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %140, align 8
  %142 = call i32 %138(%struct.ccwgroup_device* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %159

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %120, %120, %146
  br label %148

148:                                              ; preds = %120, %147
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @write_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @qeth_core_card_list, i32 0, i32 0), i64 %150)
  %152 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %153 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %152, i32 0, i32 1
  %154 = call i32 @list_add_tail(i32* %153, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @qeth_core_card_list, i32 0, i32 1))
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @write_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @qeth_core_card_list, i32 0, i32 0), i64 %155)
  %157 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %158 = call i32 @qeth_determine_capabilities(%struct.qeth_card* %157)
  store i32 0, i32* %2, align 4
  br label %182

159:                                              ; preds = %145
  %160 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %161 = call i32 @qeth_core_free_discipline(%struct.qeth_card* %160)
  br label %162

162:                                              ; preds = %159, %131
  %163 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %164 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 129
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = call i32 @qeth_core_remove_osn_attributes(%struct.device* %169)
  br label %174

171:                                              ; preds = %162
  %172 = load %struct.device*, %struct.device** %5, align 8
  %173 = call i32 @qeth_core_remove_device_attributes(%struct.device* %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %119, %100, %91
  %176 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %177 = call i32 @qeth_core_free_card(%struct.qeth_card* %176)
  br label %178

178:                                              ; preds = %175, %27
  %179 = load %struct.device*, %struct.device** %5, align 8
  %180 = call i32 @put_device(%struct.device* %179)
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %149, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.qeth_card* @qeth_alloc_card(...) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.qeth_card*) #1

declare dso_local i32 @qeth_determine_card_type(%struct.qeth_card*) #1

declare dso_local i32 @qeth_setup_card(%struct.qeth_card*) #1

declare dso_local i32 @qeth_core_create_osn_attributes(%struct.device*) #1

declare dso_local i32 @qeth_core_create_device_attributes(%struct.device*) #1

declare dso_local i32 @qeth_core_load_discipline(%struct.qeth_card*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qeth_determine_capabilities(%struct.qeth_card*) #1

declare dso_local i32 @qeth_core_free_discipline(%struct.qeth_card*) #1

declare dso_local i32 @qeth_core_remove_osn_attributes(%struct.device*) #1

declare dso_local i32 @qeth_core_remove_device_attributes(%struct.device*) #1

declare dso_local i32 @qeth_core_free_card(%struct.qeth_card*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
