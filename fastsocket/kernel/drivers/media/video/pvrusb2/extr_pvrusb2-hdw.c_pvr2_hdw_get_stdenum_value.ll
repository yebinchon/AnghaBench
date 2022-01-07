; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_stdenum_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_stdenum_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64 }
%struct.v4l2_standard = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_get_stdenum_value(%struct.pvr2_hdw* %0, %struct.v4l2_standard* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_hdw*, align 8
  %6 = alloca %struct.v4l2_standard*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %5, align 8
  store %struct.v4l2_standard* %1, %struct.v4l2_standard** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LOCK_TAKE(i32 %18)
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %23 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %38

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = load %struct.v4l2_standard*, %struct.v4l2_standard** %6, align 8
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @memcpy(%struct.v4l2_standard* %30, i64 %36, i32 4)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %27, %26
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @LOCK_GIVE(i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @memcpy(%struct.v4l2_standard*, i64, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
