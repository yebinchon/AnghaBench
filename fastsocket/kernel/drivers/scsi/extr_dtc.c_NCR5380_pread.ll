; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dtc.c_NCR5380_pread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dtc.c_NCR5380_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }

@RESET_PARITY_INTERRUPT_REG = common dso_local global i32 0, align 4
@MODE_REG = common dso_local global i32 0, align 4
@MR_ENABLE_EOP_INTR = common dso_local global i32 0, align 4
@MR_DMA_MODE = common dso_local global i32 0, align 4
@SCSI_IRQ_NONE = common dso_local global i64 0, align 8
@DTC_CONTROL_REG = common dso_local global i32 0, align 4
@CSR_DIR_READ = common dso_local global i32 0, align 4
@CSR_INT_BASE = common dso_local global i32 0, align 4
@DTC_BLK_CNT = common dso_local global i32 0, align 4
@CSR_HOST_BUF_NOT_RDY = common dso_local global i32 0, align 4
@base = common dso_local global i64 0, align 8
@DTC_DATA_BUF = common dso_local global i64 0, align 8
@D_CR_ACCESS = common dso_local global i32 0, align 4
@dtc_maxi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i32)* @NCR5380_pread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_pread(%struct.Scsi_Host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = call i32 (...) @NCR5380_local_declare()
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call i32 @NCR5380_setup(%struct.Scsi_Host* %11)
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @RESET_PARITY_INTERRUPT_REG, align 4
  %14 = call i32 @NCR5380_read(i32 %13)
  %15 = load i32, i32* @MODE_REG, align 4
  %16 = load i32, i32* @MR_ENABLE_EOP_INTR, align 4
  %17 = load i32, i32* @MR_DMA_MODE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @NCR5380_write(i32 %15, i32 %18)
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCSI_IRQ_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @DTC_CONTROL_REG, align 4
  %27 = load i32, i32* @CSR_DIR_READ, align 4
  %28 = call i32 @NCR5380_write(i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %3
  %30 = load i32, i32* @DTC_CONTROL_REG, align 4
  %31 = load i32, i32* @CSR_DIR_READ, align 4
  %32 = load i32, i32* @CSR_INT_BASE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @NCR5380_write(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* @DTC_BLK_CNT, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 7
  %39 = call i32 @NCR5380_write(i32 %36, i32 %38)
  %40 = call i32 @rtrc(i32 1)
  br label %41

41:                                               ; preds = %55, %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = call i32 @rtrc(i32 2)
  br label %46

46:                                               ; preds = %52, %44
  %47 = load i32, i32* @DTC_CONTROL_REG, align 4
  %48 = call i32 @NCR5380_read(i32 %47)
  %49 = load i32, i32* @CSR_HOST_BUF_NOT_RDY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %46

55:                                               ; preds = %46
  %56 = call i32 @rtrc(i32 3)
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* @base, align 8
  %59 = load i64, i64* @DTC_DATA_BUF, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @memcpy_fromio(i8* %57, i64 %60, i32 128)
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 128
  store i8* %63, i8** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 128
  store i32 %65, i32* %6, align 4
  %66 = call i32 @rtrc(i32 7)
  br label %41

67:                                               ; preds = %41
  %68 = call i32 @rtrc(i32 4)
  br label %69

69:                                               ; preds = %76, %67
  %70 = load i32, i32* @DTC_CONTROL_REG, align 4
  %71 = call i32 @NCR5380_read(i32 %70)
  %72 = load i32, i32* @D_CR_ACCESS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %69

79:                                               ; preds = %69
  %80 = load i32, i32* @MODE_REG, align 4
  %81 = call i32 @NCR5380_write(i32 %80, i32 0)
  %82 = call i32 @rtrc(i32 0)
  %83 = load i32, i32* @RESET_PARITY_INTERRUPT_REG, align 4
  %84 = call i32 @NCR5380_read(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @dtc_maxi, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* @dtc_maxi, align 4
  br label %90

90:                                               ; preds = %88, %79
  ret i32 0
}

declare dso_local i32 @NCR5380_local_declare(...) #1

declare dso_local i32 @NCR5380_setup(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local i32 @rtrc(i32) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
