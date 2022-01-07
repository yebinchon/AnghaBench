; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_clear_la.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_clear_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_vport = type { i64, i32, i32 }
%struct.Scsi_Host = type { i32* }

@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0320 CLEAR_LA mbxStatus error x%x hba state x%x\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@LPFC_HBA_READY = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HC_LAINT_ENA = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"0225 Device Discovery completes\0A\00", align 1
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_10__*)* @lpfc_mbx_cmpl_clear_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_clear_la(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_sli*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %5, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 4
  store %struct.lpfc_sli* %16, %struct.lpfc_sli** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %21
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %38 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %33
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %47 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %50 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %45
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 5633
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load i32, i32* @LOG_MBOX, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %122

79:                                               ; preds = %60, %2
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @LPFC_HBA_READY, align 4
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_irq(i32* %91)
  %93 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %94 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %95 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @readl(i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @HC_LAINT_ENA, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @writel(i32 %105, i32 %108)
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @readl(i32 %112)
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock_irq(i32* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mempool_free(%struct.TYPE_10__* %117, i32 %120)
  br label %175

122:                                              ; preds = %65
  %123 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %124 = load i32, i32* @KERN_INFO, align 4
  %125 = load i32, i32* @LOG_DISCOVERY, align 4
  %126 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @mempool_free(%struct.TYPE_10__* %127, i32 %130)
  %132 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %133 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @spin_lock_irq(i32* %134)
  %136 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %139 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %143 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @spin_unlock_irq(i32* %144)
  %146 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %147 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %146)
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 0
  %150 = call i32 @spin_lock_irq(i32* %149)
  %151 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %152 = load %struct.lpfc_sli*, %struct.lpfc_sli** %7, align 8
  %153 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @readl(i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* @HC_LAINT_ENA, align 4
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @writel(i32 %163, i32 %166)
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @readl(i32 %170)
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 0
  %174 = call i32 @spin_unlock_irq(i32* %173)
  br label %175

175:                                              ; preds = %122, %89
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
