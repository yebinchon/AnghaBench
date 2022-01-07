; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_av7110_stop_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_av7110_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64, i32, i64, %struct.TYPE_7__, %struct.TYPE_10__*, %struct.dvb_demux* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.dvb_demux = type { i32*, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32**, %struct.av7110* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.av7110 = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@DMX_TYPE_TS = common dso_local global i64 0, align 8
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_TS_PES_OTHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TS_PACKET = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i64 0, align 8
@DMX_TYPE_SEC = common dso_local global i64 0, align 8
@DMX_STATE_GO = common dso_local global i64 0, align 8
@DMX_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @av7110_stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 5
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %10, align 8
  store %struct.dvb_demux* %11, %struct.dvb_demux** %4, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 5
  %14 = load %struct.av7110*, %struct.av7110** %13, align 8
  store %struct.av7110* %14, %struct.av7110** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.av7110*, %struct.av7110** %5, align 8
  %16 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %15)
  %17 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMX_TYPE_TS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %104

22:                                               ; preds = %1
  %23 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TS_DECODER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %22
  %30 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMX_TS_PES_OTHER, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %36, i32 0, i32 4
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %189

48:                                               ; preds = %35
  %49 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 32768
  store i32 %57, i32* %55, align 4
  %58 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %58, i32 0, i32 4
  %60 = load i32**, i32*** %59, align 8
  %61 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %48, %22
  %66 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TS_DECODER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DMX_TS_PES_OTHER, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %80 = call i32 @dvb_feed_stop_pid(%struct.dvb_demux_feed* %79)
  store i32 %80, i32* %8, align 4
  br label %103

81:                                               ; preds = %72, %65
  %82 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TS_PACKET, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DMX_MEMORY_FE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %99 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %98, i32 0, i32 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = call i32 @StopHWFilter(%struct.TYPE_10__* %100)
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %88, %81
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %1
  %105 = load %struct.av7110*, %struct.av7110** %5, align 8
  %106 = getelementptr inbounds %struct.av7110, %struct.av7110* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %111 = call i32 @budget_stop_feed(%struct.dvb_demux_feed* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %189

113:                                              ; preds = %104
  %114 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %115 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DMX_TYPE_SEC, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %187

119:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %183, %119
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %123 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %186

126:                                              ; preds = %120
  %127 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %128 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %127, i32 0, i32 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DMX_STATE_GO, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %182

137:                                              ; preds = %126
  %138 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %139 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %148 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = icmp eq i32* %146, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %137
  %152 = load i64, i64* @DMX_STATE_READY, align 8
  %153 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %154 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %153, i32 0, i32 2
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i64 %152, i64* %159, align 8
  %160 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %161 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @DMX_MEMORY_FE, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %151
  %169 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %170 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %169, i32 0, i32 2
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  %175 = call i32 @StopHWFilter(%struct.TYPE_10__* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %178, %168
  br label %181

181:                                              ; preds = %180, %151
  br label %182

182:                                              ; preds = %181, %137, %126
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %120

186:                                              ; preds = %120
  br label %187

187:                                              ; preds = %186, %113
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %109, %45
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @dvb_feed_stop_pid(%struct.dvb_demux_feed*) #1

declare dso_local i32 @StopHWFilter(%struct.TYPE_10__*) #1

declare dso_local i32 @budget_stop_feed(%struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
