; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_ts_feed_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dmx_ts_feed_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_ts_feed = type { i32 }
%struct.timespec = type { i32 }
%struct.dvb_demux_feed = type { i64, i32, i32, i32, i32*, %struct.timespec, i64, %struct.dvb_demux* }
%struct.dvb_demux = type { i32, i64*, %struct.dvb_demux_feed** }

@DMX_MAX_PID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_TS_PES_OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_ts_feed*, i64, i32, i32, i64, i32)* @dmx_ts_feed_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_ts_feed_set(%struct.dmx_ts_feed* %0, i64 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.dmx_ts_feed*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dvb_demux_feed*, align 8
  %15 = alloca %struct.dvb_demux*, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 %5, i32* %16, align 4
  store %struct.dmx_ts_feed* %0, %struct.dmx_ts_feed** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  %17 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %9, align 8
  %18 = bitcast %struct.dmx_ts_feed* %17 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %18, %struct.dvb_demux_feed** %14, align 8
  %19 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %20 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %19, i32 0, i32 7
  %21 = load %struct.dvb_demux*, %struct.dvb_demux** %20, align 8
  store %struct.dvb_demux* %21, %struct.dvb_demux** %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @DMX_MAX_PID, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %139

28:                                               ; preds = %6
  %29 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %30 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %29, i32 0, i32 0
  %31 = call i64 @mutex_lock_interruptible(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ERESTARTSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %139

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @TS_DECODER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @DMX_TS_PES_OTHER, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %47 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %139

51:                                               ; preds = %41
  %52 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %53 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %52, i32 0, i32 2
  %54 = load %struct.dvb_demux_feed**, %struct.dvb_demux_feed*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %54, i64 %56
  %58 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %57, align 8
  %59 = icmp ne %struct.dvb_demux_feed* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %62 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %61, i32 0, i32 2
  %63 = load %struct.dvb_demux_feed**, %struct.dvb_demux_feed*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %63, i64 %65
  %67 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %66, align 8
  %68 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %69 = icmp ne %struct.dvb_demux_feed* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %72 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %139

76:                                               ; preds = %60, %51
  %77 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %78 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %79 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %78, i32 0, i32 2
  %80 = load %struct.dvb_demux_feed**, %struct.dvb_demux_feed*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %80, i64 %82
  store %struct.dvb_demux_feed* %77, %struct.dvb_demux_feed** %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %86 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %84, i64* %90, align 8
  br label %91

91:                                               ; preds = %76, %36
  %92 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %93 = call i32 @dvb_demux_feed_add(%struct.dvb_demux_feed* %92)
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %96 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %95, i32 0, i32 6
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %99 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %101 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %100, i32 0, i32 5
  %102 = bitcast %struct.timespec* %101 to i8*
  %103 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %106 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %109 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %111 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %91
  %115 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %116 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32* @vmalloc(i64 %117)
  %119 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %120 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %119, i32 0, i32 4
  store i32* %118, i32** %120, align 8
  %121 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %122 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %114
  %126 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %127 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %139

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %91
  %133 = load i32, i32* @DMX_STATE_READY, align 4
  %134 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %14, align 8
  %135 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.dvb_demux*, %struct.dvb_demux** %15, align 8
  %137 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %132, %125, %70, %45, %33, %25
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dvb_demux_feed_add(%struct.dvb_demux_feed*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @vmalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
