; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_force_lock_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_force_lock_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Trying force recovery of the IDC lock.\0A\00", align 1
@QLA83XX_IDC_LOCK_RECOVERY = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@IDC_LOCK_RECOVERY_STAGE1 = common dso_local global i32 0, align 4
@IDC_LOCK_RECOVERY_STAGE2 = common dso_local global i32 0, align 4
@QLA83XX_DRIVER_UNLOCK = common dso_local global i32 0, align 4
@QLA83XX_DRIVER_LOCKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @qla83xx_force_lock_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla83xx_force_lock_recovery(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 3, i32* %6, align 4
  store i32 60, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %8, align 8
  %12 = load i32, i32* @ql_dbg_p3p, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @ql_dbg(i32 %12, %struct.TYPE_6__* %13, i32 45190, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load i32, i32* @QLA83XX_IDC_LOCK_RECOVERY, align 4
  %17 = call i32 @qla83xx_rd_reg(%struct.TYPE_6__* %15, i32 %16, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %28, i32* %2, align 4
  br label %107

29:                                               ; preds = %22
  %30 = load i32, i32* @IDC_LOCK_RECOVERY_STAGE1, align 4
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 2
  %35 = or i32 %30, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load i32, i32* @QLA83XX_IDC_LOCK_RECOVERY, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @qla83xx_wr_reg(%struct.TYPE_6__* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %107

44:                                               ; preds = %29
  %45 = call i32 @msleep(i32 200)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load i32, i32* @QLA83XX_IDC_LOCK_RECOVERY, align 4
  %48 = call i32 @qla83xx_rd_reg(%struct.TYPE_6__* %46, i32 %47, i32* %5)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %107

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 2
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %102

62:                                               ; preds = %53
  %63 = load i32, i32* @IDC_LOCK_RECOVERY_STAGE2, align 4
  %64 = load i32, i32* %6, align 4
  %65 = xor i32 %64, -1
  %66 = or i32 %63, %65
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = load i32, i32* @QLA83XX_IDC_LOCK_RECOVERY, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @qla83xx_wr_reg(%struct.TYPE_6__* %69, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %107

77:                                               ; preds = %62
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = load i32, i32* @QLA83XX_DRIVER_UNLOCK, align 4
  %80 = call i32 @qla83xx_rd_reg(%struct.TYPE_6__* %78, i32 %79, i32* %5)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %107

85:                                               ; preds = %77
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %88 = call i32 @qla83xx_wr_reg(%struct.TYPE_6__* %86, i32 %87, i32 255)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %107

93:                                               ; preds = %85
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = load i32, i32* @QLA83XX_IDC_LOCK_RECOVERY, align 4
  %96 = call i32 @qla83xx_wr_reg(%struct.TYPE_6__* %94, i32 %95, i32 0)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %107

101:                                              ; preds = %93
  br label %104

102:                                              ; preds = %53
  %103 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %103, i32* %2, align 4
  br label %107

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %102, %99, %91, %83, %75, %51, %42, %27, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
