; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_83.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { i32 }

@ATA_ID_SERNO_LEN = common dso_local global i32 0, align 4
@ATA_ID_SERNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ATA     \00", align 1
@ATA_ID_PROD = common dso_local global i32 0, align 4
@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_inq_83 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_inq_83(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 68, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 131, i32* %8, align 4
  store i32 4, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 0
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  store i32 2, i32* %13, align 4
  %14 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %14, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %23 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i32, i32* @ATA_ID_SERNO, align 4
  %31 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %32 = call i32 @ata_id_string(i32 %24, i8* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 2, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 1, i32* %45, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 68, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %6, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @memcpy(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %61 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* @ATA_ID_PROD, align 4
  %69 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %70 = call i32 @ata_id_string(i32 %62, i8* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %75 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* @ATA_ID_SERNO, align 4
  %83 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %84 = call i32 @ata_id_string(i32 %76, i8* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 4
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  store i32 %89, i32* %91, align 4
  ret i32 0
}

declare dso_local i32 @ata_id_string(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
