; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_scan_chain_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_scan_chain_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { i32, i32 }
%struct.uvc_entity = type { i32, i32, i32 }

@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Extension unit %d has more than 1 input pin.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@uvc_trace_param = common dso_local global i32 0, align 4
@UVC_TRACE_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" (->\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" XU %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unsupported input terminal %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" OT %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_entity*, %struct.uvc_entity*)* @uvc_scan_chain_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_scan_chain_forward(%struct.uvc_video_chain* %0, %struct.uvc_entity* %1, %struct.uvc_entity* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_video_chain*, align 8
  %6 = alloca %struct.uvc_entity*, align 8
  %7 = alloca %struct.uvc_entity*, align 8
  %8 = alloca %struct.uvc_entity*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %5, align 8
  store %struct.uvc_entity* %1, %struct.uvc_entity** %6, align 8
  store %struct.uvc_entity* %2, %struct.uvc_entity** %7, align 8
  store %struct.uvc_entity* null, %struct.uvc_entity** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %3, %26, %97
  %11 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %5, align 8
  %12 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %15 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %18 = call %struct.uvc_entity* @uvc_entity_by_reference(i32 %13, i32 %16, %struct.uvc_entity* %17)
  store %struct.uvc_entity* %18, %struct.uvc_entity** %8, align 8
  %19 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %20 = icmp eq %struct.uvc_entity* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %98

22:                                               ; preds = %10
  %23 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %24 = load %struct.uvc_entity*, %struct.uvc_entity** %7, align 8
  %25 = icmp eq %struct.uvc_entity* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %10

27:                                               ; preds = %22
  %28 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %29 = call i32 @UVC_ENTITY_TYPE(%struct.uvc_entity* %28)
  switch i32 %29, label %97 [
    i32 128, label %30
    i32 130, label %64
    i32 132, label %64
    i32 131, label %64
    i32 129, label %64
  ]

30:                                               ; preds = %27
  %31 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %32 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %37 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %38 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uvc_trace(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %104

43:                                               ; preds = %30
  %44 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %45 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %44, i32 0, i32 2
  %46 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %5, align 8
  %47 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load i32, i32* @uvc_trace_param, align 4
  %50 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %60 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %43
  br label %97

64:                                               ; preds = %27, %27, %27, %27
  %65 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %66 = call i32 @UVC_ENTITY_IS_ITERM(%struct.uvc_entity* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %70 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %71 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @uvc_trace(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %104

76:                                               ; preds = %64
  %77 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %78 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %77, i32 0, i32 2
  %79 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %5, align 8
  %80 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %79, i32 0, i32 0
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  %82 = load i32, i32* @uvc_trace_param, align 4
  %83 = load i32, i32* @UVC_TRACE_PROBE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load %struct.uvc_entity*, %struct.uvc_entity** %8, align 8
  %93 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  store i32 1, i32* %9, align 4
  br label %96

96:                                               ; preds = %91, %76
  br label %97

97:                                               ; preds = %27, %96, %63
  br label %10

98:                                               ; preds = %21
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %68, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.uvc_entity* @uvc_entity_by_reference(i32, i32, %struct.uvc_entity*) #1

declare dso_local i32 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @UVC_ENTITY_IS_ITERM(%struct.uvc_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
