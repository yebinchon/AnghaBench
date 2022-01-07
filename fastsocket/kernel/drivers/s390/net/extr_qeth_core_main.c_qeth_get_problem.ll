; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_problem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_problem.c"
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
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CGENCHK\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s check on device dstat=x%x, cstat=x%x\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"qeth: irb \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@SENSE_RESETTING_EVENT_BYTE = common dso_local global i64 0, align 8
@SENSE_RESETTING_EVENT_FLAG = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"REVIND\00", align 1
@SENSE_COMMAND_REJECT_BYTE = common dso_local global i64 0, align 8
@SENSE_COMMAND_REJECT_FLAG = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"CMDREJi\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AFFE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ZEROSEN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"DGENCHK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, %struct.irb*)* @qeth_get_problem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_get_problem(%struct.ccw_device* %0, %struct.irb* %1) #0 {
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
  br i1 %36, label %37, label %53

37:                                               ; preds = %2
  %38 = load i32, i32* @TRACE, align 4
  %39 = call i32 @QETH_DBF_TEXT(i32 %38, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 0
  %42 = call i32 @dev_warn(i32* %41, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 0
  %45 = call i32 @dev_name(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @KERN_WARNING, align 4
  %50 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %51 = load %struct.irb*, %struct.irb** %5, align 8
  %52 = call i32 @print_hex_dump(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 16, i32 1, %struct.irb* %51, i32 64, i32 1)
  store i32 1, i32* %3, align 4
  br label %126

53:                                               ; preds = %2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %125

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* @SENSE_RESETTING_EVENT_BYTE, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @SENSE_RESETTING_EVENT_FLAG, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @TRACE, align 4
  %70 = call i32 @QETH_DBF_TEXT(i32 %69, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %126

71:                                               ; preds = %58
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* @SENSE_COMMAND_REJECT_BYTE, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @SENSE_COMMAND_REJECT_FLAG, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @TRACE, align 4
  %83 = call i32 @QETH_DBF_TEXT(i32 %82, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %126

84:                                               ; preds = %71
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 175
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 254
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @TRACE, align 4
  %98 = call i32 @QETH_DBF_TEXT(i32 %97, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %126

99:                                               ; preds = %90, %84
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @TRACE, align 4
  %121 = call i32 @QETH_DBF_TEXT(i32 %120, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %126

122:                                              ; preds = %114, %109, %104, %99
  %123 = load i32, i32* @TRACE, align 4
  %124 = call i32 @QETH_DBF_TEXT(i32 %123, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %126

125:                                              ; preds = %53
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %122, %119, %96, %81, %68, %37
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.irb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
