; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_encoder_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_encoder_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@PVR2_PATHWAY_DIGITAL = common dso_local global i64 0, align 8
@PVR2_PATHWAY_ANALOG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"flag_tripped\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"state_encoder_ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_eval_encoder_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_eval_encoder_ok(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

9:                                                ; preds = %1
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %80

15:                                               ; preds = %9
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %23 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %80

27:                                               ; preds = %21
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %80

33:                                               ; preds = %27
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %80

39:                                               ; preds = %33
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PVR2_PATHWAY_DIGITAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %80

53:                                               ; preds = %45
  br label %62

54:                                               ; preds = %39
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %80

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53
  %63 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %64 = call i64 @pvr2_upload_firmware2(%struct.pvr2_hdw* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %68 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %70 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @trace_stbit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 1, i32* %2, align 4
  br label %80

73:                                               ; preds = %62
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %77 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @trace_stbit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %66, %60, %52, %38, %32, %26, %20, %14, %8
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @pvr2_upload_firmware2(%struct.pvr2_hdw*) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
