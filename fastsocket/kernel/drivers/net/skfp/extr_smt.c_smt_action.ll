; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"SMT: action %d code %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@EVENT_ECM = common dso_local global i64 0, align 8
@EC_CONNECT = common dso_local global i32 0, align 4
@EC_DISCONNECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RS_DISCONNECT = common dso_local global i32 0, align 4
@FDDI_RING_STATUS = common dso_local global i32 0, align 4
@FDDI_SMT_EVENT = common dso_local global i32 0, align 4
@FDDI_REMOTE_DISCONNECT = common dso_local global i32 0, align 4
@FDDI_PATH_TEST = common dso_local global i32 0, align 4
@FDDI_REMOTE_SELF_TEST = common dso_local global i32 0, align 4
@PA = common dso_local global i64 0, align 8
@PM_PEER = common dso_local global i32 0, align 4
@RS_EVENT = common dso_local global i32 0, align 4
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_DISABLE = common dso_local global i32 0, align 4
@PB = common dso_local global i64 0, align 8
@NUMPHYS = common dso_local global i32 0, align 4
@TM = common dso_local global i32 0, align 4
@PC_ENABLE = common dso_local global i32 0, align 4
@PC_MAINT = common dso_local global i32 0, align 4
@PC_START = common dso_local global i32 0, align 4
@PC_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smt_action(%struct.s_smc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s_smc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @DB_SMT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %160 [
    i32 135, label %16
    i32 141, label %139
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %137 [
    i32 134, label %18
    i32 130, label %27
    i32 129, label %46
    i32 128, label %54
    i32 133, label %62
    i32 132, label %83
    i32 131, label %104
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @FALSE, align 4
  %20 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %24 = load i64, i64* @EVENT_ECM, align 8
  %25 = load i32, i32* @EC_CONNECT, align 4
  %26 = call i32 @queue_event(%struct.s_smc* %23, i64 %24, i32 %25)
  br label %138

27:                                               ; preds = %16
  %28 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %29 = load i64, i64* @EVENT_ECM, align 8
  %30 = load i32, i32* @EC_DISCONNECT, align 4
  %31 = call i32 @queue_event(%struct.s_smc* %28, i64 %29, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %37 = load i32, i32* @RS_DISCONNECT, align 4
  %38 = call i32 @RS_SET(%struct.s_smc* %36, i32 %37)
  %39 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %40 = load i32, i32* @FDDI_RING_STATUS, align 4
  %41 = load i32, i32* @FDDI_SMT_EVENT, align 4
  %42 = load i32, i32* @FDDI_REMOTE_DISCONNECT, align 4
  %43 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %44 = call i32 @smt_get_event_word(%struct.s_smc* %43)
  %45 = call i32 @AIX_EVENT(%struct.s_smc* %39, i32 %40, i32 %41, i32 %42, i32 %44)
  br label %138

46:                                               ; preds = %16
  %47 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %48 = load i32, i32* @FDDI_RING_STATUS, align 4
  %49 = load i32, i32* @FDDI_SMT_EVENT, align 4
  %50 = load i32, i32* @FDDI_PATH_TEST, align 4
  %51 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %52 = call i32 @smt_get_event_word(%struct.s_smc* %51)
  %53 = call i32 @AIX_EVENT(%struct.s_smc* %47, i32 %48, i32 %49, i32 %50, i32 %52)
  br label %138

54:                                               ; preds = %16
  %55 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %56 = load i32, i32* @FDDI_RING_STATUS, align 4
  %57 = load i32, i32* @FDDI_SMT_EVENT, align 4
  %58 = load i32, i32* @FDDI_REMOTE_SELF_TEST, align 4
  %59 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %60 = call i32 @smt_get_event_word(%struct.s_smc* %59)
  %61 = call i32 @AIX_EVENT(%struct.s_smc* %55, i32 %56, i32 %57, i32 %58, i32 %60)
  br label %138

62:                                               ; preds = %16
  %63 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %64 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* @PA, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PM_PEER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %74 = load i32, i32* @RS_EVENT, align 4
  %75 = call i32 @RS_SET(%struct.s_smc* %73, i32 %74)
  %76 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %77 = load i64, i64* @EVENT_PCM, align 8
  %78 = load i64, i64* @PA, align 8
  %79 = add i64 %77, %78
  %80 = load i32, i32* @PC_DISABLE, align 4
  %81 = call i32 @queue_event(%struct.s_smc* %76, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %62
  br label %138

83:                                               ; preds = %16
  %84 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %85 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* @PB, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PM_PEER, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %95 = load i32, i32* @RS_EVENT, align 4
  %96 = call i32 @RS_SET(%struct.s_smc* %94, i32 %95)
  %97 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %98 = load i64, i64* @EVENT_PCM, align 8
  %99 = load i64, i64* @PB, align 8
  %100 = add i64 %98, %99
  %101 = load i32, i32* @PC_DISABLE, align 4
  %102 = call i32 @queue_event(%struct.s_smc* %97, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %93, %83
  br label %138

104:                                              ; preds = %16
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %133, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @NUMPHYS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %111 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TM, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %133

122:                                              ; preds = %109
  %123 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %124 = load i32, i32* @RS_EVENT, align 4
  %125 = call i32 @RS_SET(%struct.s_smc* %123, i32 %124)
  %126 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %127 = load i64, i64* @EVENT_PCM, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %127, %129
  %131 = load i32, i32* @PC_DISABLE, align 4
  %132 = call i32 @queue_event(%struct.s_smc* %126, i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %122, %121
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %105

136:                                              ; preds = %105
  br label %138

137:                                              ; preds = %16
  store i32 1, i32* %5, align 4
  br label %162

138:                                              ; preds = %136, %103, %82, %54, %46, %27, %18
  br label %161

139:                                              ; preds = %4
  %140 = load i32, i32* %8, align 4
  switch i32 %140, label %151 [
    i32 139, label %141
    i32 140, label %143
    i32 138, label %145
    i32 137, label %147
    i32 136, label %149
  ]

141:                                              ; preds = %139
  %142 = load i32, i32* @PC_ENABLE, align 4
  store i32 %142, i32* %10, align 4
  br label %152

143:                                              ; preds = %139
  %144 = load i32, i32* @PC_DISABLE, align 4
  store i32 %144, i32* %10, align 4
  br label %152

145:                                              ; preds = %139
  %146 = load i32, i32* @PC_MAINT, align 4
  store i32 %146, i32* %10, align 4
  br label %152

147:                                              ; preds = %139
  %148 = load i32, i32* @PC_START, align 4
  store i32 %148, i32* %10, align 4
  br label %152

149:                                              ; preds = %139
  %150 = load i32, i32* @PC_STOP, align 4
  store i32 %150, i32* %10, align 4
  br label %152

151:                                              ; preds = %139
  store i32 1, i32* %5, align 4
  br label %162

152:                                              ; preds = %149, %147, %145, %143, %141
  %153 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %154 = load i64, i64* @EVENT_PCM, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %154, %156
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @queue_event(%struct.s_smc* %153, i64 %157, i32 %158)
  br label %161

160:                                              ; preds = %4
  store i32 1, i32* %5, align 4
  br label %162

161:                                              ; preds = %152, %138
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %160, %151, %137
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @DB_SMT(i8*, i32, i32) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i64, i32) #1

declare dso_local i32 @RS_SET(%struct.s_smc*, i32) #1

declare dso_local i32 @AIX_EVENT(%struct.s_smc*, i32, i32, i32, i32) #1

declare dso_local i32 @smt_get_event_word(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
