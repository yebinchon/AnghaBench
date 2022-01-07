; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_context_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_context_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_context = type { i32, %struct.pvr2_channel*, i64, i32 (%struct.pvr2_context*)*, i32, %struct.TYPE_2__ }
%struct.pvr2_channel = type { i32 (%struct.pvr2_channel*)*, %struct.pvr2_channel* }
%struct.TYPE_2__ = type { i32 }

@PVR2_TRACE_CTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pvr2_context %p (notify)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pvr2_context %p (initialize)\00", align 1
@pvr2_context_notify = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"pvr2_context %p (thread skipping setup)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_context*)* @pvr2_context_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_context_check(%struct.pvr2_context* %0) #0 {
  %2 = alloca %struct.pvr2_context*, align 8
  %3 = alloca %struct.pvr2_channel*, align 8
  %4 = alloca %struct.pvr2_channel*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %2, align 8
  %5 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %6 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %7 = call i32 @pvr2_trace(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pvr2_context* %6)
  %8 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %9 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %1
  %13 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %12
  %18 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %19 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %21 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %22 = call i32 @pvr2_trace(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_context* %21)
  %23 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @pvr2_context_notify, align 8
  %27 = inttoptr i64 %26 to void (i8*)*
  %28 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %29 = call i64 @pvr2_hdw_initialize(i32 %25, void (i8*)* %27, %struct.pvr2_context* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %17
  %32 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %33 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pvr2_hdw_get_video_stream(i32 %34)
  %36 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %37 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %40 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %39, i32 0, i32 3
  %41 = load i32 (%struct.pvr2_context*)*, i32 (%struct.pvr2_context*)** %40, align 8
  %42 = icmp ne i32 (%struct.pvr2_context*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %45 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %44, i32 0, i32 3
  %46 = load i32 (%struct.pvr2_context*)*, i32 (%struct.pvr2_context*)** %45, align 8
  %47 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %48 = call i32 %46(%struct.pvr2_context* %47)
  br label %49

49:                                               ; preds = %43, %31
  br label %54

50:                                               ; preds = %17
  %51 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %52 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %53 = call i32 @pvr2_trace(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.pvr2_context* %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %12, %1
  %56 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %57 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %56, i32 0, i32 1
  %58 = load %struct.pvr2_channel*, %struct.pvr2_channel** %57, align 8
  store %struct.pvr2_channel* %58, %struct.pvr2_channel** %3, align 8
  br label %59

59:                                               ; preds = %77, %55
  %60 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %61 = icmp ne %struct.pvr2_channel* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %64 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %63, i32 0, i32 1
  %65 = load %struct.pvr2_channel*, %struct.pvr2_channel** %64, align 8
  store %struct.pvr2_channel* %65, %struct.pvr2_channel** %4, align 8
  %66 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %67 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %66, i32 0, i32 0
  %68 = load i32 (%struct.pvr2_channel*)*, i32 (%struct.pvr2_channel*)** %67, align 8
  %69 = icmp ne i32 (%struct.pvr2_channel*)* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %72 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %71, i32 0, i32 0
  %73 = load i32 (%struct.pvr2_channel*)*, i32 (%struct.pvr2_channel*)** %72, align 8
  %74 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %75 = call i32 %73(%struct.pvr2_channel* %74)
  br label %76

76:                                               ; preds = %70, %62
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.pvr2_channel*, %struct.pvr2_channel** %4, align 8
  store %struct.pvr2_channel* %78, %struct.pvr2_channel** %3, align 8
  br label %59

79:                                               ; preds = %59
  %80 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %81 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %86 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %85, i32 0, i32 1
  %87 = load %struct.pvr2_channel*, %struct.pvr2_channel** %86, align 8
  %88 = icmp ne %struct.pvr2_channel* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %91 = call i32 @pvr2_context_destroy(%struct.pvr2_context* %90)
  br label %92

92:                                               ; preds = %89, %84, %79
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_context*) #1

declare dso_local i64 @pvr2_hdw_initialize(i32, void (i8*)*, %struct.pvr2_context*) #1

declare dso_local i32 @pvr2_hdw_get_video_stream(i32) #1

declare dso_local i32 @pvr2_context_destroy(%struct.pvr2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
