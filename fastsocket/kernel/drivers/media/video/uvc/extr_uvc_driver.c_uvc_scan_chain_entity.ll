; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_scan_chain_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_scan_chain_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32, %struct.uvc_entity*, %struct.uvc_entity* }
%struct.uvc_entity = type { i32, i32, i32 }

@uvc_trace_param = common dso_local global i32 0, align 4
@UVC_TRACE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" <- XU %d\00", align 1
@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Extension unit %d has more than 1 input pin.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" <- PU %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Found multiple Processing Units in chain.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" <- SU %d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Found multiple Selector Units in chain.\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" <- IT %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" OT %d\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Unsupported entity type 0x%04x found in chain.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_entity*)* @uvc_scan_chain_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_scan_chain_entity(%struct.uvc_video_chain* %0, %struct.uvc_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.uvc_entity*, align 8
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.uvc_entity* %1, %struct.uvc_entity** %5, align 8
  %6 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %7 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %6)
  switch i32 %7, label %118 [
    i32 130, label %8
    i32 129, label %30
    i32 128, label %52
    i32 132, label %80
    i32 134, label %80
    i32 133, label %80
    i32 131, label %91
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @uvc_trace_param, align 4
  %10 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %15 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %20 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %25 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %26 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @uvc_trace(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %3, align 4
  br label %129

29:                                               ; preds = %18
  br label %123

30:                                               ; preds = %2
  %31 = load i32, i32* @uvc_trace_param, align 4
  %32 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %37 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %42 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %41, i32 0, i32 2
  %43 = load %struct.uvc_entity*, %struct.uvc_entity** %42, align 8
  %44 = icmp ne %struct.uvc_entity* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %47 = call i32 (i32, i8*, ...) @uvc_trace(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %129

48:                                               ; preds = %40
  %49 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %50 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %51 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %50, i32 0, i32 2
  store %struct.uvc_entity* %49, %struct.uvc_entity** %51, align 8
  br label %123

52:                                               ; preds = %2
  %53 = load i32, i32* @uvc_trace_param, align 4
  %54 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %59 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %64 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %123

68:                                               ; preds = %62
  %69 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %70 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %69, i32 0, i32 1
  %71 = load %struct.uvc_entity*, %struct.uvc_entity** %70, align 8
  %72 = icmp ne %struct.uvc_entity* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %75 = call i32 (i32, i8*, ...) @uvc_trace(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %129

76:                                               ; preds = %68
  %77 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %78 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %79 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %78, i32 0, i32 1
  store %struct.uvc_entity* %77, %struct.uvc_entity** %79, align 8
  br label %123

80:                                               ; preds = %2, %2, %2
  %81 = load i32, i32* @uvc_trace_param, align 4
  %82 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %87 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  br label %123

91:                                               ; preds = %2
  %92 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %93 = call i32 @UVC_ENTITY_IS_ITERM(%struct.uvc_entity* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32, i32* @uvc_trace_param, align 4
  %97 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %102 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %95
  br label %117

106:                                              ; preds = %91
  %107 = load i32, i32* @uvc_trace_param, align 4
  %108 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %113 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %105
  br label %123

118:                                              ; preds = %2
  %119 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %120 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %121 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %120)
  %122 = call i32 (i32, i8*, ...) @uvc_trace(i32 %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  store i32 -1, i32* %3, align 4
  br label %129

123:                                              ; preds = %117, %90, %76, %67, %48, %29
  %124 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %125 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %124, i32 0, i32 2
  %126 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %127 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %126, i32 0, i32 0
  %128 = call i32 @list_add_tail(i32* %125, i32* %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %118, %73, %45, %23
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, ...) #1

declare dso_local i32 @UVC_ENTITY_IS_ITERM(%struct.uvc_entity*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
