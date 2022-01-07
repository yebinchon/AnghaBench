; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl128x_cmd_radio_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl128x_cmd_radio_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64 }
%struct.wl128x_nvs_file = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, %struct.wl128x_ini_general_params }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.wl128x_ini_general_params = type { i32 }
%struct.wl128x_radio_parms_cmd = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_CMD_INI_FILE_RADIO_PARAM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TEST_CMD_INI_FILE_RADIO_PARAM: \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"CMD_INI_FILE_RADIO_PARAM failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl128x_cmd_radio_parms(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl128x_nvs_file*, align 8
  %5 = alloca %struct.wl128x_radio_parms_cmd*, align 8
  %6 = alloca %struct.wl128x_ini_general_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.wl128x_nvs_file*
  store %struct.wl128x_nvs_file* %12, %struct.wl128x_nvs_file** %4, align 8
  %13 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %4, align 8
  %14 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %13, i32 0, i32 5
  store %struct.wl128x_ini_general_params* %14, %struct.wl128x_ini_general_params** %6, align 8
  %15 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.wl128x_radio_parms_cmd* @kzalloc(i32 24, i32 %23)
  store %struct.wl128x_radio_parms_cmd* %24, %struct.wl128x_radio_parms_cmd** %5, align 8
  %25 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %26 = icmp ne %struct.wl128x_radio_parms_cmd* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %88

30:                                               ; preds = %22
  %31 = load i32, i32* @TEST_CMD_INI_FILE_RADIO_PARAM, align 4
  %32 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, %struct.wl128x_radio_parms_cmd* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %6, align 8
  %36 = getelementptr inbounds %struct.wl128x_ini_general_params, %struct.wl128x_ini_general_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WL12XX_FEM_TO_NVS_ENTRY(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, %struct.wl128x_radio_parms_cmd* %39, i32 0, i32 4
  %41 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %4, align 8
  %42 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %41, i32 0, i32 4
  %43 = call i32 @memcpy(i32* %40, i32* %42, i32 4)
  %44 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, %struct.wl128x_radio_parms_cmd* %44, i32 0, i32 3
  %46 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %4, align 8
  %47 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @memcpy(i32* %45, i32* %52, i32 4)
  %54 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, %struct.wl128x_radio_parms_cmd* %54, i32 0, i32 2
  %56 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %4, align 8
  %57 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %56, i32 0, i32 2
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, %struct.wl128x_radio_parms_cmd* %59, i32 0, i32 1
  %61 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %4, align 8
  %62 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @memcpy(i32* %60, i32* %67, i32 4)
  %69 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %4, align 8
  %70 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.wl128x_radio_parms_cmd, %struct.wl128x_radio_parms_cmd* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @DEBUG_CMD, align 4
  %75 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %76 = call i32 @wl1271_dump(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.wl128x_radio_parms_cmd* %75, i32 24)
  %77 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %78 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %79 = call i32 @wl1271_cmd_test(%struct.wl1271* %77, %struct.wl128x_radio_parms_cmd* %78, i32 24, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %30
  %83 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %30
  %85 = load %struct.wl128x_radio_parms_cmd*, %struct.wl128x_radio_parms_cmd** %5, align 8
  %86 = call i32 @kfree(%struct.wl128x_radio_parms_cmd* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %27, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.wl128x_radio_parms_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @WL12XX_FEM_TO_NVS_ENTRY(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl128x_radio_parms_cmd*, i32) #1

declare dso_local i32 @wl1271_cmd_test(%struct.wl1271*, %struct.wl128x_radio_parms_cmd*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @kfree(%struct.wl128x_radio_parms_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
