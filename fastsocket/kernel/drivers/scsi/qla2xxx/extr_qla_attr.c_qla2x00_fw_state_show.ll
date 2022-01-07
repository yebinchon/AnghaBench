; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_fw_state_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_fw_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ISP reset active.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qla2x00_fw_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fw_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @class_to_shost(%struct.device* %12)
  %14 = call %struct.TYPE_9__* @shost_priv(i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call i64 @IS_QLAFX00(%struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @qlafx00_fw_state_show(%struct.device* %22, %struct.device_attribute* %23, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = call i64 @qla2x00_reset_active(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @ql_log_warn, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = call i32 @ql_log(i32 %35, %struct.TYPE_9__* %36, i32 28796, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %51

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %49 = call i32 @qla2x00_get_firmware_state(%struct.TYPE_9__* %47, i32* %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %38
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @QLA_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %57 = call i32 @memset(i32* %56, i32 -1, i32 20)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  %70 = load i32, i32* %69, align 16
  %71 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64, i32 %66, i32 %68, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %58, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_9__* @shost_priv(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i64 @IS_QLAFX00(%struct.TYPE_10__*) #1

declare dso_local i32 @qlafx00_fw_state_show(%struct.device*, %struct.device_attribute*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @qla2x00_reset_active(%struct.TYPE_9__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @qla2x00_get_firmware_state(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
