; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_scan_chain_backward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_scan_chain_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32, i32, %struct.uvc_entity* }
%struct.uvc_entity = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@uvc_trace_param = common dso_local global i32 0, align 4
@UVC_TRACE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" <- IT\00", align 1
@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Selector unit %d input %d isn't connected to an input terminal\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Found reference to unknown entity %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_entity**)* @uvc_scan_chain_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_scan_chain_backward(%struct.uvc_video_chain* %0, %struct.uvc_entity** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.uvc_entity**, align 8
  %6 = alloca %struct.uvc_entity*, align 8
  %7 = alloca %struct.uvc_entity*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.uvc_entity** %1, %struct.uvc_entity*** %5, align 8
  %10 = load %struct.uvc_entity**, %struct.uvc_entity*** %5, align 8
  %11 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  store %struct.uvc_entity* %11, %struct.uvc_entity** %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %15 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %14)
  switch i32 %15, label %120 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %22
    i32 135, label %107
    i32 137, label %107
    i32 136, label %107
    i32 132, label %107
    i32 134, label %107
    i32 133, label %107
    i32 131, label %107
  ]

16:                                               ; preds = %2, %2
  %17 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %18 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %120

22:                                               ; preds = %2
  %23 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %24 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %120

33:                                               ; preds = %22
  %34 = load i32, i32* @uvc_trace_param, align 4
  %35 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %42 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %43 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %42, i32 0, i32 2
  store %struct.uvc_entity* %41, %struct.uvc_entity** %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %96, %40
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %99

50:                                               ; preds = %44
  %51 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %52 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %59 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.uvc_entity* @uvc_entity_by_id(i32 %60, i32 %61)
  store %struct.uvc_entity* %62, %struct.uvc_entity** %7, align 8
  %63 = load %struct.uvc_entity*, %struct.uvc_entity** %7, align 8
  %64 = icmp eq %struct.uvc_entity* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %50
  %66 = load %struct.uvc_entity*, %struct.uvc_entity** %7, align 8
  %67 = call i32 @UVC_ENTITY_IS_ITERM(%struct.uvc_entity* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65, %50
  %70 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %71 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %72 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %70, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  store i32 -1, i32* %3, align 4
  br label %143

76:                                               ; preds = %65
  %77 = load i32, i32* @uvc_trace_param, align 4
  %78 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.uvc_entity*, %struct.uvc_entity** %7, align 8
  %83 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.uvc_entity*, %struct.uvc_entity** %7, align 8
  %88 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %87, i32 0, i32 2
  %89 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %90 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %89, i32 0, i32 1
  %91 = call i32 @list_add_tail(i32* %88, i32* %90)
  %92 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %93 = load %struct.uvc_entity*, %struct.uvc_entity** %7, align 8
  %94 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %95 = call i32 @uvc_scan_chain_forward(%struct.uvc_video_chain* %92, %struct.uvc_entity* %93, %struct.uvc_entity* %94)
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %44

99:                                               ; preds = %44
  %100 = load i32, i32* @uvc_trace_param, align 4
  %101 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  store i32 0, i32* %8, align 4
  br label %120

107:                                              ; preds = %2, %2, %2, %2, %2, %2, %2
  %108 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %109 = call i32 @UVC_ENTITY_IS_OTERM(%struct.uvc_entity* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %113 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  br label %118

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %111
  %119 = phi i32 [ %116, %111 ], [ 0, %117 ]
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %2, %118, %106, %27, %16
  %121 = load i32, i32* %8, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.uvc_entity**, %struct.uvc_entity*** %5, align 8
  store %struct.uvc_entity* null, %struct.uvc_entity** %124, align 8
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %143

126:                                              ; preds = %120
  %127 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %128 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call %struct.uvc_entity* @uvc_entity_by_id(i32 %129, i32 %130)
  store %struct.uvc_entity* %131, %struct.uvc_entity** %6, align 8
  %132 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %133 = icmp eq %struct.uvc_entity* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %143

140:                                              ; preds = %126
  %141 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %142 = load %struct.uvc_entity**, %struct.uvc_entity*** %5, align 8
  store %struct.uvc_entity* %141, %struct.uvc_entity** %142, align 8
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %140, %134, %123, %69
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.uvc_entity* @uvc_entity_by_id(i32, i32) #1

declare dso_local i32 @UVC_ENTITY_IS_ITERM(%struct.uvc_entity*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @uvc_scan_chain_forward(%struct.uvc_video_chain*, %struct.uvc_entity*, %struct.uvc_entity*) #1

declare dso_local i32 @UVC_ENTITY_IS_OTERM(%struct.uvc_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
