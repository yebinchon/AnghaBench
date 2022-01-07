; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_restore_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_restore_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0Astarting ccdc_restore_defaults...\00", align 1
@CCDC_REG_LAST = common dso_local global i32 0, align 4
@MODESET_DEFAULT = common dso_local global i32 0, align 4
@MODESET = common dso_local global i32 0, align 4
@CULH_DEFAULT = common dso_local global i32 0, align 4
@CULH = common dso_local global i32 0, align 4
@CULV_DEFAULT = common dso_local global i32 0, align 4
@CULV = common dso_local global i32 0, align 4
@GAIN_DEFAULT = common dso_local global i8* null, align 8
@ccdc_hw_params_raw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OUTCLIP_DEFAULT = common dso_local global i32 0, align 4
@OUTCLIP = common dso_local global i32 0, align 4
@LSCCFG2_DEFAULT = common dso_local global i32 0, align 4
@LSCCFG2 = common dso_local global i32 0, align 4
@VPSS_CCDCIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\0Acouldn't select ccdc input source\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@VPSS_CCDC_CLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\0Acouldn't enable ccdc clock\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\0AEnd of ccdc_restore_defaults...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ccdc_restore_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_restore_defaults() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @dev, align 4
  %4 = call i32 @dev_dbg(i32 %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CCDC_REG_LAST, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @regw(i32 0, i32 %10)
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 4
  store i32 %14, i32* %2, align 4
  br label %5

15:                                               ; preds = %5
  %16 = load i32, i32* @MODESET_DEFAULT, align 4
  %17 = load i32, i32* @MODESET, align 4
  %18 = call i32 @regw(i32 %16, i32 %17)
  %19 = load i32, i32* @CULH_DEFAULT, align 4
  %20 = load i32, i32* @CULH, align 4
  %21 = call i32 @regw(i32 %19, i32 %20)
  %22 = load i32, i32* @CULV_DEFAULT, align 4
  %23 = load i32, i32* @CULV, align 4
  %24 = call i32 @regw(i32 %22, i32 %23)
  %25 = load i8*, i8** @GAIN_DEFAULT, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_hw_params_raw, i32 0, i32 0, i32 3), align 8
  %26 = load i8*, i8** @GAIN_DEFAULT, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_hw_params_raw, i32 0, i32 0, i32 2), align 8
  %27 = load i8*, i8** @GAIN_DEFAULT, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_hw_params_raw, i32 0, i32 0, i32 1), align 8
  %28 = load i8*, i8** @GAIN_DEFAULT, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ccdc_hw_params_raw, i32 0, i32 0, i32 0), align 8
  %29 = call i32 (...) @ccdc_config_gain_offset()
  %30 = load i32, i32* @OUTCLIP_DEFAULT, align 4
  %31 = load i32, i32* @OUTCLIP, align 4
  %32 = call i32 @regw(i32 %30, i32 %31)
  %33 = load i32, i32* @LSCCFG2_DEFAULT, align 4
  %34 = load i32, i32* @LSCCFG2, align 4
  %35 = call i32 @regw(i32 %33, i32 %34)
  %36 = load i32, i32* @VPSS_CCDCIN, align 4
  %37 = call i64 @vpss_select_ccdc_source(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %15
  %40 = load i32, i32* @dev, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %1, align 4
  br label %56

44:                                               ; preds = %15
  %45 = load i32, i32* @VPSS_CCDC_CLOCK, align 4
  %46 = call i64 @vpss_enable_clock(i32 %45, i32 1)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @dev, align 4
  %50 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %1, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @dev, align 4
  %55 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %53, %48, %39
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_config_gain_offset(...) #1

declare dso_local i64 @vpss_select_ccdc_source(i32) #1

declare dso_local i64 @vpss_enable_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
