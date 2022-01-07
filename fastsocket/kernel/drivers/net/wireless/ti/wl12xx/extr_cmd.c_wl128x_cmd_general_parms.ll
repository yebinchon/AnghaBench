; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl128x_cmd_general_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl128x_cmd_general_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, i64, %struct.wl12xx_priv* }
%struct.wl12xx_priv = type { i32, i32 }
%struct.wl128x_general_parms_cmd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wl128x_ini_general_params = type { i64 }
%struct.wl128x_nvs_file = type { %struct.wl128x_ini_general_params }

@ENODEV = common dso_local global i32 0, align 4
@WL1271_INI_FEM_MODULE_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"FEM index from ini out of bounds\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_CMD_INI_FILE_GENERAL_PARAM = common dso_local global i32 0, align 4
@PLT_FEM_DETECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"CMD_INI_FILE_GENERAL_PARAM failed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"FEM index from FW out of bounds\00", align 1
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"FEM autodetect: %s, manufacturer: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"calibrator_fem_detect\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl128x_cmd_general_parms(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl128x_general_parms_cmd*, align 8
  %5 = alloca %struct.wl128x_ini_general_params*, align 8
  %6 = alloca %struct.wl12xx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.wl128x_nvs_file*
  %13 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %12, i32 0, i32 0
  store %struct.wl128x_ini_general_params* %13, %struct.wl128x_ini_general_params** %5, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 3
  %16 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %15, align 8
  store %struct.wl12xx_priv* %16, %struct.wl12xx_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %139

24:                                               ; preds = %1
  %25 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %5, align 8
  %26 = getelementptr inbounds %struct.wl128x_ini_general_params, %struct.wl128x_ini_general_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WL1271_INI_FEM_MODULE_COUNT, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i32 @wl1271_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %139

34:                                               ; preds = %24
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.wl128x_general_parms_cmd* @kzalloc(i32 32, i32 %35)
  store %struct.wl128x_general_parms_cmd* %36, %struct.wl128x_general_parms_cmd** %4, align 8
  %37 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %38 = icmp ne %struct.wl128x_general_parms_cmd* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %139

42:                                               ; preds = %34
  %43 = load i32, i32* @TEST_CMD_INI_FILE_GENERAL_PARAM, align 4
  %44 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %47, i32 0, i32 0
  %49 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %5, align 8
  %50 = call i32 @memcpy(%struct.TYPE_4__* %48, %struct.wl128x_ini_general_params* %49, i32 8)
  %51 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PLT_FEM_DETECT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %42
  %61 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %6, align 8
  %69 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %6, align 8
  %75 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %81 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @wl1271_cmd_test(%struct.wl1271* %80, %struct.wl128x_general_parms_cmd* %81, i32 32, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %67
  %87 = call i32 @wl1271_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %135

88:                                               ; preds = %67
  %89 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %90 = getelementptr inbounds %struct.wl128x_general_parms_cmd, %struct.wl128x_general_parms_cmd* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %5, align 8
  %94 = getelementptr inbounds %struct.wl128x_ini_general_params, %struct.wl128x_ini_general_params* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %5, align 8
  %96 = getelementptr inbounds %struct.wl128x_ini_general_params, %struct.wl128x_ini_general_params* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @WL1271_INI_FEM_MODULE_COUNT, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %135

104:                                              ; preds = %88
  %105 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PLT_FEM_DETECT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %5, align 8
  %112 = getelementptr inbounds %struct.wl128x_ini_general_params, %struct.wl128x_ini_general_params* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %115 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i32, i32* @DEBUG_CMD, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %129

121:                                              ; preds = %116
  %122 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %123 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PLT_FEM_DETECT, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  br label %129

129:                                              ; preds = %121, %120
  %130 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %120 ], [ %128, %121 ]
  %131 = load %struct.wl128x_ini_general_params*, %struct.wl128x_ini_general_params** %5, align 8
  %132 = getelementptr inbounds %struct.wl128x_ini_general_params, %struct.wl128x_ini_general_params* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @wl1271_debug(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %130, i64 %133)
  br label %135

135:                                              ; preds = %129, %100, %86
  %136 = load %struct.wl128x_general_parms_cmd*, %struct.wl128x_general_parms_cmd** %4, align 8
  %137 = call i32 @kfree(%struct.wl128x_general_parms_cmd* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %39, %30, %21
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local %struct.wl128x_general_parms_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.wl128x_ini_general_params*, i32) #1

declare dso_local i32 @wl1271_cmd_test(%struct.wl1271*, %struct.wl128x_general_parms_cmd*, i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.wl128x_general_parms_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
