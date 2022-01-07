; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_av7110_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_av7110_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i64, i32, i64, %struct.TYPE_7__, %struct.TYPE_10__*, %struct.dvb_demux* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.dvb_demux = type { i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.av7110* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.av7110 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMX_TYPE_TS = common dso_local global i64 0, align 8
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_TS_PES_OTHER = common dso_local global i64 0, align 8
@RP_AV = common dso_local global i32 0, align 4
@TS_PACKET = common dso_local global i32 0, align 4
@DMX_TYPE_SEC = common dso_local global i64 0, align 8
@DMX_STATE_READY = common dso_local global i64 0, align 8
@DMX_STATE_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @av7110_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %8 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %8, i32 0, i32 6
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  store %struct.dvb_demux* %10, %struct.dvb_demux** %4, align 8
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %11, i32 0, i32 5
  %13 = load %struct.av7110*, %struct.av7110** %12, align 8
  store %struct.av7110* %13, %struct.av7110** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.av7110*, %struct.av7110** %5, align 8
  %15 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %14)
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %231

24:                                               ; preds = %1
  %25 = load %struct.av7110*, %struct.av7110** %5, align 8
  %26 = getelementptr inbounds %struct.av7110, %struct.av7110* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 8191
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %231

37:                                               ; preds = %29, %24
  %38 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DMX_TYPE_TS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %135

43:                                               ; preds = %37
  %44 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TS_DECODER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %113

50:                                               ; preds = %43
  %51 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DMX_TS_PES_OTHER, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %113

56:                                               ; preds = %50
  %57 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %109 [
    i32 128, label %63
  ]

63:                                               ; preds = %56
  %64 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TS_DECODER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %63
  %71 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 2
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 32768
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %75
  %84 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 32768
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %83
  %92 = load %struct.av7110*, %struct.av7110** %5, align 8
  %93 = getelementptr inbounds %struct.av7110, %struct.av7110* %92, i32 0, i32 2
  %94 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %93)
  %95 = load %struct.av7110*, %struct.av7110** %5, align 8
  %96 = getelementptr inbounds %struct.av7110, %struct.av7110* %95, i32 0, i32 1
  %97 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %96)
  %98 = load %struct.av7110*, %struct.av7110** %5, align 8
  %99 = load i32, i32* @RP_AV, align 4
  %100 = call i32 @av7110_av_start_play(%struct.av7110* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %91
  br label %107

107:                                              ; preds = %106, %83, %75, %70
  br label %108

108:                                              ; preds = %107, %63
  br label %112

109:                                              ; preds = %56
  %110 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %111 = call i32 @dvb_feed_start_pid(%struct.dvb_demux_feed* %110)
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %108
  br label %134

113:                                              ; preds = %50, %43
  %114 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %115 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TS_PACKET, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %122 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 128
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %130 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %129, i32 0, i32 5
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = call i32 @StartHWFilter(%struct.TYPE_10__* %131)
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %128, %120, %113
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %37
  %136 = load %struct.av7110*, %struct.av7110** %5, align 8
  %137 = getelementptr inbounds %struct.av7110, %struct.av7110* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %142 = call i32 @budget_start_feed(%struct.dvb_demux_feed* %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %231

144:                                              ; preds = %135
  %145 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %146 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DMX_TYPE_SEC, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %229

150:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %225, %150
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %154 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %228

157:                                              ; preds = %151
  %158 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %159 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %158, i32 0, i32 3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @DMX_STATE_READY, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %225

169:                                              ; preds = %157
  %170 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %171 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %170, i32 0, i32 3
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DMX_TYPE_SEC, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %225

181:                                              ; preds = %169
  %182 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %183 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %182, i32 0, i32 3
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %192 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = icmp ne i32* %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %181
  br label %225

196:                                              ; preds = %181
  %197 = load i64, i64* @DMX_STATE_GO, align 8
  %198 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %199 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %198, i32 0, i32 3
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i64 %197, i64* %204, align 8
  %205 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %206 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 128
  br i1 %211, label %212, label %224

212:                                              ; preds = %196
  %213 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %214 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %213, i32 0, i32 3
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 %217
  %219 = call i32 @StartHWFilter(%struct.TYPE_10__* %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %228

223:                                              ; preds = %212
  br label %224

224:                                              ; preds = %223, %196
  br label %225

225:                                              ; preds = %224, %195, %180, %168
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %151

228:                                              ; preds = %222, %151
  br label %229

229:                                              ; preds = %228, %144
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %229, %140, %34, %21
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32*) #1

declare dso_local i32 @av7110_av_start_play(%struct.av7110*, i32) #1

declare dso_local i32 @dvb_feed_start_pid(%struct.dvb_demux_feed*) #1

declare dso_local i32 @StartHWFilter(%struct.TYPE_10__*) #1

declare dso_local i32 @budget_start_feed(%struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
