; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32, i32 (%struct.video_device*)*, i32*, i32* }
%struct.saa7146_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.video_device_shadow = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"dev:%p, name:'%s', type:%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@video_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot register v4l2 device. skipping.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: registered device %s [v4l2]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_register_device(%struct.video_device** %0, %struct.saa7146_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device**, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.video_device_shadow*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.video_device** %0, %struct.video_device*** %6, align 8
  store %struct.saa7146_dev* %1, %struct.saa7146_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @DEB_EE(i8* %18)
  %20 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %20, %struct.video_device** %10, align 8
  %21 = load %struct.video_device*, %struct.video_device** %10, align 8
  %22 = icmp eq %struct.video_device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %107

26:                                               ; preds = %4
  %27 = load %struct.video_device*, %struct.video_device** %10, align 8
  %28 = call %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device* %27)
  store %struct.video_device_shadow* %28, %struct.video_device_shadow** %11, align 8
  %29 = load %struct.video_device_shadow*, %struct.video_device_shadow** %11, align 8
  %30 = icmp eq %struct.video_device_shadow* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %107

34:                                               ; preds = %26
  %35 = load %struct.video_device*, %struct.video_device** %10, align 8
  %36 = getelementptr inbounds %struct.video_device, %struct.video_device* %35, i32 0, i32 4
  store i32* @video_fops, i32** %36, align 8
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %38 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.video_device*, %struct.video_device** %10, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.video_device*, %struct.video_device** %10, align 8
  %44 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 2
  store i32 (%struct.video_device*)* @video_device_release, i32 (%struct.video_device*)** %44, align 8
  %45 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %46 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %45, i32 0, i32 2
  %47 = load %struct.video_device_shadow*, %struct.video_device_shadow** %11, align 8
  %48 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.video_device*, %struct.video_device** %10, align 8
  %50 = getelementptr inbounds %struct.video_device, %struct.video_device* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %74, %34
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %54 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %61 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.video_device*, %struct.video_device** %10, align 8
  %71 = getelementptr inbounds %struct.video_device, %struct.video_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load %struct.video_device*, %struct.video_device** %10, align 8
  %79 = getelementptr inbounds %struct.video_device, %struct.video_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strlcpy(i32 %80, i8* %81, i32 4)
  %83 = load %struct.video_device*, %struct.video_device** %10, align 8
  %84 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %85 = call i32 @video_set_drvdata(%struct.video_device* %83, %struct.saa7146_dev* %84)
  %86 = load %struct.video_device*, %struct.video_device** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @video_register_device(%struct.video_device* %86, i32 %87, i32 -1)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.video_device*, %struct.video_device** %10, align 8
  %94 = call i32 @video_device_release(%struct.video_device* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %107

96:                                               ; preds = %77
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %98 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.video_device*, %struct.video_device** %10, align 8
  %101 = call i32 @video_device_node_name(%struct.video_device* %100)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @INFO(i8* %103)
  %105 = load %struct.video_device*, %struct.video_device** %10, align 8
  %106 = load %struct.video_device**, %struct.video_device*** %6, align 8
  store %struct.video_device* %105, %struct.video_device** %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %96, %91, %31, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.saa7146_dev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @INFO(i8*) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
