; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_setup_eedp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_setup_eedp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@SCSI_PROT_DIF_TYPE0 = common dso_local global i8 0, align 1
@SCSI_PROT_NORMAL = common dso_local global i8 0, align 1
@SCSI_PROT_READ_STRIP = common dso_local global i8 0, align 1
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_INSERT = common dso_local global i8 0, align 1
@MPI2_SCSIIO_EEDPFLAGS_INSERT_OP = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*, %struct.TYPE_10__*)* @_scsih_setup_eedp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_setup_eedp(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = call zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd* %11)
  store i8 %12, i8* %8, align 1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = call zeroext i8 @scsi_get_prot_type(%struct.scsi_cmnd* %13)
  store i8 %14, i8* %9, align 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = bitcast %struct.TYPE_10__* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load i8, i8* %9, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @SCSI_PROT_DIF_TYPE0, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @SCSI_PROT_NORMAL, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %3
  br label %82

29:                                               ; preds = %22
  %30 = load i8, i8* %8, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @SCSI_PROT_READ_STRIP, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP, align 4
  store i32 %36, i32* %7, align 4
  br label %47

37:                                               ; preds = %29
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @SCSI_PROT_WRITE_INSERT, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INSERT_OP, align 4
  store i32 %44, i32* %7, align 4
  br label %46

45:                                               ; preds = %37
  br label %82

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i8, i8* %9, align 1
  %49 = zext i8 %48 to i32
  switch i32 %49, label %69 [
    i32 130, label %50
    i32 129, label %50
    i32 128, label %65
  ]

50:                                               ; preds = %47, %47
  %51 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG, align 4
  %52 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %59 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %58)
  %60 = call i32 @cpu_to_be32(i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  br label %69

65:                                               ; preds = %47
  %66 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %47, %65, %50
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %69, %45, %28
  ret void
}

declare dso_local zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local zeroext i8 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
