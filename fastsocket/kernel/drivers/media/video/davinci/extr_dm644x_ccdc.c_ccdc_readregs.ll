; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_readregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_readregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCDC_ALAW = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0AReading 0x%x to ALAW...\0A\00", align 1
@CCDC_CLAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0AReading 0x%x to CLAMP...\0A\00", align 1
@CCDC_DCSUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AReading 0x%x to DCSUB...\0A\00", align 1
@CCDC_BLKCMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"\0AReading 0x%x to BLKCMP...\0A\00", align 1
@CCDC_FPC_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\0AReading 0x%x to FPC_ADDR...\0A\00", align 1
@CCDC_FPC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AReading 0x%x to FPC...\0A\00", align 1
@CCDC_FMTCFG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"\0AReading 0x%x to FMTCFG...\0A\00", align 1
@CCDC_COLPTN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"\0AReading 0x%x to COLPTN...\0A\00", align 1
@CCDC_FMT_HORZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"\0AReading 0x%x to FMT_HORZ...\0A\00", align 1
@CCDC_FMT_VERT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"\0AReading 0x%x to FMT_VERT...\0A\00", align 1
@CCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"\0AReading 0x%x to HSIZE_OFF...\0A\00", align 1
@CCDC_SDOFST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"\0AReading 0x%x to SDOFST...\0A\00", align 1
@CCDC_VP_OUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"\0AReading 0x%x to VP_OUT...\0A\00", align 1
@CCDC_SYN_MODE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"\0AReading 0x%x to SYN_MODE...\0A\00", align 1
@CCDC_HORZ_INFO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"\0AReading 0x%x to HORZ_INFO...\0A\00", align 1
@CCDC_VERT_START = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"\0AReading 0x%x to VERT_START...\0A\00", align 1
@CCDC_VERT_LINES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"\0AReading 0x%x to VERT_LINES...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ccdc_readregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_readregs() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @CCDC_ALAW, align 4
  %3 = call i32 @regr(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @dev, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @dev_notice(i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @CCDC_CLAMP, align 4
  %8 = call i32 @regr(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @dev, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @dev_notice(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @CCDC_DCSUB, align 4
  %13 = call i32 @regr(i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @dev, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @dev_notice(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @CCDC_BLKCMP, align 4
  %18 = call i32 @regr(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @dev, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @dev_notice(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @CCDC_FPC_ADDR, align 4
  %23 = call i32 @regr(i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @dev, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @dev_notice(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @CCDC_FPC, align 4
  %28 = call i32 @regr(i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @dev, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @dev_notice(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @CCDC_FMTCFG, align 4
  %33 = call i32 @regr(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @dev, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @dev_notice(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @CCDC_COLPTN, align 4
  %38 = call i32 @regr(i32 %37)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @dev, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @dev_notice(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @CCDC_FMT_HORZ, align 4
  %43 = call i32 @regr(i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @dev, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @dev_notice(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @CCDC_FMT_VERT, align 4
  %48 = call i32 @regr(i32 %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* @dev, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @dev_notice(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %53 = call i32 @regr(i32 %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @dev, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @dev_notice(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @CCDC_SDOFST, align 4
  %58 = call i32 @regr(i32 %57)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @dev, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @dev_notice(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @CCDC_VP_OUT, align 4
  %63 = call i32 @regr(i32 %62)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @dev, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @dev_notice(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @CCDC_SYN_MODE, align 4
  %68 = call i32 @regr(i32 %67)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* @dev, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @dev_notice(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @CCDC_HORZ_INFO, align 4
  %73 = call i32 @regr(i32 %72)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* @dev, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @dev_notice(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @CCDC_VERT_START, align 4
  %78 = call i32 @regr(i32 %77)
  store i32 %78, i32* %1, align 4
  %79 = load i32, i32* @dev, align 4
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @dev_notice(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @CCDC_VERT_LINES, align 4
  %83 = call i32 @regr(i32 %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @dev, align 4
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @dev_notice(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %85)
  ret void
}

declare dso_local i32 @regr(i32) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
