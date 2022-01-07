; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-dvb.c_cx18_dvb_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-dvb.c_cx18_dvb_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.cx18_stream = type { %struct.TYPE_6__*, i32, %struct.cx18* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.cx18 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Start feed: pid = 0x%x index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to initialize firmware starting DVB feed\0A\00", align 1
@CX18_REG_DMUX_NUM_PORT_0_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Starting Transport DMA\0A\00", align 1
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to start Transport DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @cx18_dvb_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_dvb_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.cx18_stream*, align 8
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 2
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %10, align 8
  store %struct.dvb_demux* %11, %struct.dvb_demux** %4, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cx18_stream*
  store %struct.cx18_stream* %15, %struct.cx18_stream** %5, align 8
  %16 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %17 = icmp ne %struct.cx18_stream* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %140

21:                                               ; preds = %1
  %22 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %23 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %22, i32 0, i32 2
  %24 = load %struct.cx18*, %struct.cx18** %23, align 8
  store %struct.cx18* %24, %struct.cx18** %6, align 8
  %25 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.cx18*, %struct.cx18** %6, align 8
  %33 = getelementptr inbounds %struct.cx18, %struct.cx18* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.cx18*, %struct.cx18** %6, align 8
  %36 = call i32 @cx18_init_on_first_open(%struct.cx18* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.cx18*, %struct.cx18** %6, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = call i32 @CX18_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %140

45:                                               ; preds = %21
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.cx18*, %struct.cx18** %6, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %72 [
    i32 132, label %53
    i32 130, label %53
    i32 131, label %53
    i32 129, label %71
    i32 128, label %71
    i32 133, label %71
  ]

53:                                               ; preds = %45, %45, %45
  %54 = load %struct.cx18*, %struct.cx18** %6, align 8
  %55 = load i32, i32* @CX18_REG_DMUX_NUM_PORT_0_CONTROL, align 4
  %56 = call i32 @cx18_read_reg(%struct.cx18* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, 4194304
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 8192
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, 65536
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 131072
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, 786432
  store i32 %66, i32* %8, align 4
  %67 = load %struct.cx18*, %struct.cx18** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @CX18_REG_DMUX_NUM_PORT_0_CONTROL, align 4
  %70 = call i32 @cx18_write_reg(%struct.cx18* %67, i32 %68, i32 %69)
  br label %73

71:                                               ; preds = %45, %45, %45
  br label %72

72:                                               ; preds = %45, %71
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %75 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %140

82:                                               ; preds = %73
  %83 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %84 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %89 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = icmp eq i64 %92, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %82
  %96 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.cx18*, %struct.cx18** %6, align 8
  %98 = getelementptr inbounds %struct.cx18, %struct.cx18* %97, i32 0, i32 0
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %101 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %102 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %101, i32 0, i32 1
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  %104 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %105 = call i32 @cx18_start_v4l2_encode_stream(%struct.cx18_stream* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %95
  %109 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %111 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %117 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %108
  %123 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %124 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %125 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %124, i32 0, i32 1
  %126 = call i32 @clear_bit(i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %122, %108
  br label %128

128:                                              ; preds = %127, %95
  %129 = load %struct.cx18*, %struct.cx18** %6, align 8
  %130 = getelementptr inbounds %struct.cx18, %struct.cx18* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  br label %133

132:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %128
  %134 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %135 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %133, %79, %42, %18
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @CX18_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx18_init_on_first_open(%struct.cx18*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @CX18_ERR(i8*) #1

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_start_v4l2_encode_stream(%struct.cx18_stream*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
