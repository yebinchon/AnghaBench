; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_channel_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_channel_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_device = type { %struct.channel_obj** }
%struct.channel_obj = type { i32, i64, %struct.TYPE_11__, %struct.common_obj* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.common_obj = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@vpif_obj = common dso_local global %struct.vpif_device zeroinitializer, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VPIF_NUMOBJECTS = common dso_local global i32 0, align 4
@channel_first_int = common dso_local global i64** null, align 8
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpif_channel_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_channel_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpif_device*, align 8
  %7 = alloca %struct.channel_obj*, align 8
  %8 = alloca %struct.common_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.vpif_device* @vpif_obj, %struct.vpif_device** %6, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.vpif_device*, %struct.vpif_device** %6, align 8
  %17 = getelementptr inbounds %struct.vpif_device, %struct.vpif_device* %16, i32 0, i32 0
  %18 = load %struct.channel_obj**, %struct.channel_obj*** %17, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %18, i64 %20
  %22 = load %struct.channel_obj*, %struct.channel_obj** %21, align 8
  store %struct.channel_obj* %22, %struct.channel_obj** %7, align 8
  %23 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %24 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %23, i32 0, i32 3
  %25 = load %struct.common_obj*, %struct.common_obj** %24, align 8
  %26 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %27 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i64 %26
  %28 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %158, %2
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @VPIF_NUMOBJECTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %161

37:                                               ; preds = %33
  %38 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %39 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %38, i32 0, i32 3
  %40 = load %struct.common_obj*, %struct.common_obj** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %40, i64 %42
  store %struct.common_obj* %43, %struct.common_obj** %8, align 8
  %44 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %45 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %158

49:                                               ; preds = %37
  %50 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %51 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 1, %54
  br i1 %55, label %56, label %105

56:                                               ; preds = %49
  %57 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %58 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %57, i32 0, i32 3
  %59 = call i64 @list_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %158

62:                                               ; preds = %56
  %63 = load i64**, i64*** @channel_first_int, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %62
  %74 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %75 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = call i32 @do_gettimeofday(i32* %77)
  %79 = load i32, i32* @VIDEOBUF_DONE, align 4
  %80 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %81 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %85 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = call i32 @wake_up_interruptible(i32* %87)
  %89 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %90 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %93 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %92, i32 0, i32 2
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %93, align 8
  br label %94

94:                                               ; preds = %73, %62
  %95 = load i64**, i64*** @channel_first_int, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64*, i64** %95, i64 %97
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  %103 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %104 = call i32 @process_progressive_mode(%struct.common_obj* %103)
  br label %157

105:                                              ; preds = %49
  %106 = load i64**, i64*** @channel_first_int, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64*, i64** %106, i64 %108
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %105
  %117 = load i64**, i64*** @channel_first_int, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64*, i64** %117, i64 %119
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 0, i64* %124, align 8
  br label %158

125:                                              ; preds = %105
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 0, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %130 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = xor i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %134 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 2
  %137 = call i32 @vpif_channel_getfid(i64 %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %140 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %128
  %144 = load i32, i32* %10, align 4
  %145 = icmp eq i32 0, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %149 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %151, i32* %3, align 4
  br label %163

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152, %125
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %156 = call i32 @process_interlaced_mode(i32 %154, %struct.common_obj* %155)
  br label %157

157:                                              ; preds = %153, %94
  br label %158

158:                                              ; preds = %157, %116, %61, %48
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %33

161:                                              ; preds = %33
  %162 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %150
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @process_progressive_mode(%struct.common_obj*) #1

declare dso_local i32 @vpif_channel_getfid(i64) #1

declare dso_local i32 @process_interlaced_mode(i32, %struct.common_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
