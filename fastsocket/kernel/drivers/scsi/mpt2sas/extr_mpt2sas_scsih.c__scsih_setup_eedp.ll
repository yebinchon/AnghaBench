; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_setup_eedp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_setup_eedp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SCSI_PROT_DIF_TYPE0 = common dso_local global i8 0, align 1
@SCSI_PROT_NORMAL = common dso_local global i8 0, align 1
@SCSI_PROT_READ_STRIP = common dso_local global i8 0, align 1
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_INSERT = common dso_local global i8 0, align 1
@MPI2_SCSIIO_EEDPFLAGS_INSERT_OP = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.TYPE_9__*)* @_scsih_setup_eedp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_setup_eedp(%struct.scsi_cmnd* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = call zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd* %8)
  store i8 %9, i8* %6, align 1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = call zeroext i8 @scsi_get_prot_type(%struct.scsi_cmnd* %10)
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @SCSI_PROT_DIF_TYPE0, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @SCSI_PROT_NORMAL, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  br label %77

24:                                               ; preds = %17
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @SCSI_PROT_READ_STRIP, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP, align 4
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @SCSI_PROT_WRITE_INSERT, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INSERT_OP, align 4
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %32
  br label %77

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  switch i32 %44, label %64 [
    i32 130, label %45
    i32 129, label %45
    i32 128, label %60
  ]

45:                                               ; preds = %42, %42
  %46 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG, align 4
  %47 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %54 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %53)
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  br label %64

60:                                               ; preds = %42
  %61 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %42, %60, %45
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %40, %23
  ret void
}

declare dso_local zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local zeroext i8 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
