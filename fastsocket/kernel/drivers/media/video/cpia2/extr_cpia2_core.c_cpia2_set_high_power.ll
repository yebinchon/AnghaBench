; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_high_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_high_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CPIA2_CMD_GET_SYSTEM_CTRL = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@CPIA2_SYSTEM_CONTROL_V2W_ERR = common dso_local global i32 0, align 4
@CPIA2_CMD_CLEAR_V2W_ERR = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CPIA2_CMD_SET_SYSTEM_CTRL = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_VP_SYSTEM_STATE = common dso_local global i32 0, align 4
@CPIA2_VP_SYSTEMSTATE_HK_ALIVE = common dso_local global i32 0, align 4
@LO_POWER_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Camera did not wake up\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"System now in high power state\0A\00", align 1
@HI_POWER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*)* @cpia2_set_high_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_set_high_power(%struct.camera_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %58, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 50
  br i1 %7, label %8, label %61

8:                                                ; preds = %5
  %9 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %10 = load i32, i32* @CPIA2_CMD_GET_SYSTEM_CTRL, align 4
  %11 = load i32, i32* @TRANSFER_READ, align 4
  %12 = call i32 @cpia2_do_command(%struct.camera_data* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %14 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPIA2_SYSTEM_CONTROL_V2W_ERR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  %22 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %23 = load i32, i32* @CPIA2_CMD_CLEAR_V2W_ERR, align 4
  %24 = load i32, i32* @TRANSFER_WRITE, align 4
  %25 = call i32 @cpia2_do_command(%struct.camera_data* %22, i32 %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %8
  %27 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %28 = load i32, i32* @CPIA2_CMD_SET_SYSTEM_CTRL, align 4
  %29 = load i32, i32* @TRANSFER_WRITE, align 4
  %30 = call i32 @cpia2_do_command(%struct.camera_data* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %32 = load i32, i32* @CPIA2_CMD_GET_VP_SYSTEM_STATE, align 4
  %33 = load i32, i32* @TRANSFER_READ, align 4
  %34 = call i32 @cpia2_do_command(%struct.camera_data* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %36 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CPIA2_VP_SYSTEMSTATE_HK_ALIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %61

44:                                               ; preds = %26
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 50
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* @LO_POWER_MODE, align 4
  %49 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %5

61:                                               ; preds = %43, %5
  %62 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @HI_POWER_MODE, align 4
  %64 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %47
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
