; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.si4713_device = type { i32, i32, i32 }
%struct.si4713_rnl = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @si4713_ioctl(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.si4713_device*, align 8
  %9 = alloca %struct.si4713_rnl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev* %12)
  store %struct.si4713_device* %13, %struct.si4713_device** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.si4713_rnl*
  store %struct.si4713_rnl* %15, %struct.si4713_rnl** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %23 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %55 [
    i32 128, label %26
  ]

26:                                               ; preds = %21
  %27 = load %struct.si4713_rnl*, %struct.si4713_rnl** %9, align 8
  %28 = getelementptr inbounds %struct.si4713_rnl, %struct.si4713_rnl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l2_to_si4713(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %32 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @si4713_tx_tune_measure(%struct.si4713_device* %36, i32 %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %59

42:                                               ; preds = %35
  %43 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %44 = call i32 @si4713_update_tune_status(%struct.si4713_device* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %59

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %51 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.si4713_rnl*, %struct.si4713_rnl** %9, align 8
  %54 = getelementptr inbounds %struct.si4713_rnl, %struct.si4713_rnl* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %58

55:                                               ; preds = %21
  %56 = load i32, i32* @ENOIOCTLCMD, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58, %47, %41
  %60 = load %struct.si4713_device*, %struct.si4713_device** %8, align 8
  %61 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %59, %18
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local %struct.si4713_device* @to_si4713_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_to_si4713(i32) #1

declare dso_local i32 @si4713_tx_tune_measure(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @si4713_update_tune_status(%struct.si4713_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
