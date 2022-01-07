; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_destroy_no_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_destroy_no_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_v4l2 = type { i32, i32*, i32* }

@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Destroying pvr2_v4l2 id=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_v4l2*)* @pvr2_v4l2_destroy_no_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_v4l2_destroy_no_lock(%struct.pvr2_v4l2* %0) #0 {
  %2 = alloca %struct.pvr2_v4l2*, align 8
  store %struct.pvr2_v4l2* %0, %struct.pvr2_v4l2** %2, align 8
  %3 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %9 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @pvr2_v4l2_dev_destroy(i32* %10)
  %12 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @pvr2_v4l2_dev_destroy(i32* %22)
  %24 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %25 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %28 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %29 = call i32 @pvr2_trace(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.pvr2_v4l2* %28)
  %30 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %31 = getelementptr inbounds %struct.pvr2_v4l2, %struct.pvr2_v4l2* %30, i32 0, i32 0
  %32 = call i32 @pvr2_channel_done(i32* %31)
  %33 = load %struct.pvr2_v4l2*, %struct.pvr2_v4l2** %2, align 8
  %34 = call i32 @kfree(%struct.pvr2_v4l2* %33)
  ret void
}

declare dso_local i32 @pvr2_v4l2_dev_destroy(i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_v4l2*) #1

declare dso_local i32 @pvr2_channel_done(i32*) #1

declare dso_local i32 @kfree(%struct.pvr2_v4l2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
