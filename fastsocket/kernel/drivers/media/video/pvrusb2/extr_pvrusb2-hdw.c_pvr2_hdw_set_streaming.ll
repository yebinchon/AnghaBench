; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_streaming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32 }

@PVR2_TRACE_START_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"/*--TRACE_STREAM--*/ %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@PVR2_STATE_RUN = common dso_local global i32 0, align 4
@PVR2_STATE_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %9 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @LOCK_TAKE(i32 %10)
  br label %12

12:                                               ; preds = %2
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %14 = call i32 @pvr2_hdw_untrip_unlocked(%struct.pvr2_hdw* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = icmp ne i32 %18, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %12
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @PVR2_TRACE_START_STOP, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @pvr2_trace(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %26, %12
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = call i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw* %39)
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LOCK_GIVE(i32 %44)
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %47 = call i32 @pvr2_hdw_wait(%struct.pvr2_hdw* %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %75, %54
  %56 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %57 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @PVR2_STATE_RUN, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PVR2_STATE_READY, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %61
  %69 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pvr2_hdw_wait(%struct.pvr2_hdw* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %68
  br label %55

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %51
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %73, %65, %49
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_untrip_unlocked(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i8*) #1

declare dso_local i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

declare dso_local i32 @pvr2_hdw_wait(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
