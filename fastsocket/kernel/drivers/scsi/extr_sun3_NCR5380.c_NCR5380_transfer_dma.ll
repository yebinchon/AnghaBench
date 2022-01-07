; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_transfer_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_NCR5380.c_NCR5380_transfer_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@sun3_dma_setup_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"scsi%d: transfer_dma without setup!\0A\00", align 1
@HOSTNO = common dso_local global i32 0, align 4
@hostdata = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"scsi%d: initializing DMA for %s, %d bytes %s %p\0A\00", align 1
@SR_IO = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@TARGET_COMMAND_REG = common dso_local global i32 0, align 4
@RESET_PARITY_INTERRUPT_REG = common dso_local global i32 0, align 4
@INITIATOR_COMMAND_REG = common dso_local global i32 0, align 4
@MODE_REG = common dso_local global i32 0, align 4
@MR_DMA_MODE = common dso_local global i32 0, align 4
@MR_ENABLE_EOP_INTR = common dso_local global i32 0, align 4
@START_DMA_INITIATOR_RECEIVE_REG = common dso_local global i32 0, align 4
@ICR_ASSERT_DATA = common dso_local global i32 0, align 4
@START_DMA_SEND_REG = common dso_local global i32 0, align 4
@sun3_dma_active = common dso_local global i32 0, align 4
@CSR_DMA_ENABLE = common dso_local global i32 0, align 4
@dregs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i32*, i8**)* @NCR5380_transfer_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR5380_transfer_dma(%struct.Scsi_Host* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %13 = call i32 @SETUP_HOSTDATA(%struct.Scsi_Host* %12)
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i32, i32* @sun3_dma_setup_done, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @HOSTNO, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hostdata, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @HOSTNO, align 4
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @SR_IO, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %37 = load i32, i32* %9, align 4
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @SR_IO, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %46 = load i8**, i8*** %8, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @DMA_PRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %36, i32 %37, i8* %45, i8* %47)
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @local_irq_save(i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i8**, i8*** %8, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @sun3scsi_dma_start(i32 %51, i8* %53)
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @SR_IO, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %24
  %62 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %63 = call i32 @NCR5380_write(i32 %62, i32 1)
  %64 = load i32, i32* @RESET_PARITY_INTERRUPT_REG, align 4
  %65 = call i32 @NCR5380_read(i32 %64)
  %66 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %67 = call i32 @NCR5380_write(i32 %66, i32 0)
  %68 = load i32, i32* @MODE_REG, align 4
  %69 = load i32, i32* @MODE_REG, align 4
  %70 = call i32 @NCR5380_read(i32 %69)
  %71 = load i32, i32* @MR_DMA_MODE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MR_ENABLE_EOP_INTR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @NCR5380_write(i32 %68, i32 %74)
  %76 = load i32, i32* @START_DMA_INITIATOR_RECEIVE_REG, align 4
  %77 = call i32 @NCR5380_write(i32 %76, i32 0)
  br label %96

78:                                               ; preds = %24
  %79 = load i32, i32* @TARGET_COMMAND_REG, align 4
  %80 = call i32 @NCR5380_write(i32 %79, i32 0)
  %81 = load i32, i32* @RESET_PARITY_INTERRUPT_REG, align 4
  %82 = call i32 @NCR5380_read(i32 %81)
  %83 = load i32, i32* @INITIATOR_COMMAND_REG, align 4
  %84 = load i32, i32* @ICR_ASSERT_DATA, align 4
  %85 = call i32 @NCR5380_write(i32 %83, i32 %84)
  %86 = load i32, i32* @MODE_REG, align 4
  %87 = load i32, i32* @MODE_REG, align 4
  %88 = call i32 @NCR5380_read(i32 %87)
  %89 = load i32, i32* @MR_DMA_MODE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @MR_ENABLE_EOP_INTR, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @NCR5380_write(i32 %86, i32 %92)
  %94 = load i32, i32* @START_DMA_SEND_REG, align 4
  %95 = call i32 @NCR5380_write(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %78, %61
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @local_irq_restore(i64 %97)
  store i32 1, i32* @sun3_dma_active, align 4
  ret i32 0
}

declare dso_local i32 @SETUP_HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @DMA_PRINTK(i8*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sun3scsi_dma_start(i32, i8*) #1

declare dso_local i32 @NCR5380_write(i32, i32) #1

declare dso_local i32 @NCR5380_read(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
