; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_commit_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_commit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64, %struct.pvr2_ctrl* }
%struct.pvr2_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.pvr2_ctrl*, i32*)*, i32, i32 (%struct.pvr2_ctrl*)* }

@pvrusb2_debug = common dso_local global i32 0, align 4
@PVR2_TRACE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\22%s\22 <-- \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"/*--TRACE_COMMIT--*/ %.*s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"state_pipeline_config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @pvr2_hdw_commit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_hdw_commit_setup(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %100, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %103

20:                                               ; preds = %14
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 3
  %23 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %23, i64 %25
  store %struct.pvr2_ctrl* %26, %struct.pvr2_ctrl** %5, align 8
  %27 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32 (%struct.pvr2_ctrl*)*, i32 (%struct.pvr2_ctrl*)** %30, align 8
  %32 = icmp ne i32 (%struct.pvr2_ctrl*)* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %100

34:                                               ; preds = %20
  %35 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32 (%struct.pvr2_ctrl*)*, i32 (%struct.pvr2_ctrl*)** %38, align 8
  %40 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %41 = call i32 %39(%struct.pvr2_ctrl* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %100

44:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  %45 = load i32, i32* @pvrusb2_debug, align 4
  %46 = load i32, i32* @PVR2_TRACE_CTL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %100

50:                                               ; preds = %44
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %52 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %53 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @scnprintf(i8* %51, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %58 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %59 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %61, align 8
  %63 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %64 = call i32 %62(%struct.pvr2_ctrl* %63, i32* %6)
  %65 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = sub i64 100, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @pvr2_ctrl_value_to_sym_internal(%struct.pvr2_ctrl* %65, i32 -1, i32 %66, i8* %70, i32 %74, i32* %10)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = sub i64 100, %84
  %86 = trunc i64 %85 to i32
  %87 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %88 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @get_ctrl_typename(i32 %91)
  %93 = call i32 @scnprintf(i8* %82, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @PVR2_TRACE_CTL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %99 = call i32 @pvr2_trace(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %97, i8* %98)
  br label %100

100:                                              ; preds = %50, %49, %43, %33
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %14

103:                                              ; preds = %14
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %116

107:                                              ; preds = %103
  %108 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %109 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %111 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @trace_stbit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %112)
  %114 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %115 = call i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw* %114)
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %107, %106
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pvr2_ctrl_value_to_sym_internal(%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @get_ctrl_typename(i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i8*) #1

declare dso_local i32 @trace_stbit(i8*, i64) #1

declare dso_local i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
