; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.AdapterControlBlock = type { %struct.CommandControlBlock**, i32, i32, i32 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ACB_F_SCSISTOPADAPTER = common dso_local global i32 0, align 4
@ACB_F_IOP_INITED = common dso_local global i32 0, align 4
@ARCMSR_MAX_OUTSTANDING_CMD = common dso_local global i32 0, align 4
@ARCMSR_MAX_FREECCB_NUM = common dso_local global i32 0, align 4
@ARCMSR_CCB_START = common dso_local global i64 0, align 8
@ARCMSR_CCB_ABORTED = common dso_local global i64 0, align 8
@DID_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @arcmsr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CommandControlBlock*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %13, %struct.AdapterControlBlock** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %15 = call i32 @arcmsr_free_sysfs_attr(%struct.AdapterControlBlock* %14)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call i32 @scsi_remove_host(%struct.Scsi_Host* %16)
  %18 = call i32 (...) @flush_scheduled_work()
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 3
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %23 = call i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock* %22)
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %25 = call i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock* %24)
  %26 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %27 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %26)
  %28 = load i32, i32* @ACB_F_SCSISTOPADAPTER, align 4
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %30 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @ACB_F_IOP_INITED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %36 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %53, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ARCMSR_MAX_OUTSTANDING_CMD, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %45 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %51 = call i32 @arcmsr_interrupt(%struct.AdapterControlBlock* %50)
  %52 = call i32 @msleep(i32 25)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %39

56:                                               ; preds = %48, %39
  %57 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %58 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %57, i32 0, i32 1
  %59 = call i64 @atomic_read(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %56
  %62 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %63 = call i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock* %62)
  %64 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %65 = call i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %96, %61
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ARCMSR_MAX_FREECCB_NUM, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %72 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %71, i32 0, i32 0
  %73 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %73, i64 %75
  %77 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %76, align 8
  store %struct.CommandControlBlock* %77, %struct.CommandControlBlock** %7, align 8
  %78 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %79 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ARCMSR_CCB_START, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %70
  %84 = load i64, i64* @ARCMSR_CCB_ABORTED, align 8
  %85 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %86 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @DID_ABORT, align 4
  %88 = shl i32 %87, 16
  %89 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %90 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %94 = call i32 @arcmsr_ccb_complete(%struct.CommandControlBlock* %93)
  br label %95

95:                                               ; preds = %83, %70
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %66

99:                                               ; preds = %66
  br label %100

100:                                              ; preds = %99, %56
  %101 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %105 = call i32 @free_irq(i32 %103, %struct.AdapterControlBlock* %104)
  %106 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %107 = call i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock* %106)
  %108 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %109 = call i32 @arcmsr_free_hbb_mu(%struct.AdapterControlBlock* %108)
  %110 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %111 = call i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock* %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %113 = call i32 @pci_release_regions(%struct.pci_dev* %112)
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %115 = call i32 @scsi_host_put(%struct.Scsi_Host* %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %117 = call i32 @pci_disable_device(%struct.pci_dev* %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %119 = call i32 @pci_set_drvdata(%struct.pci_dev* %118, i32* null)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @arcmsr_free_sysfs_attr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @arcmsr_interrupt(%struct.AdapterControlBlock*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_ccb_complete(%struct.CommandControlBlock*) #1

declare dso_local i32 @free_irq(i32, %struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_hbb_mu(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
