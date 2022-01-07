; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_revalidate_quick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_revalidate_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64*, i32 }

@SATA_PMP_GSCR_PROD_ID = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to read PMP product ID (Emask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PMP product ID mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @sata_pmp_revalidate_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_revalidate_quick(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %6 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %7 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* @SATA_PMP_GSCR_PROD_ID, align 8
  %10 = call i32 @sata_pmp_read(i32 %8, i64 %9, i64* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %14, i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @SATA_PMP_GSCR_PROD_ID, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %30, i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @sata_pmp_read(i32, i64, i64*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
