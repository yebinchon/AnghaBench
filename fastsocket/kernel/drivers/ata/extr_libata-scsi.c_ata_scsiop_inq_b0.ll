; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_b0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsiop_inq_b0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_scsi_args = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_scsi_args*, i32*)* @ata_scsiop_inq_b0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsiop_inq_b0(%struct.ata_scsi_args* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_scsi_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_scsi_args* %0, %struct.ata_scsi_args** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 176, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  store i32 60, i32* %9, align 4
  %10 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %11 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ata_id_log2_per_physical_sector(i32 %12)
  %14 = shl i32 1, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 6
  %18 = call i32 @put_unaligned_be16(i32 %15, i32* %17)
  %19 = load %struct.ata_scsi_args*, %struct.ata_scsi_args** %3, align 8
  %20 = getelementptr inbounds %struct.ata_scsi_args, %struct.ata_scsi_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ata_id_has_trim(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 36
  %27 = call i32 @put_unaligned_be64(i32 4194240, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 28
  %30 = call i32 @put_unaligned_be32(i32 1, i32* %29)
  br label %31

31:                                               ; preds = %24, %2
  ret i32 0
}

declare dso_local i32 @ata_id_log2_per_physical_sector(i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i64 @ata_id_has_trim(i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
