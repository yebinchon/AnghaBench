; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }

@BIT_7 = common dso_local global i32 0, align 4
@QLA83XX_DRIVER_LOCKID = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA83XX_DRIVER_UNLOCK = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to release IDC lock, retyring=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to read drv-lockid, retyring=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_idc_unlock(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 15
  %11 = load i32, i32* @BIT_7, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %8, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %51, %38, %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %19 = call i64 @qla83xx_rd_reg(%struct.TYPE_7__* %17, i32 %18, i64* %7)
  %20 = load i64, i64* @QLA_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32, i32* @QLA83XX_DRIVER_UNLOCK, align 4
  %31 = call i64 @qla83xx_rd_reg(%struct.TYPE_7__* %29, i32 %30, i64* %7)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %34 = call i32 @qla83xx_wr_reg(%struct.TYPE_7__* %32, i32 %33, i32 255)
  br label %47

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = call i32 (...) @qla83xx_wait_logic()
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @ql_dbg_p3p, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ql_dbg(i32 %42, %struct.TYPE_7__* %43, i32 45156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %16

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %28
  br label %60

48:                                               ; preds = %16
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = call i32 (...) @qla83xx_wait_logic()
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @ql_dbg_p3p, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ql_dbg(i32 %55, %struct.TYPE_7__* %56, i32 45157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %16

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %47
  br label %79

61:                                               ; preds = %69
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @qla83xx_access_control(%struct.TYPE_7__* %62, i32 %63, i32 0, i32 0, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = call i32 (...) @qla83xx_wait_logic()
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @ql_dbg_p3p, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ql_dbg(i32 %73, %struct.TYPE_7__* %74, i32 45158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %61

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %60
  ret void
}

declare dso_local i64 @qla83xx_rd_reg(%struct.TYPE_7__*, i32, i64*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @qla83xx_wait_logic(...) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i64 @qla83xx_access_control(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
