; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_stream_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_stream_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"state_pipeline_config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_set_stream_type(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %8 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @LOCK_TAKE(i32 %9)
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %23 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @trace_stbit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %29 = call i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw* %28)
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LOCK_GIVE(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = call i32 @pvr2_hdw_wait(%struct.pvr2_hdw* %39, i32 0)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @trace_stbit(i8*, i64) #1

declare dso_local i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

declare dso_local i32 @pvr2_hdw_wait(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
