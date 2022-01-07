; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_reg_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_reg_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.ivtv = type { %struct.TYPE_7__, %struct.ivtv_stream* }
%struct.TYPE_7__ = type { i32* }
%struct.ivtv_stream = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ivtv_stream_info = common dso_local global %struct.TYPE_9__* null, align 8
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Couldn't register v4l2 device for %s (device node number %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Registered device %s for %s (%d kB)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Registered device %s for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32)* @ivtv_reg_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_reg_dev(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 1
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %13, i64 %15
  store %struct.ivtv_stream* %16, %struct.ivtv_stream** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

28:                                               ; preds = %2
  %29 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %30 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %28
  %38 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 1
  %40 = load %struct.ivtv_stream*, %struct.ivtv_stream** %39, align 8
  %41 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %40, i64 %42
  store %struct.ivtv_stream* %43, %struct.ivtv_stream** %10, align 8
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %45 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %50 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %53, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %48, %37
  br label %62

62:                                               ; preds = %61, %28
  %63 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %64 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %67 = call i32 @video_set_drvdata(%struct.TYPE_8__* %65, %struct.ivtv_stream* %66)
  %68 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %69 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @video_register_device_no_warn(%struct.TYPE_8__* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %62
  %76 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %77 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %82 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 @video_device_release(%struct.TYPE_8__* %83)
  %85 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %86 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %85, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %86, align 8
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %147

89:                                               ; preds = %62
  %90 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %91 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i8* @video_device_node_name(%struct.TYPE_8__* %92)
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* %7, align 4
  switch i32 %94, label %146 [
    i32 130, label %95
    i32 129, label %109
    i32 128, label %115
  ]

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %98 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %101 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %96, i32 %99, i32 %107)
  br label %146

109:                                              ; preds = %89
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %112 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %110, i32 %113)
  br label %146

115:                                              ; preds = %89
  %116 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %117 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %115
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %128 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %131 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %126, i32 %129, i32 %137)
  br label %145

139:                                              ; preds = %115
  %140 = load i8*, i8** %8, align 8
  %141 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %142 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %140, i32 %143)
  br label %145

145:                                              ; preds = %139, %125
  br label %146

146:                                              ; preds = %89, %145, %109, %95
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %75, %27
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.ivtv_stream*) #1

declare dso_local i64 @video_register_device_no_warn(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @IVTV_ERR(i8*, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_8__*) #1

declare dso_local i8* @video_device_node_name(%struct.TYPE_8__*) #1

declare dso_local i32 @IVTV_INFO(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
