; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_create_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_create_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }

@dev_attr_model = common dso_local global i32 0, align 4
@dev_attr_in_use = common dso_local global i32 0, align 4
@dev_attr_streaming = common dso_local global i32 0, align 4
@dev_attr_palette = common dso_local global i32 0, align 4
@dev_attr_frames_total = common dso_local global i32 0, align 4
@dev_attr_frames_read = common dso_local global i32 0, align 4
@dev_attr_packets_dropped = common dso_local global i32 0, align 4
@dev_attr_decoding_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"STV(e): Could not create sysfs files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_device*)* @stv680_create_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv680_create_sysfs_files(%struct.video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  %5 = load %struct.video_device*, %struct.video_device** %3, align 8
  %6 = getelementptr inbounds %struct.video_device, %struct.video_device* %5, i32 0, i32 0
  %7 = call i32 @device_create_file(i32* %6, i32* @dev_attr_model)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %89

11:                                               ; preds = %1
  %12 = load %struct.video_device*, %struct.video_device** %3, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = call i32 @device_create_file(i32* %13, i32* @dev_attr_in_use)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %85

18:                                               ; preds = %11
  %19 = load %struct.video_device*, %struct.video_device** %3, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 0
  %21 = call i32 @device_create_file(i32* %20, i32* @dev_attr_streaming)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %81

25:                                               ; preds = %18
  %26 = load %struct.video_device*, %struct.video_device** %3, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 0
  %28 = call i32 @device_create_file(i32* %27, i32* @dev_attr_palette)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %77

32:                                               ; preds = %25
  %33 = load %struct.video_device*, %struct.video_device** %3, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 0
  %35 = call i32 @device_create_file(i32* %34, i32* @dev_attr_frames_total)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %73

39:                                               ; preds = %32
  %40 = load %struct.video_device*, %struct.video_device** %3, align 8
  %41 = getelementptr inbounds %struct.video_device, %struct.video_device* %40, i32 0, i32 0
  %42 = call i32 @device_create_file(i32* %41, i32* @dev_attr_frames_read)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %69

46:                                               ; preds = %39
  %47 = load %struct.video_device*, %struct.video_device** %3, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 0
  %49 = call i32 @device_create_file(i32* %48, i32* @dev_attr_packets_dropped)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %65

53:                                               ; preds = %46
  %54 = load %struct.video_device*, %struct.video_device** %3, align 8
  %55 = getelementptr inbounds %struct.video_device, %struct.video_device* %54, i32 0, i32 0
  %56 = call i32 @device_create_file(i32* %55, i32* @dev_attr_decoding_errors)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %92

61:                                               ; preds = %59
  %62 = load %struct.video_device*, %struct.video_device** %3, align 8
  %63 = getelementptr inbounds %struct.video_device, %struct.video_device* %62, i32 0, i32 0
  %64 = call i32 @device_remove_file(i32* %63, i32* @dev_attr_packets_dropped)
  br label %65

65:                                               ; preds = %61, %52
  %66 = load %struct.video_device*, %struct.video_device** %3, align 8
  %67 = getelementptr inbounds %struct.video_device, %struct.video_device* %66, i32 0, i32 0
  %68 = call i32 @device_remove_file(i32* %67, i32* @dev_attr_frames_read)
  br label %69

69:                                               ; preds = %65, %45
  %70 = load %struct.video_device*, %struct.video_device** %3, align 8
  %71 = getelementptr inbounds %struct.video_device, %struct.video_device* %70, i32 0, i32 0
  %72 = call i32 @device_remove_file(i32* %71, i32* @dev_attr_frames_total)
  br label %73

73:                                               ; preds = %69, %38
  %74 = load %struct.video_device*, %struct.video_device** %3, align 8
  %75 = getelementptr inbounds %struct.video_device, %struct.video_device* %74, i32 0, i32 0
  %76 = call i32 @device_remove_file(i32* %75, i32* @dev_attr_palette)
  br label %77

77:                                               ; preds = %73, %31
  %78 = load %struct.video_device*, %struct.video_device** %3, align 8
  %79 = getelementptr inbounds %struct.video_device, %struct.video_device* %78, i32 0, i32 0
  %80 = call i32 @device_remove_file(i32* %79, i32* @dev_attr_streaming)
  br label %81

81:                                               ; preds = %77, %24
  %82 = load %struct.video_device*, %struct.video_device** %3, align 8
  %83 = getelementptr inbounds %struct.video_device, %struct.video_device* %82, i32 0, i32 0
  %84 = call i32 @device_remove_file(i32* %83, i32* @dev_attr_in_use)
  br label %85

85:                                               ; preds = %81, %17
  %86 = load %struct.video_device*, %struct.video_device** %3, align 8
  %87 = getelementptr inbounds %struct.video_device, %struct.video_device* %86, i32 0, i32 0
  %88 = call i32 @device_remove_file(i32* %87, i32* @dev_attr_model)
  br label %89

89:                                               ; preds = %85, %10
  %90 = call i32 @PDEBUG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %60
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
