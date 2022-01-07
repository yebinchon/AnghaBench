; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_frontend_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.pvr2_dvb_props* }
%struct.pvr2_dvb_props = type { i64 (%struct.pvr2_dvb_adapter.0*)*, i32 (%struct.pvr2_dvb_adapter.1*)* }
%struct.pvr2_dvb_adapter.0 = type opaque
%struct.pvr2_dvb_adapter.1 = type opaque
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*)* }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fe_props not defined!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PVR2_CVAL_INPUT_DTV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to grab control of dtv input (code=%d)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"frontend_attach not defined!\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"frontend registration failed!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pvr2_dvb_bus_ctrl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"no frontend was attached!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_frontend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_frontend_init(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_dvb_adapter*, align 8
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca %struct.pvr2_dvb_props*, align 8
  %6 = alloca i32, align 4
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %3, align 8
  %7 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  store %struct.pvr2_hdw* %10, %struct.pvr2_hdw** %4, align 8
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %14, align 8
  store %struct.pvr2_dvb_props* %15, %struct.pvr2_dvb_props** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %17 = icmp eq %struct.pvr2_dvb_props* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %20 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %130

23:                                               ; preds = %1
  %24 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* @PVR2_CVAL_INPUT_DTV, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @pvr2_channel_limit_inputs(%struct.TYPE_12__* %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %130

36:                                               ; preds = %23
  %37 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %38 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %37, i32 0, i32 0
  %39 = load i64 (%struct.pvr2_dvb_adapter.0*)*, i64 (%struct.pvr2_dvb_adapter.0*)** %38, align 8
  %40 = icmp eq i64 (%struct.pvr2_dvb_adapter.0*)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %43 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %125

46:                                               ; preds = %36
  %47 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %48 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %47, i32 0, i32 0
  %49 = load i64 (%struct.pvr2_dvb_adapter.0*)*, i64 (%struct.pvr2_dvb_adapter.0*)** %48, align 8
  %50 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %51 = bitcast %struct.pvr2_dvb_adapter* %50 to %struct.pvr2_dvb_adapter.0*
  %52 = call i64 %49(%struct.pvr2_dvb_adapter.0* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %118

54:                                               ; preds = %46
  %55 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %118

59:                                               ; preds = %54
  %60 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %60, i32 0, i32 2
  %62 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = call i64 @dvb_register_frontend(i32* %61, %struct.TYPE_11__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %69 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = call i32 @dvb_frontend_detach(%struct.TYPE_11__* %72)
  %74 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %74, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %75, align 8
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %125

78:                                               ; preds = %59
  %79 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %80 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %79, i32 0, i32 1
  %81 = load i32 (%struct.pvr2_dvb_adapter.1*)*, i32 (%struct.pvr2_dvb_adapter.1*)** %80, align 8
  %82 = icmp ne i32 (%struct.pvr2_dvb_adapter.1*)* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.pvr2_dvb_props*, %struct.pvr2_dvb_props** %5, align 8
  %85 = getelementptr inbounds %struct.pvr2_dvb_props, %struct.pvr2_dvb_props* %84, i32 0, i32 1
  %86 = load i32 (%struct.pvr2_dvb_adapter.1*)*, i32 (%struct.pvr2_dvb_adapter.1*)** %85, align 8
  %87 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %88 = bitcast %struct.pvr2_dvb_adapter* %87 to %struct.pvr2_dvb_adapter.1*
  %89 = call i32 %86(%struct.pvr2_dvb_adapter.1* %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %96, align 8
  %98 = icmp ne i32 (%struct.TYPE_11__*)* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %105, align 8
  %107 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %107, i32 0, i32 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = call i32 %106(%struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %99, %90
  %112 = load i32, i32* @pvr2_dvb_bus_ctrl, align 4
  %113 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  br label %124

118:                                              ; preds = %54, %46
  %119 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %120 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %130

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %67, %41
  %126 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %126, i32 0, i32 0
  %128 = call i32 @pvr2_channel_limit_inputs(%struct.TYPE_12__* %127, i32 0)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %118, %31, %18
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_channel_limit_inputs(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
