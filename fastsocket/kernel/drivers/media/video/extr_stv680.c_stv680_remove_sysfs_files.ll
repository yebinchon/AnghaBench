; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_remove_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_remove_sysfs_files.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_device*)* @stv680_remove_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv680_remove_sysfs_files(%struct.video_device* %0) #0 {
  %2 = alloca %struct.video_device*, align 8
  store %struct.video_device* %0, %struct.video_device** %2, align 8
  %3 = load %struct.video_device*, %struct.video_device** %2, align 8
  %4 = getelementptr inbounds %struct.video_device, %struct.video_device* %3, i32 0, i32 0
  %5 = call i32 @device_remove_file(i32* %4, i32* @dev_attr_model)
  %6 = load %struct.video_device*, %struct.video_device** %2, align 8
  %7 = getelementptr inbounds %struct.video_device, %struct.video_device* %6, i32 0, i32 0
  %8 = call i32 @device_remove_file(i32* %7, i32* @dev_attr_in_use)
  %9 = load %struct.video_device*, %struct.video_device** %2, align 8
  %10 = getelementptr inbounds %struct.video_device, %struct.video_device* %9, i32 0, i32 0
  %11 = call i32 @device_remove_file(i32* %10, i32* @dev_attr_streaming)
  %12 = load %struct.video_device*, %struct.video_device** %2, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_attr_palette)
  %15 = load %struct.video_device*, %struct.video_device** %2, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(i32* %16, i32* @dev_attr_frames_total)
  %18 = load %struct.video_device*, %struct.video_device** %2, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 0
  %20 = call i32 @device_remove_file(i32* %19, i32* @dev_attr_frames_read)
  %21 = load %struct.video_device*, %struct.video_device** %2, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @dev_attr_packets_dropped)
  %24 = load %struct.video_device*, %struct.video_device** %2, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(i32* %25, i32* @dev_attr_decoding_errors)
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
