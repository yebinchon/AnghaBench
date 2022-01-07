; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_frame_dumped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_frame_dumped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i64 }

@FRAME_LOWMARK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Dumping frame %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Dumping frame %d (last message)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*)* @pwc_frame_dumped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_frame_dumped(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  %3 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %4 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 8
  %7 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %8 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FRAME_LOWMARK, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %15 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 20
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %20 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @PWC_DEBUG_FLOW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %34

23:                                               ; preds = %13
  %24 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 20
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @PWC_DEBUG_FLOW(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %12, %33, %18
  ret void
}

declare dso_local i32 @PWC_DEBUG_FLOW(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
