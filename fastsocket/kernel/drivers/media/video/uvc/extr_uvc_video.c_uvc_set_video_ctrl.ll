; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_set_video_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_set_video_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_streaming_control = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_SET_CUR = common dso_local global i32 0, align 4
@UVC_VS_PROBE_CONTROL = common dso_local global i32 0, align 4
@UVC_VS_COMMIT_CONTROL = common dso_local global i32 0, align 4
@uvc_timeout_param = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to set UVC %s control : %d (exp. %u).\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32)* @uvc_set_video_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_set_video_ctrl(%struct.uvc_streaming* %0, %struct.uvc_streaming_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_streaming_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_streaming_control* %1, %struct.uvc_streaming_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %12 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 272
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 34, i32 26
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @kzalloc(i32 %19, i32 %20)
  store i64* %21, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %166

27:                                               ; preds = %3
  %28 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load i64*, i64** %8, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = bitcast i64* %33 to i32*
  store i32 %31, i32* %34, align 4
  %35 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %36 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %40, i32 0, i32 13
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 4
  %51 = bitcast i64* %50 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %53 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 8
  %58 = bitcast i64* %57 to i32*
  store i32 %55, i32* %58, align 4
  %59 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %60 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 10
  %65 = bitcast i64* %64 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %67 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 12
  %72 = bitcast i64* %71 to i32*
  store i32 %69, i32* %72, align 4
  %73 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %74 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 14
  %79 = bitcast i64* %78 to i32*
  store i32 %76, i32* %79, align 4
  %80 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %81 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cpu_to_le16(i32 %82)
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 16
  %86 = bitcast i64* %85 to i32*
  store i32 %83, i32* %86, align 4
  %87 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %88 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 18
  %92 = call i32 @put_unaligned_le32(i32 %89, i64* %91)
  %93 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %94 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i64*, i64** %8, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 22
  %98 = call i32 @put_unaligned_le32(i32 %95, i64* %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 34
  br i1 %100, label %101, label %128

101:                                              ; preds = %27
  %102 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %103 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 26
  %107 = call i32 @put_unaligned_le32(i32 %104, i64* %106)
  %108 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %109 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %8, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 30
  store i64 %110, i64* %112, align 8
  %113 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %114 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 31
  store i64 %115, i64* %117, align 8
  %118 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %119 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 32
  store i64 %120, i64* %122, align 8
  %123 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %124 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 33
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %101, %27
  %129 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %130 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* @UVC_SET_CUR, align 4
  %133 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %134 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* @UVC_VS_PROBE_CONTROL, align 4
  br label %142

140:                                              ; preds = %128
  %141 = load i32, i32* @UVC_VS_COMMIT_CONTROL, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = load i64*, i64** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @uvc_timeout_param, align 4
  %147 = call i32 @__uvc_query_ctrl(%struct.TYPE_2__* %131, i32 %132, i32 0, i32 %135, i32 %143, i64* %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %142
  %152 = load i32, i32* @KERN_ERR, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @uvc_printk(i32 %152, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %156, i32 %157, i32 %158)
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %151, %142
  %163 = load i64*, i64** %8, align 8
  %164 = call i32 @kfree(i64* %163)
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %24
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i64*) #1

declare dso_local i32 @__uvc_query_ctrl(%struct.TYPE_2__*, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @uvc_printk(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
