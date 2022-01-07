; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_problem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_problem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHAIN_CHECK = common dso_local global i32 0, align 4
@SCHN_STAT_PROT_CHECK = common dso_local global i32 0, align 4
@SCHN_STAT_PROG_CHECK = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CGENCHK\00", align 1
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@LCS_SENSE_BYTE_1 = common dso_local global i64 0, align 8
@LCS_SENSE_RESETTING_EVENT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"REVIND\00", align 1
@LCS_SENSE_BYTE_0 = common dso_local global i64 0, align 8
@LCS_SENSE_CMD_REJECT = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CMDREJ\00", align 1
@LCS_SENSE_BYTE_2 = common dso_local global i64 0, align 8
@LCS_SENSE_BYTE_3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"ZEROSEN\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DGENCHK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, %struct.irb*)* @lcs_get_problem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_get_problem(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  %9 = load %struct.irb*, %struct.irb** %5, align 8
  %10 = getelementptr inbounds %struct.irb, %struct.irb* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %8, align 8
  %13 = load %struct.irb*, %struct.irb** %5, align 8
  %14 = getelementptr inbounds %struct.irb, %struct.irb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.irb*, %struct.irb** %5, align 8
  %19 = getelementptr inbounds %struct.irb, %struct.irb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %25 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SCHN_STAT_CHAIN_CHECK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SCHN_STAT_PROT_CHECK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SCHN_STAT_PROG_CHECK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %23, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @trace, align 4
  %39 = call i32 @LCS_DBF_TEXT(i32 2, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* @LCS_SENSE_BYTE_1, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @LCS_SENSE_RESETTING_EVENT, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @trace, align 4
  %57 = call i32 @LCS_DBF_TEXT(i32 2, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

58:                                               ; preds = %45
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* @LCS_SENSE_BYTE_0, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @LCS_SENSE_CMD_REJECT, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @trace, align 4
  %70 = call i32 @LCS_DBF_TEXT(i32 2, i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %102

71:                                               ; preds = %58
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* @LCS_SENSE_BYTE_0, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* @LCS_SENSE_BYTE_1, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* @LCS_SENSE_BYTE_2, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8
  %91 = load i64, i64* @LCS_SENSE_BYTE_3, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @trace, align 4
  %97 = call i32 @LCS_DBF_TEXT(i32 2, i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %102

98:                                               ; preds = %89, %83, %77, %71
  %99 = load i32, i32* @trace, align 4
  %100 = call i32 @LCS_DBF_TEXT(i32 2, i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

101:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %98, %95, %68, %55, %37
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
