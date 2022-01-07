; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_upm.c_fun_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_upm.c_fun_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }
%struct.fsl_upm_nand = type { i32, i32*, i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@FSL_UPM_WAIT_RUN_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @fun_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fun_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.fsl_upm_nand*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  store %struct.nand_chip* %12, %struct.nand_chip** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = call %struct.fsl_upm_nand* @to_fsl_upm_nand(%struct.mtd_info* %13)
  store %struct.fsl_upm_nand* %14, %struct.fsl_upm_nand** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %17 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %3
  %22 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %23 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %22, i32 0, i32 4
  %24 = call i32 @fsl_upm_end_pattern(%struct.TYPE_4__* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NAND_CMD_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %101

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NAND_ALE, align 4
  %32 = load i32, i32* @NAND_CLE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %36 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NAND_ALE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %49 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %48, i32 0, i32 4
  %50 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %51 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fsl_upm_start_pattern(%struct.TYPE_4__* %49, i32 %52)
  br label %67

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @NAND_CLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %61 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %60, i32 0, i32 4
  %62 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %63 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @fsl_upm_start_pattern(%struct.TYPE_4__* %61, i32 %64)
  br label %66

66:                                               ; preds = %59, %54
  br label %67

67:                                               ; preds = %66, %47
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %71 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 32, %73
  %75 = shl i32 %69, %74
  %76 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %77 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %80 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %75, %83
  store i32 %84, i32* %9, align 4
  %85 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %86 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %85, i32 0, i32 4
  %87 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @fsl_upm_run_pattern(%struct.TYPE_4__* %86, i32 %89, i32 %90)
  %92 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %93 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FSL_UPM_WAIT_RUN_PATTERN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %68
  %99 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %8, align 8
  %100 = call i32 @fun_wait_rnb(%struct.fsl_upm_nand* %99)
  br label %101

101:                                              ; preds = %28, %98, %68
  ret void
}

declare dso_local %struct.fsl_upm_nand* @to_fsl_upm_nand(%struct.mtd_info*) #1

declare dso_local i32 @fsl_upm_end_pattern(%struct.TYPE_4__*) #1

declare dso_local i32 @fsl_upm_start_pattern(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fsl_upm_run_pattern(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @fun_wait_rnb(%struct.fsl_upm_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
