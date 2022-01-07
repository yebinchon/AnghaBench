; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { i32 }

@__const.ata_scsiop_inq_std.versions = private unnamed_addr constant [5 x i32] [i32 96, i32 3, i32 32, i32 2, i32 96], align 16
@TYPE_DISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ATA     \00", align 1
@ATA_ID_PROD = common dso_local global i32 0, align 4
@ATA_ID_FW_REV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"n/a \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_inq_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_inq_std(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([5 x i32]* @__const.ata_scsiop_inq_std.versions to i8*), i64 20, i1 false)
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %9 = load i32, i32* @TYPE_DISK, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 5, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 2, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 91, i32* %13, align 4
  %14 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %16 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ata_id_removeable(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 128
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %27 = call i32 (i32*, ...) @memcpy(i32* %25, i32* %26, i64 20)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = call i32 (i32*, ...) @memcpy(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %31 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %32 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16
  %36 = load i32, i32* @ATA_ID_PROD, align 4
  %37 = call i32 @ata_id_string(i32 %33, i32* %35, i32 %36, i32 16)
  %38 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %39 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 32
  %43 = load i32, i32* @ATA_ID_FW_REV, align 4
  %44 = call i32 @ata_id_string(i32 %40, i32* %42, i32 %43, i32 4)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 32
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %24
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 32
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %24
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 32
  %57 = call i32 (i32*, ...) @memcpy(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 59
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %62 = call i32 (i32*, ...) @memcpy(i32* %60, i32* %61, i64 20)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VPRINTK(i8*) #2

declare dso_local i64 @ata_id_removeable(i32) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @ata_id_string(i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
