; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ata_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ata_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_7__, %struct.ipr_sata_port* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.ipr_sata_port = type { %struct.ipr_ioa_cfg*, %struct.ipr_resource_entry* }
%struct.ipr_ioa_cfg = type { %struct.TYPE_8__*, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipr_resource_entry = type { i8* }

@ENTER = common dso_local global i32 0, align 4
@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@ATA_DEV_NONE = common dso_local global i8* null, align 8
@ATA_DEV_UNKNOWN = common dso_local global i8* null, align 8
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @ipr_ata_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_ata_phy_reset(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipr_sata_port*, align 8
  %5 = alloca %struct.ipr_resource_entry*, align 8
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %9, align 8
  store %struct.ipr_sata_port* %10, %struct.ipr_sata_port** %4, align 8
  %11 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %11, i32 0, i32 1
  %13 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %12, align 8
  store %struct.ipr_resource_entry* %13, %struct.ipr_resource_entry** %5, align 8
  %14 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %14, i32 0, i32 0
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %15, align 8
  store %struct.ipr_ioa_cfg* %16, %struct.ipr_ioa_cfg** %6, align 8
  %17 = load i32, i32* @ENTER, align 4
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %19 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_lock_irqsave(i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %30, %1
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %32 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  %38 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %39 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %42 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @wait_event(i32 %40, i32 %46)
  %48 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %49 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_lock_irqsave(i32 %52, i64 %53)
  br label %25

55:                                               ; preds = %25
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %107

65:                                               ; preds = %55
  %66 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %67 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %68 = call i32 @ipr_device_reset(%struct.ipr_ioa_cfg* %66, %struct.ipr_resource_entry* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i8*, i8** @ATA_DEV_NONE, align 8
  %73 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i8* %72, i8** %78, align 8
  br label %107

79:                                               ; preds = %65
  %80 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %81 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %84 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i8* %82, i8** %88, align 8
  %89 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %90 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** @ATA_DEV_UNKNOWN, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %79
  %99 = load i8*, i8** @ATA_DEV_NONE, align 8
  %100 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %101 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* %99, i8** %105, align 8
  br label %106

106:                                              ; preds = %98, %79
  br label %107

107:                                              ; preds = %106, %71, %64
  %108 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %109 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32 %112, i64 %113)
  %115 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @ipr_device_reset(%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
