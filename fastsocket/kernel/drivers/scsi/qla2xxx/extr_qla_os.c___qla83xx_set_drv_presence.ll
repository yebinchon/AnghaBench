; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c___qla83xx_set_drv_presence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c___qla83xx_set_drv_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA83XX_IDC_DRV_PRESENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qla83xx_set_drv_presence(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = load i32, i32* @QLA83XX_IDC_DRV_PRESENCE, align 4
  %12 = call i32 @qla83xx_rd_reg(%struct.TYPE_5__* %10, i32 %11, i32* %5)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @QLA_SUCCESS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = load i32, i32* @QLA83XX_IDC_DRV_PRESENCE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @qla83xx_wr_reg(%struct.TYPE_5__* %23, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
