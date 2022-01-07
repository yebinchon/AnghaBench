; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dtc.c_NCR5380_pwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dtc.c_NCR5380_pwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }

@RESET_PARITY_INTERRUPT_REG = common dso_local global i32 0, align 4
@MODE_REG = common dso_local global i32 0, align 4
@MR_ENABLE_EOP_INTR = common dso_local global i32 0, align 4
@MR_DMA_MODE = common dso_local global i32 0, align 4
@SCSI_IRQ_NONE = common dso_local global i64 0, align 8
@DTC_CONTROL_REG = common dso_local global i32 0, align 4
@CSR_5380_INTR = common dso_local global i32 0, align 4
@DTC_BLK_CNT = common dso_local global i32 0, align 4
@CSR_HOST_BUF_NOT_RDY = common dso_local global i32 0, align 4
@base = common dso_local global i64 0, align 8
@DTC_DATA_BUF = common dso_local global i64 0, align 8
@D_CR_ACCESS = common dso_local global i32 0, align 4
@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@TCR_LAST_BYTE_SENT = common dso_local global i32 0, align 4
@dtc_wmaxi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i32)* @NCR5380_pwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_pwrite(%struct.Scsi_Host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @NCR5380_local_declare()
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call i32 @NCR5380_setup(%struct.Scsi_Host* %9)
  %11 = load i32, i32* @RESET_PARITY_INTERRUPT_REG, align 4
  %12 = call i32 @NCR5380_read(i32 %11)
  %13 = load i32, i32* @MODE_REG, align 4
  %14 = load i32, i32* @MR_ENABLE_EOP_INTR, align 4
  %15 = load i32, i32* @MR_DMA_MODE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @NCR5380_write(i32 %13, i32 %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCSI_IRQ_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @DTC_CONTROL_REG, align 4
  %25 = call i32 @NCR5380_write(i32 %24, i32 0)
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @DTC_CONTROL_REG, align 4
  %28 = load i32, i32* @CSR_5380_INTR, align 4
  %29 = call i32 @NCR5380_write(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @DTC_BLK_CNT, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 7
  %34 = call i32 @NCR5380_write(i32 %31, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %60, %30
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = call i32 @rtrc(i32 5)
  br label %40

40:                                               ; preds = %46, %38
  %41 = load i32, i32* @DTC_CONTROL_REG, align 4
  %42 = call i32 @NCR5380_read(i32 %41)
  %43 = load i32, i32* @CSR_HOST_BUF_NOT_RDY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %40

49:                                               ; preds = %40
  %50 = call i32 @rtrc(i32 3)
  %51 = load i64, i64* @base, align 8
  %52 = load i64, i64* @DTC_DATA_BUF, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @memcpy_toio(i64 %53, i8* %54, i32 128)
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 128
  store i8* %57, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 128
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %35

63:                                               ; preds = %35
  %64 = call i32 @rtrc(i32 4)
  br label %65

65:                                               ; preds = %72, %63
  %66 = load i32, i32* @DTC_CONTROL_REG, align 4
  %67 = call i32 @NCR5380_read(i32 %66)
  %68 = load i32, i32* @D_CR_ACCESS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %65

75:                                               ; preds = %65
  %76 = call i32 @rtrc(i32 6)
  br label %77

77:                                               ; preds = %84, %75
  %78 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %79 = call i32 @NCR5380_read(i32 %78)
  %80 = load i32, i32* @TCR_LAST_BYTE_SENT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %77

87:                                               ; preds = %77
  %88 = call i32 @rtrc(i32 7)
  %89 = load i32, i32* @MODE_REG, align 4
  %90 = call i32 @NCR5380_write(i32 %89, i32 0)
  %91 = call i32 @rtrc(i32 0)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @dtc_wmaxi, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* @dtc_wmaxi, align 4
  br label %97

97:                                               ; preds = %95, %87
  ret i32 0
}

declare dso_local i32 @NCR5380_local_declare(...) #1

declare dso_local i32 @NCR5380_setup(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local i32 @rtrc(i32) #1

declare dso_local i32 @memcpy_toio(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
