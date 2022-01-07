; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_set_default_calibrations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_set_default_calibrations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_set_calib_default_cmd = type { i32, i8*, i8* }

@wkp_calib_default_data = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Need to enlarge cmd_raw to %d\0A\00", align 1
@SET_CALIB_DEFAULT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_set_default_calibrations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_default_calibrations(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca %struct.iwl_set_calib_default_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %10 = bitcast i32* %9 to %struct.iwl_set_calib_default_cmd*
  store %struct.iwl_set_calib_default_cmd* %10, %struct.iwl_set_calib_default_cmd** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %93, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %96

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %93

25:                                               ; preds = %16
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 64)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.iwl_set_calib_default_cmd*, %struct.iwl_set_calib_default_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_set_calib_default_cmd, %struct.iwl_set_calib_default_cmd* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.iwl_set_calib_default_cmd*, %struct.iwl_set_calib_default_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_set_calib_default_cmd, %struct.iwl_set_calib_default_cmd* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %51, 64
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @WARN_ONCE(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %25
  br label %96

58:                                               ; preds = %25
  %59 = load %struct.iwl_set_calib_default_cmd*, %struct.iwl_set_calib_default_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.iwl_set_calib_default_cmd, %struct.iwl_set_calib_default_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32 %61, i32 %67, i32 %73)
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %76 = load i32, i32* @SET_CALIB_DEFAULT_CMD, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wkp_calib_default_data, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 24, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.iwl_set_calib_default_cmd*, %struct.iwl_set_calib_default_cmd** %5, align 8
  %87 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %75, i32 %76, i32 0, i32 %85, %struct.iwl_set_calib_default_cmd* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %58
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %97

92:                                               ; preds = %58
  br label %93

93:                                               ; preds = %92, %24
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %11

96:                                               ; preds = %57, %11
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_set_calib_default_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
