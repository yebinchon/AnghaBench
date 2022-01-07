; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-std.c_pvr2_std_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-std.c_pvr2_std_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_standard = type { i32, i64*, i32 }

@PVR2_TRACE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set up standard idx=%u name=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_standard*, i32)* @pvr2_std_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_std_fill(%struct.v4l2_standard* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_standard*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_standard*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_standard* %0, %struct.v4l2_standard** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.v4l2_standard* @match_std(i32 %9)
  store %struct.v4l2_standard* %10, %struct.v4l2_standard** %6, align 8
  %11 = load %struct.v4l2_standard*, %struct.v4l2_standard** %6, align 8
  %12 = icmp ne %struct.v4l2_standard* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %19 = load %struct.v4l2_standard*, %struct.v4l2_standard** %6, align 8
  %20 = call i32 @memcpy(%struct.v4l2_standard* %18, %struct.v4l2_standard* %19, i32 24)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pvr2_std_id_to_str(i64* %29, i32 7, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @PVR2_TRACE_STD, align 4
  %39 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_standard*, %struct.v4l2_standard** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = call i32 @pvr2_trace(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i64* %44)
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %14, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.v4l2_standard* @match_std(i32) #1

declare dso_local i32 @memcpy(%struct.v4l2_standard*, %struct.v4l2_standard*, i32) #1

declare dso_local i32 @pvr2_std_id_to_str(i64*, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
