; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_prepare_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_prepare_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i64, i64, i64 }
%struct.mmc_data = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BOTH_DIR = common dso_local global i32 0, align 4
@XFER_WRITE = common dso_local global i32 0, align 4
@XFER_READ = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_TXFIFOHALF = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_RXFIFOHALF = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_RXFIFOLAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3cmci_host*, %struct.mmc_data*)* @s3cmci_prepare_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_prepare_pio(%struct.s3cmci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MMC_DATA_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BOTH_DIR, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @BOTH_DIR, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %26 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %28 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @XFER_WRITE, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @XFER_READ, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %38 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %43 = call i32 @do_pio_write(%struct.s3cmci_host* %42)
  %44 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %45 = load i32, i32* @S3C2410_SDIIMSK_TXFIFOHALF, align 4
  %46 = call i32 @enable_imask(%struct.s3cmci_host* %44, i32 %45)
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %49 = load i32, i32* @S3C2410_SDIIMSK_RXFIFOHALF, align 4
  %50 = load i32, i32* @S3C2410_SDIIMSK_RXFIFOLAST, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @enable_imask(%struct.s3cmci_host* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_pio_write(%struct.s3cmci_host*) #1

declare dso_local i32 @enable_imask(%struct.s3cmci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
