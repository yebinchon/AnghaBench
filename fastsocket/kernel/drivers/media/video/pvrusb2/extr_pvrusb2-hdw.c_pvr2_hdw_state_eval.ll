; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_state_eval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_state_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@PVR2_TRACE_STBITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Drive state check START\00", align 1
@pvrusb2_debug = common dso_local global i32 0, align 4
@PVR2_PATHWAY_DIGITAL = common dso_local global i64 0, align 8
@PVR2_STATE_DEAD = common dso_local global i32 0, align 4
@FW1_STATE_OK = common dso_local global i64 0, align 8
@PVR2_STATE_COLD = common dso_local global i32 0, align 4
@PVR2_STATE_WARM = common dso_local global i32 0, align 4
@PVR2_STATE_ERROR = common dso_local global i32 0, align 4
@PVR2_STATE_RUN = common dso_local global i32 0, align 4
@PVR2_STATE_READY = common dso_local global i32 0, align 4
@PVR2_TRACE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Device state change from %s to %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Drive state check DONE callback=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @pvr2_hdw_state_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_hdw_state_eval(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @PVR2_TRACE_STBITS, align 4
  %8 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @pvrusb2_debug, align 4
  %10 = load i32, i32* @PVR2_TRACE_STBITS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %15 = call i32 @pvr2_hdw_state_log_state(%struct.pvr2_hdw* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %18 = call i32 @pvr2_hdw_state_update(%struct.pvr2_hdw* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PVR2_PATHWAY_DIGITAL, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @PVR2_STATE_DEAD, align 4
  store i32 %30, i32* %3, align 4
  br label %97

31:                                               ; preds = %16
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %33 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FW1_STATE_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @PVR2_STATE_COLD, align 4
  store i32 %38, i32* %3, align 4
  br label %96

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 10
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42, %39
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @PVR2_STATE_WARM, align 4
  store i32 %55, i32* %3, align 4
  br label %95

56:                                               ; preds = %49, %42
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %56
  %70 = load i32, i32* @PVR2_STATE_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %64, %61
  %72 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %73 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %81 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %86 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %76
  %90 = load i32, i32* @PVR2_STATE_RUN, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %84, %79, %71
  %92 = load i32, i32* @PVR2_STATE_READY, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %69
  br label %95

95:                                               ; preds = %94, %54
  br label %96

96:                                               ; preds = %95, %37
  br label %97

97:                                               ; preds = %96, %29
  %98 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %99 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load i32, i32* @PVR2_TRACE_STATE, align 4
  %105 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %106 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pvr2_get_state_name(i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @pvr2_get_state_name(i32 %109)
  %111 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @PVR2_STATE_RUN, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @pvr2_led_ctrl(%struct.pvr2_hdw* %112, i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %120 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %121

121:                                              ; preds = %103, %97
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %126 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %125, i32 0, i32 3
  %127 = call i32 @wake_up(i32* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* @pvrusb2_debug, align 4
  %130 = load i32, i32* @PVR2_TRACE_STBITS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %135 = call i32 @pvr2_hdw_state_log_state(%struct.pvr2_hdw* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* @PVR2_TRACE_STBITS, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_hdw_state_log_state(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_state_update(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_get_state_name(i32) #1

declare dso_local i32 @pvr2_led_ctrl(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
