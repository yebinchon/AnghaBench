; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_rbuf_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_rbuf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@ata_scsi_rbuf_lock = common dso_local global i32 0, align 4
@ata_scsi_rbuf = common dso_local global i8* null, align 8
@ATA_SCSI_RBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_cmnd*, i32, i64*)* @ata_scsi_rbuf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ata_scsi_rbuf_get(%struct.scsi_cmnd* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @ata_scsi_rbuf_lock, i64 %8)
  %10 = load i8*, i8** @ata_scsi_rbuf, align 8
  %11 = load i32, i32* @ATA_SCSI_RBUF_SIZE, align 4
  %12 = call i32 @memset(i8* %10, i32 0, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = call i32 @scsi_sglist(%struct.scsi_cmnd* %16)
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %18)
  %20 = load i8*, i8** @ata_scsi_rbuf, align 8
  %21 = load i32, i32* @ATA_SCSI_RBUF_SIZE, align 4
  %22 = call i32 @sg_copy_to_buffer(i32 %17, i32 %19, i8* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %3
  %24 = load i8*, i8** @ata_scsi_rbuf, align 8
  ret i8* %24
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
