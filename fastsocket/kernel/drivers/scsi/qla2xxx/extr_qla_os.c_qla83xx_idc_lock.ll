; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@BIT_6 = common dso_local global i32 0, align 4
@QLA83XX_DRIVER_LOCK = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA83XX_DRIVER_LOCKID = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to acquire IDC lock, acquired by %d, retrying...\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"IDC Lock recovery FAILED.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to acquire IDC lock. retrying...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_idc_lock(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 15
  %11 = load i32, i32* @BIT_6, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %8, align 8
  br label %16

16:                                               ; preds = %44, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load i32, i32* @QLA83XX_DRIVER_LOCK, align 4
  %19 = call i64 @qla83xx_rd_reg(%struct.TYPE_9__* %17, i32 %18, i64* %6)
  %20 = load i64, i64* @QLA_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qla83xx_wr_reg(%struct.TYPE_9__* %26, i32 %27, i32 %30)
  br label %51

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %35 = call i64 @qla83xx_rd_reg(%struct.TYPE_9__* %33, i32 %34, i64* %7)
  %36 = load i32, i32* @ql_dbg_p3p, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_dbg(i32 %36, %struct.TYPE_9__* %37, i32 45155, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i64 @qla83xx_idc_lock_recovery(%struct.TYPE_9__* %40)
  %42 = load i64, i64* @QLA_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 (...) @qla83xx_wait_logic()
  br label %16

46:                                               ; preds = %32
  %47 = load i32, i32* @ql_log_warn, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i32 @ql_log(i32 %47, %struct.TYPE_9__* %48, i32 45173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51, %16
  br label %74

53:                                               ; preds = %66
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @qla83xx_access_control(%struct.TYPE_9__* %54, i32 %55, i32 0, i32 0, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* @ql_dbg_p3p, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_dbg(i32 %59, %struct.TYPE_9__* %60, i32 45170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i64 @qla83xx_idc_lock_recovery(%struct.TYPE_9__* %62)
  %64 = load i64, i64* @QLA_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 (...) @qla83xx_wait_logic()
  br label %53

68:                                               ; preds = %58
  %69 = load i32, i32* @ql_log_warn, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = call i32 @ql_log(i32 %69, %struct.TYPE_9__* %70, i32 45174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %52
  ret void
}

declare dso_local i64 @qla83xx_rd_reg(%struct.TYPE_9__*, i32, i64*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @qla83xx_idc_lock_recovery(%struct.TYPE_9__*) #1

declare dso_local i32 @qla83xx_wait_logic(...) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @qla83xx_access_control(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
