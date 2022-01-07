; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_pci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2xxx_pci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.rsp_que**, i64 }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)* }
%struct.TYPE_10__ = type { i64 }
%struct.rsp_que = type { i32 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@ql_dbg_aer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Slot Reset.\0A\00", align 1
@pci_channel_io_normal = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't re-enable PCI device after reset.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"slot_reset return %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @qla2xxx_pci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_pci_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.rsp_que*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call %struct.TYPE_12__* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %5, align 8
  store i32 10, i32* %8, align 4
  %15 = load i32, i32* @ql_dbg_aer, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %15, %struct.TYPE_12__* %16, i32 36868, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @pci_channel_io_normal, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_restore_state(%struct.pci_dev* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_save_state(%struct.pci_dev* %23)
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @pci_enable_device_mem(%struct.pci_dev* %30)
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_enable_device(%struct.pci_dev* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @ql_log_warn, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @ql_log(i32 %39, %struct.TYPE_12__* %40, i32 36869, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %111

42:                                               ; preds = %35
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 2
  %45 = load %struct.rsp_que**, %struct.rsp_que*** %44, align 8
  %46 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %45, i64 0
  %47 = load %struct.rsp_que*, %struct.rsp_que** %46, align 8
  store %struct.rsp_que* %47, %struct.rsp_que** %6, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %49 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %50 = call i64 @qla2x00_request_irqs(%struct.qla_hw_data* %48, %struct.rsp_que* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %111

53:                                               ; preds = %42
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = call i64 %58(%struct.TYPE_12__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %111

63:                                               ; preds = %53
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %65 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call i64 @qla82xx_error_recovery(%struct.TYPE_12__* %68)
  %70 = load i64, i64* @QLA_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %73, i32* %3, align 4
  br label %111

74:                                               ; preds = %67
  br label %111

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %88, %75
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  %85 = icmp ne i32 %83, 0
  br label %86

86:                                               ; preds = %82, %76
  %87 = phi i1 [ false, %76 ], [ %85, %82 ]
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = call i32 @msleep(i32 1000)
  br label %76

90:                                               ; preds = %86
  %91 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = call i64 %99(%struct.TYPE_12__* %100)
  %102 = load i64, i64* @QLA_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %90
  %107 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %74, %72, %62, %52, %38
  %112 = load i32, i32* @ql_dbg_aer, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ql_dbg(i32 %112, %struct.TYPE_12__* %113, i32 36878, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_12__* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i64 @qla2x00_request_irqs(%struct.qla_hw_data*, %struct.rsp_que*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_error_recovery(%struct.TYPE_12__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
