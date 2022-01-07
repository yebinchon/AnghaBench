; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.pvr2_v4l2_fh*, %struct.TYPE_12__, %struct.pvr2_v4l2*, %struct.TYPE_8__*, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.pvr2_v4l2 = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.pvr2_stream = type { i32 }

@PVR2_TRACE_OPEN_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pvr2_v4l2_release\00", align 1
@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Destroying pvr_v4l2_fh id=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pvr2_v4l2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_v4l2_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pvr2_v4l2_fh*, align 8
  %4 = alloca %struct.pvr2_v4l2*, align 8
  %5 = alloca %struct.pvr2_hdw*, align 8
  %6 = alloca %struct.pvr2_stream*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  store %struct.pvr2_v4l2_fh* %9, %struct.pvr2_v4l2_fh** %3, align 8
  %10 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %10, i32 0, i32 2
  %12 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %11, align 8
  store %struct.pvr2_v4l2* %12, %struct.pvr2_v4l2** %4, align 8
  %13 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %17, align 8
  store %struct.pvr2_hdw* %18, %struct.pvr2_hdw** %5, align 8
  %19 = load i32, i32* @PVR2_TRACE_OPEN_CLOSE, align 4
  %20 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %1
  %26 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %27 = call i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw* %26, i32 0)
  %28 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %29 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = call %struct.pvr2_stream* @pvr2_ioread_get_stream(i32* %30)
  store %struct.pvr2_stream* %31, %struct.pvr2_stream** %6, align 8
  %32 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %33 = icmp ne %struct.pvr2_stream* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.pvr2_stream*, %struct.pvr2_stream** %6, align 8
  %36 = call i32 @pvr2_stream_set_callback(%struct.pvr2_stream* %35, i32* null, i32* null)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %39 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @pvr2_ioread_destroy(i32* %40)
  %42 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %46 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %45, i32 0, i32 3
  %47 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %48 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @v4l2_prio_close(i32* %46, i32 %49)
  %51 = load %struct.file*, %struct.file** %2, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.pvr2_v4l2_fh* null, %struct.pvr2_v4l2_fh** %52, align 8
  %53 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %54 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %53, i32 0, i32 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %59 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %62 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %61, i32 0, i32 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %64, align 8
  br label %71

65:                                               ; preds = %44
  %66 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %67 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %70 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %69, i32 0, i32 2
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %70, align 8
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %73 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %72, i32 0, i32 3
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %78 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %77, i32 0, i32 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %81 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %83, align 8
  br label %90

84:                                               ; preds = %71
  %85 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %86 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %85, i32 0, i32 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %89 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %88, i32 0, i32 0
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %89, align 8
  br label %90

90:                                               ; preds = %84, %76
  %91 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %92 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %91, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %92, align 8
  %93 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %94 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %93, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %96 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %95, i32 0, i32 2
  store %struct.pvr2_v4l2* null, %struct.pvr2_v4l2** %96, align 8
  %97 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %98 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %97, i32 0, i32 1
  %99 = call i32 @pvr2_channel_done(%struct.TYPE_12__* %98)
  %100 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %101 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %102 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_v4l2_fh* %101)
  %103 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %104 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %103, i32 0, i32 0
  %105 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %104, align 8
  %106 = icmp ne %struct.pvr2_v4l2_fh* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %90
  %108 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %109 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %108, i32 0, i32 0
  %110 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %109, align 8
  %111 = call i32 @kfree(%struct.pvr2_v4l2_fh* %110)
  %112 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %113 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %112, i32 0, i32 0
  store %struct.pvr2_v4l2_fh* null, %struct.pvr2_v4l2_fh** %113, align 8
  br label %114

114:                                              ; preds = %107, %90
  %115 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %116 = call i32 @kfree(%struct.pvr2_v4l2_fh* %115)
  %117 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %118 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %126 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = icmp ne %struct.TYPE_11__* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %4, align 8
  %131 = call i32 @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2* %130)
  br label %132

132:                                              ; preds = %129, %124, %114
  ret i32 0
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw*, i32) #1

declare dso_local %struct.pvr2_stream* @pvr2_ioread_get_stream(i32*) #1

declare dso_local i32 @pvr2_stream_set_callback(%struct.pvr2_stream*, i32*, i32*) #1

declare dso_local i32 @pvr2_ioread_destroy(i32*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32) #1

declare dso_local i32 @pvr2_channel_done(%struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.pvr2_v4l2_fh*) #1

declare dso_local i32 @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
