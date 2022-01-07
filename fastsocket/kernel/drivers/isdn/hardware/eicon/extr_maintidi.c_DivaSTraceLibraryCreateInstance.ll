; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_DivaSTraceLibraryCreateInstance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_DivaSTraceLibraryCreateInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__*, i32, i32*, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__* }

@DivaSTraceLibraryStart = common dso_local global i32 0, align 4
@DivaSTraceLibraryStop = common dso_local global i32 0, align 4
@SuperTraceLibraryFinit = common dso_local global i32 0, align 4
@SuperTraceMessageInput = common dso_local global i32 0, align 4
@SuperTraceGetHandle = common dso_local global i32 0, align 4
@SuperTraceSetAudioTap = common dso_local global i32 0, align 4
@SuperTraceSetBChannel = common dso_local global i32 0, align 4
@SuperTraceSetDChannel = common dso_local global i32 0, align 4
@SuperTraceSetInfo = common dso_local global i32 0, align 4
@SuperTraceGetOutgoingCallStatistics = common dso_local global i32 0, align 4
@SuperTraceGetIncomingCallStatistics = common dso_local global i32 0, align 4
@SuperTraceGetModemStatistics = common dso_local global i32 0, align 4
@SuperTraceGetFaxStatistics = common dso_local global i32 0, align 4
@SuperTraceGetBLayer1Statistics = common dso_local global i32 0, align 4
@SuperTraceGetBLayer2Statistics = common dso_local global i32 0, align 4
@SuperTraceGetDLayer1Statistics = common dso_local global i32 0, align 4
@SuperTraceGetDLayer2Statistics = common dso_local global i32 0, align 4
@SuperTraceClearCall = common dso_local global i32 0, align 4
@DLI_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can not open XDI adapter\00", align 1
@MODEM_PARSE_ENTRIES = common dso_local global i32 0, align 4
@FAX_PARSE_ENTRIES = common dso_local global i32 0, align 4
@STAT_PARSE_ENTRIES = common dso_local global i32 0, align 4
@LINE_PARSE_ENTRIES = common dso_local global i32 0, align 4
@ASSIGN_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DivaSTraceLibraryCreateInstance(i32 %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %8, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %199

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 168
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = call i32 @memset(%struct.TYPE_15__* %18, i32 0, i32 168)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 18
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %26, align 8
  %27 = load i32, i32* @DivaSTraceLibraryStart, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 17
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @DivaSTraceLibraryStop, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 16
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @SuperTraceLibraryFinit, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 15
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @SuperTraceMessageInput, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 13
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 14
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @SuperTraceGetHandle, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 13
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 13
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @SuperTraceSetAudioTap, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 13
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 12
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @SuperTraceSetBChannel, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 13
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 11
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @SuperTraceSetDChannel, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 10
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @SuperTraceSetInfo, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 13
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 9
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @SuperTraceGetOutgoingCallStatistics, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 13
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 8
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @SuperTraceGetIncomingCallStatistics, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 13
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 7
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @SuperTraceGetModemStatistics, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @SuperTraceGetFaxStatistics, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 13
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @SuperTraceGetBLayer1Statistics, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 13
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @SuperTraceGetBLayer2Statistics, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 13
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @SuperTraceGetDLayer1Statistics, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 13
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @SuperTraceGetDLayer2Statistics, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 13
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @SuperTraceClearCall, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 13
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %101, label %126

101:                                              ; preds = %15
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 12
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 12
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 12
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 12
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %101, %15
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @SuperTraceOpenAdapter(i32 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 8
  %131 = icmp ne i32 %128, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* @DLI_ERR, align 4
  %134 = call i32 @diva_mnt_internal_dprintf(i32 0, i32 %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %199

135:                                              ; preds = %126
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SuperTraceGetNumberOfChannels(i32 %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @MODEM_PARSE_ENTRIES, align 4
  %143 = load i32, i32* @FAX_PARSE_ENTRIES, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* @STAT_PARSE_ENTRIES, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* @LINE_PARSE_ENTRIES, align 4
  %148 = add nsw i32 %146, %147
  %149 = add nsw i32 %148, 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 10
  store i32* %156, i32** %158, align 8
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %181, %135
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 30
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 9
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  store i32* %164, i32** %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  store i32* %173, i32** %180, align 8
  br label %181

181:                                              ; preds = %162
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %159

184:                                              ; preds = %159
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  store i32* %186, i32** %189, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  store i32 1, i32* %191, align 4
  %192 = load i32, i32* @ASSIGN_OK, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = call i32 @diva_create_parse_table(%struct.TYPE_15__* %195)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %198 = bitcast %struct.TYPE_15__* %197 to i32*
  store i32* %198, i32** %4, align 8
  br label %199

199:                                              ; preds = %184, %132, %14
  %200 = load i32*, i32** %4, align 8
  ret i32* %200
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @SuperTraceOpenAdapter(i32) #1

declare dso_local i32 @diva_mnt_internal_dprintf(i32, i32, i8*) #1

declare dso_local i32 @SuperTraceGetNumberOfChannels(i32) #1

declare dso_local i32 @diva_create_parse_table(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
