; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_set_lowlight_boost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_set_lowlight_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cpia2_command = type { i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32* }

@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i64 0, align 8
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CAMERAACCESS_TYPE_BLOCK = common dso_local global i32 0, align 4
@CAMERAACCESS_VP = common dso_local global i32 0, align 4
@CPIA2_VP_RAM_ADDR_H = common dso_local global i32 0, align 4
@CPIA2_VP_RAM_DATA = common dso_local global i32 0, align 4
@CPIA2_CMD_REHASH_VP4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @set_lowlight_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lowlight_boost(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca %struct.cpia2_command, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %4 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %5 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DEVICE_STV_672, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %13 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %1
  br label %70

20:                                               ; preds = %11
  %21 = load i32, i32* @TRANSFER_WRITE, align 4
  %22 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @CAMERAACCESS_TYPE_BLOCK, align 4
  %24 = load i32, i32* @CAMERAACCESS_VP, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 1
  store i32 3, i32* %27, align 4
  %28 = load i32, i32* @CPIA2_VP_RAM_ADDR_H, align 4
  %29 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 89, i32* %37, align 4
  %38 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 0, i32* %41, align 4
  %42 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %43 = call i32 @cpia2_send_command(%struct.camera_data* %42, %struct.cpia2_command* %3)
  %44 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %20
  %51 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 2, i32* %54, align 4
  br label %60

55:                                               ; preds = %20
  %56 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 6, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @CPIA2_VP_RAM_DATA, align 4
  %62 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.cpia2_command, %struct.cpia2_command* %3, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %65 = call i32 @cpia2_send_command(%struct.camera_data* %64, %struct.cpia2_command* %3)
  %66 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %67 = load i32, i32* @CPIA2_CMD_REHASH_VP4, align 4
  %68 = load i32, i32* @TRANSFER_WRITE, align 4
  %69 = call i32 @cpia2_do_command(%struct.camera_data* %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %60, %19
  ret void
}

declare dso_local i32 @cpia2_send_command(%struct.camera_data*, %struct.cpia2_command*) #1

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
