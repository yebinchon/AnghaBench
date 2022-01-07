; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-device.c_v4l2_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-device.c_v4l2_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.v4l2_device = type { i32*, %struct.device*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Non-NULL drvdata on register\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_device_register(%struct.device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %6 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %7 = icmp eq %struct.v4l2_device* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %66

11:                                               ; preds = %2
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %12, i32 0, i32 4
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %18, i32 0, i32 2
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %22, i32 0, i32 1
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = icmp eq %struct.device* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %11
  %27 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  store i32 0, i32* %3, align 4
  br label %66

36:                                               ; preds = %11
  %37 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i8* @dev_name(%struct.device* %52)
  %54 = call i32 @snprintf(i32* %46, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %53)
  br label %55

55:                                               ; preds = %43, %36
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i64 @dev_get_drvdata(%struct.device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %61 = call i32 @v4l2_warn(%struct.v4l2_device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %65 = call i32 @dev_set_drvdata(%struct.device* %63, %struct.v4l2_device* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %26, %8
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_device*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
