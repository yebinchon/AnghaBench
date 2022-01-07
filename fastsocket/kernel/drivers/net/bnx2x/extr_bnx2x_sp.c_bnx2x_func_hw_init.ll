; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { %struct.bnx2x_func_sp_obj*, %struct.TYPE_4__ }
%struct.bnx2x_func_sp_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, i32)*, %struct.bnx2x_func_sp_drv_ops* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_func_sp_drv_ops = type { i32 (%struct.bnx2x.1*)*, i32 (%struct.bnx2x.2*)*, i32 (%struct.bnx2x.3*)* }
%struct.bnx2x.1 = type opaque
%struct.bnx2x.2 = type opaque
%struct.bnx2x.3 = type opaque
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"function %d  load_code %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error loading firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown load_code (0x%x) from MCP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_F_CMD_HW_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_hw_init(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_func_state_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %8 = alloca %struct.bnx2x_func_sp_drv_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %5, align 8
  %10 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %15, i32 0, i32 0
  %17 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %16, align 8
  store %struct.bnx2x_func_sp_obj* %17, %struct.bnx2x_func_sp_obj** %7, align 8
  %18 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %18, i32 0, i32 1
  %20 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %19, align 8
  store %struct.bnx2x_func_sp_drv_ops* %20, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @BNX2X_MSG_SP, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DP(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x_func_sp_drv_ops, %struct.bnx2x_func_sp_drv_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.bnx2x.1*)*, i32 (%struct.bnx2x.1*)** %27, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = bitcast %struct.bnx2x* %29 to %struct.bnx2x.1*
  %31 = call i32 %28(%struct.bnx2x.1* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %107

36:                                               ; preds = %2
  %37 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %38 = getelementptr inbounds %struct.bnx2x_func_sp_drv_ops, %struct.bnx2x_func_sp_drv_ops* %37, i32 0, i32 1
  %39 = load i32 (%struct.bnx2x.2*)*, i32 (%struct.bnx2x.2*)** %38, align 8
  %40 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %41 = bitcast %struct.bnx2x* %40 to %struct.bnx2x.2*
  %42 = call i32 %39(%struct.bnx2x.2* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %87

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %81 [
    i32 130, label %49
    i32 131, label %57
    i32 128, label %65
    i32 129, label %73
  ]

49:                                               ; preds = %47
  %50 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %51 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %52 = call i32 @bnx2x_func_init_cmn_chip(%struct.bnx2x* %50, %struct.bnx2x_func_sp_drv_ops* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %87

56:                                               ; preds = %49
  br label %86

57:                                               ; preds = %47
  %58 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %59 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %60 = call i32 @bnx2x_func_init_cmn(%struct.bnx2x* %58, %struct.bnx2x_func_sp_drv_ops* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %87

64:                                               ; preds = %57
  br label %86

65:                                               ; preds = %47
  %66 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %67 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %68 = call i32 @bnx2x_func_init_port(%struct.bnx2x* %66, %struct.bnx2x_func_sp_drv_ops* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %87

72:                                               ; preds = %65
  br label %86

73:                                               ; preds = %47
  %74 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %75 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %76 = call i32 @bnx2x_func_init_func(%struct.bnx2x* %74, %struct.bnx2x_func_sp_drv_ops* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %87

80:                                               ; preds = %73
  br label %86

81:                                               ; preds = %47
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %81, %80, %72, %64, %56
  br label %87

87:                                               ; preds = %86, %79, %71, %63, %55, %45
  %88 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %8, align 8
  %89 = getelementptr inbounds %struct.bnx2x_func_sp_drv_ops, %struct.bnx2x_func_sp_drv_ops* %88, i32 0, i32 2
  %90 = load i32 (%struct.bnx2x.3*)*, i32 (%struct.bnx2x.3*)** %89, align 8
  %91 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %92 = bitcast %struct.bnx2x* %91 to %struct.bnx2x.3*
  %93 = call i32 %90(%struct.bnx2x.3* %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %7, align 8
  %98 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %97, i32 0, i32 0
  %99 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, i32)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, i32)** %98, align 8
  %100 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %101 = bitcast %struct.bnx2x* %100 to %struct.bnx2x.0*
  %102 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %7, align 8
  %103 = load i32, i32* @BNX2X_F_CMD_HW_INIT, align 4
  %104 = call i32 %99(%struct.bnx2x.0* %101, %struct.bnx2x_func_sp_obj* %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %87
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %34
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_func_init_cmn_chip(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

declare dso_local i32 @bnx2x_func_init_cmn(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

declare dso_local i32 @bnx2x_func_init_port(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

declare dso_local i32 @bnx2x_func_init_func(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
