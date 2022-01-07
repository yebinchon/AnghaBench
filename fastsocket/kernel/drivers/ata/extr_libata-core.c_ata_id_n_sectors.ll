; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_id_n_sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_id_n_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_ID_LBA_CAPACITY_2 = common dso_local global i32 0, align 4
@ATA_ID_LBA_CAPACITY = common dso_local global i32 0, align 4
@ATA_ID_CUR_CYLS = common dso_local global i64 0, align 8
@ATA_ID_CUR_HEADS = common dso_local global i64 0, align 8
@ATA_ID_CUR_SECTORS = common dso_local global i64 0, align 8
@ATA_ID_CYLS = common dso_local global i64 0, align 8
@ATA_ID_HEADS = common dso_local global i64 0, align 8
@ATA_ID_SECTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ata_id_n_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_id_n_sectors(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @ata_id_has_lba(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @ata_id_has_lba48(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @ATA_ID_LBA_CAPACITY_2, align 4
  %14 = call i32 @ata_id_u64(i32* %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %7
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @ATA_ID_LBA_CAPACITY, align 4
  %18 = call i32 @ata_id_u32(i32* %16, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @ata_id_current_chs_valid(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* @ATA_ID_CUR_CYLS, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* @ATA_ID_CUR_HEADS, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %27, %31
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* @ATA_ID_CUR_SECTORS, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %19
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @ATA_ID_CYLS, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* @ATA_ID_HEADS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* @ATA_ID_SECTORS, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %47, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %38, %23, %15, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @ata_id_has_lba(i32*) #1

declare dso_local i64 @ata_id_has_lba48(i32*) #1

declare dso_local i32 @ata_id_u64(i32*, i32) #1

declare dso_local i32 @ata_id_u32(i32*, i32) #1

declare dso_local i64 @ata_id_current_chs_valid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
