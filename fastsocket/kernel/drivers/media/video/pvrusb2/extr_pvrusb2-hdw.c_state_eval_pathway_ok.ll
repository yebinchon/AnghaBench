; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_pathway_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_state_eval_pathway_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64, i32 }

@PVR2_CVAL_INPUT_DTV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"state_pathway_ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @state_eval_pathway_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_eval_pathway_ok(%struct.pvr2_hdw* %0) #0 {
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
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

15:                                               ; preds = %9
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PVR2_CVAL_INPUT_DTV, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @pvr2_hdw_cmd_modeswitch(%struct.pvr2_hdw* %16, i32 %22)
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %27 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @trace_stbit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %14, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pvr2_hdw_cmd_modeswitch(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
