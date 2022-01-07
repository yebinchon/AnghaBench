; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_ycbcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_ycbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_params_ycbcr = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ccdc_hw_params_ycbcr = common dso_local global %struct.ccdc_params_ycbcr zeroinitializer, align 8
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\0AStarting ccdc_config_ycbcr...\00", align 1
@CCDC_SYN_MODE_INPMOD_MASK = common dso_local global i32 0, align 4
@CCDC_SYN_MODE_INPMOD_SHIFT = common dso_local global i32 0, align 4
@CCDC_SYN_FLDMODE_MASK = common dso_local global i32 0, align 4
@CCDC_SYN_FLDMODE_SHIFT = common dso_local global i32 0, align 4
@CCDC_VDHDEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_WEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_DATA_PACK_ENABLE = common dso_local global i32 0, align 4
@CCDC_REC656IF_BT656_EN = common dso_local global i32 0, align 4
@CCDC_REC656IF = common dso_local global i32 0, align 4
@CCDC_SYN_MODE_VD_POL_NEGATIVE = common dso_local global i32 0, align 4
@CCDC_SYN_MODE_8BITS = common dso_local global i32 0, align 4
@CCDC_FID_POL_MASK = common dso_local global i32 0, align 4
@CCDC_FID_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_HD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_HD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_VD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_SYN_MODE = common dso_local global i32 0, align 4
@CCDC_CCDCFG_Y8POS_SHIFT = common dso_local global i32 0, align 4
@CCDC_LATCH_ON_VSYNC_DISABLE = common dso_local global i32 0, align 4
@CCDC_CCDCFG = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i64 0, align 8
@CCDC_SDOFST_FIELD_INTERLEAVED = common dso_local global i32 0, align 4
@CCDC_SDOFST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0AEnd of ccdc_config_ycbcr...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccdc_config_ycbcr() #0 {
  %1 = alloca %struct.ccdc_params_ycbcr*, align 8
  %2 = alloca i32, align 4
  store %struct.ccdc_params_ycbcr* @ccdc_hw_params_ycbcr, %struct.ccdc_params_ycbcr** %1, align 8
  %3 = load i32, i32* @dev, align 4
  %4 = call i32 @dev_dbg(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @ccdc_restore_defaults()
  %6 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %7 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CCDC_SYN_MODE_INPMOD_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @CCDC_SYN_MODE_INPMOD_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %14 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCDC_SYN_FLDMODE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CCDC_SYN_FLDMODE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %12, %19
  %21 = load i32, i32* @CCDC_VDHDEN_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CCDC_WEN_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CCDC_DATA_PACK_ENABLE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  %27 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %28 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %0
  %32 = load i32, i32* @CCDC_REC656IF_BT656_EN, align 4
  %33 = load i32, i32* @CCDC_REC656IF, align 4
  %34 = call i32 @regw(i32 %32, i32 %33)
  %35 = load i32, i32* @CCDC_SYN_MODE_VD_POL_NEGATIVE, align 4
  %36 = load i32, i32* @CCDC_SYN_MODE_8BITS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %2, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %0
  %41 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %42 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CCDC_FID_POL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @CCDC_FID_POL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %49 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CCDC_HD_POL_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @CCDC_HD_POL_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %47, %54
  %56 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %57 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CCDC_VD_POL_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @CCDC_VD_POL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %55, %62
  %64 = load i32, i32* %2, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %40, %31
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @CCDC_SYN_MODE, align 4
  %69 = call i32 @regw(i32 %67, i32 %68)
  %70 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %71 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %70, i32 0, i32 7
  %72 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %73 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ccdc_setwin(%struct.TYPE_2__* %71, i32 %74, i32 2)
  %76 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %77 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CCDC_CCDCFG_Y8POS_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CCDC_CCDCFG, align 4
  %84 = call i32 @regw(i32 %82, i32 %83)
  %85 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %86 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 2
  %90 = add nsw i32 %89, 31
  %91 = and i32 %90, -32
  %92 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %93 = call i32 @regw(i32 %91, i32 %92)
  %94 = load %struct.ccdc_params_ycbcr*, %struct.ccdc_params_ycbcr** %1, align 8
  %95 = getelementptr inbounds %struct.ccdc_params_ycbcr, %struct.ccdc_params_ycbcr* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %66
  %100 = load i32, i32* @CCDC_SDOFST_FIELD_INTERLEAVED, align 4
  %101 = load i32, i32* @CCDC_SDOFST, align 4
  %102 = call i32 @regw(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %66
  %104 = call i32 (...) @ccdc_sbl_reset()
  %105 = load i32, i32* @dev, align 4
  %106 = call i32 @dev_dbg(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %107 = call i32 (...) @ccdc_readregs()
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ccdc_restore_defaults(...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_setwin(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ccdc_sbl_reset(...) #1

declare dso_local i32 @ccdc_readregs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
