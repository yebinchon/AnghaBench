; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_init_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_init_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@TRKID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_mt_init_slots(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

10:                                               ; preds = %2
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %10
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kcalloc(i32 %28, i32 4, i32 %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = load i32, i32* @ABS_MT_SLOT, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub i32 %46, 1
  %48 = call i32 @input_set_abs_params(%struct.input_dev* %44, i32 %45, i32 0, i32 %47, i32 0, i32 0)
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %51 = load i32, i32* @TRKID_MAX, align 4
  %52 = call i32 @input_set_abs_params(%struct.input_dev* %49, i32 %50, i32 0, i32 %51, i32 0, i32 0)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %66, %40
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %65 = call i32 @input_mt_set_value(i32* %63, i32 %64, i32 -1)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %53

69:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %37, %25, %9
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_set_value(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
