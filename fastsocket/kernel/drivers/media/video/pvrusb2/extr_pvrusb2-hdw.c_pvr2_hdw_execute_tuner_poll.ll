; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_execute_tuner_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_execute_tuner_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_execute_tuner_poll(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %3 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @LOCK_TAKE(i32 %5)
  br label %7

7:                                                ; preds = %1
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %9 = call i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw* %8)
  br label %10

10:                                               ; preds = %7
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @LOCK_GIVE(i32 %13)
  ret void
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
