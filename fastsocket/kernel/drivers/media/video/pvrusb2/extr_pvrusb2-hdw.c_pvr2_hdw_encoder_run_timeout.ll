; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_encoder_run_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_encoder_run_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"state_encoder_runok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pvr2_hdw_encoder_run_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_encoder_run_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pvr2_hdw*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.pvr2_hdw*
  store %struct.pvr2_hdw* %5, %struct.pvr2_hdw** %3, align 8
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @trace_stbit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %23 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %22, i32 0, i32 2
  %24 = call i32 @queue_work(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @trace_stbit(i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
