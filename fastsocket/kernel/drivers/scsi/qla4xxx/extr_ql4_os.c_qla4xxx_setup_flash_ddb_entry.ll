; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_setup_flash_ddb_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_setup_flash_ddb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32 }
%struct.ddb_entry = type { i32, i32, %struct.TYPE_2__, i8*, i32, i32, i32, i32, i32, %struct.scsi_qla_host*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FLASH_DDB = common dso_local global i32 0, align 4
@INVALID_ENTRY = common dso_local global i32 0, align 4
@DDB_DS_NO_CONNECTION_ACTIVE = common dso_local global i32 0, align 4
@qla4xxx_unblock_flash_ddb = common dso_local global i32 0, align 4
@qla4xxx_flash_ddb_change = common dso_local global i32 0, align 4
@LOGIN_TOV = common dso_local global i32 0, align 4
@ql4xdisablesysfsboot = common dso_local global i64 0, align 8
@DF_BOOT_TGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.ddb_entry*, i32)* @qla4xxx_setup_flash_ddb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_setup_flash_ddb_entry(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @FLASH_DDB, align 4
  %9 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %10 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %9, i32 0, i32 12
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @INVALID_ENTRY, align 4
  %12 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DDB_DS_NO_CONNECTION_ACTIVE, align 4
  %15 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %16 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 8
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %18 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %19 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %18, i32 0, i32 9
  store %struct.scsi_qla_host* %17, %struct.scsi_qla_host** %19, align 8
  %20 = load i32, i32* @qla4xxx_unblock_flash_ddb, align 4
  %21 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @qla4xxx_flash_ddb_change, align 4
  %24 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %26, i32 0, i32 6
  %28 = load i32, i32* @INVALID_ENTRY, align 4
  %29 = call i32 @atomic_set(i32* %27, i32 %28)
  %30 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %31 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %30, i32 0, i32 5
  %32 = call i32 @atomic_set(i32* %31, i32 0)
  %33 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %33, i32 0, i32 4
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  %36 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le16_to_cpu(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LOGIN_TOV, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @LOGIN_TOV, align 4
  %48 = mul nsw i32 %47, 10
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  br label %54

52:                                               ; preds = %45, %3
  %53 = load i32, i32* @LOGIN_TOV, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %57 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %59 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %64 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @ql4xdisablesysfsboot, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %67
  %80 = load i32, i32* @DF_BOOT_TGT, align 4
  %81 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %82 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %81, i32 0, i32 1
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %73, %54
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
