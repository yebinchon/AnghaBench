; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_target_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_target_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, %struct.ipr_sata_port*, i32, i32 }
%struct.ipr_sata_port = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ipr_ioa_cfg = type { i32, i32, i32, i64 }

@IPR_ARRAY_VIRTUAL_BUS = common dso_local global i64 0, align 8
@IPR_VSET_VIRTUAL_BUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*)* @ipr_target_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_target_destroy(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.ipr_sata_port*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %6 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %6, i32 0, i32 1
  %8 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %7, align 8
  store %struct.ipr_sata_port* %8, %struct.ipr_sata_port** %3, align 8
  %9 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %9, i32 0, i32 3
  %11 = call %struct.Scsi_Host* @dev_to_shost(i32* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %15, %struct.ipr_ioa_cfg** %5, align 8
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %1
  %21 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %22 = call i32 @ipr_find_starget(%struct.scsi_target* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %20
  %25 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPR_ARRAY_VIRTUAL_BUS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clear_bit(i32 %33, i32 %36)
  br label %67

38:                                               ; preds = %24
  %39 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %40 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPR_VSET_VIRTUAL_BUS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %49 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clear_bit(i32 %47, i32 %50)
  br label %66

52:                                               ; preds = %38
  %53 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %62 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @clear_bit(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67, %20
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %71 = icmp ne %struct.ipr_sata_port* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %74 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %73, i32 0, i32 1
  store %struct.ipr_sata_port* null, %struct.ipr_sata_port** %74, align 8
  %75 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %76 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ata_sas_port_destroy(i32 %77)
  %79 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %80 = call i32 @kfree(%struct.ipr_sata_port* %79)
  br label %81

81:                                               ; preds = %72, %69
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local i32 @ipr_find_starget(%struct.scsi_target*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ata_sas_port_destroy(i32) #1

declare dso_local i32 @kfree(%struct.ipr_sata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
