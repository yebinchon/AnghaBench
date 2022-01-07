; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_dumpinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_dumpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { %struct.pci_dev*, %struct.dc390_dcb* }
%struct.pci_dev = type { i32 }
%struct.dc390_dcb = type { %struct.dc390_srb* }
%struct.dc390_srb = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"DC390: SRB: Xferred %08lx, Remain %08lx, State %08x, Phase %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"DC390: AdpaterStatus: %02x, SRB Status %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"DC390: Status of last IRQ (DMA/SC/Int/IRQ): %08x\0A\00", align 1
@dc390_laststatus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"DC390: Register dump: SCSI block:\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"DC390: XferCnt  Cmd Stat IntS IRQS FFIS Ctl1 Ctl2 Ctl3 Ctl4\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"DC390:  %06x   %02x   %02x   %02x\00", align 1
@CtcReg_Low = common dso_local global i32 0, align 4
@CtcReg_Mid = common dso_local global i32 0, align 4
@CtcReg_High = common dso_local global i32 0, align 4
@ScsiCmd = common dso_local global i32 0, align 4
@Scsi_Status = common dso_local global i32 0, align 4
@Intern_State = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"   %02x   %02x   %02x   %02x   %02x   %02x\0A\00", align 1
@INT_Status = common dso_local global i32 0, align 4
@Current_Fifo = common dso_local global i32 0, align 4
@CtrlReg1 = common dso_local global i32 0, align 4
@CtrlReg2 = common dso_local global i32 0, align 4
@CtrlReg3 = common dso_local global i32 0, align 4
@CtrlReg4 = common dso_local global i32 0, align 4
@DMA_ScsiBusCtrl = common dso_local global i32 0, align 4
@WRT_ERASE_DMA_STAT = common dso_local global i32 0, align 4
@EN_INT_ON_PCI_ABORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"DC390: FIFO:\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@ScsiFifo = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"DC390: Register dump: DMA engine:\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"DC390: Cmd   STrCnt    SBusA    WrkBC    WrkAC Stat SBusCtrl\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"DC390:  %02x %08x %08x %08x %08x   %02x %08x\0A\00", align 1
@DMA_Cmd = common dso_local global i32 0, align 4
@DMA_XferCnt = common dso_local global i32 0, align 4
@DMA_XferAddr = common dso_local global i32 0, align 4
@DMA_Wk_ByteCntr = common dso_local global i32 0, align 4
@DMA_Wk_AddrCntr = common dso_local global i32 0, align 4
@DMA_Status = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"DC390: Register dump: PCI Status: %04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"DC390: In case of driver trouble read Documentation/scsi/tmscsim.txt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*, %struct.dc390_dcb*, %struct.dc390_srb*)* @dc390_dumpinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_dumpinfo(%struct.dc390_acb* %0, %struct.dc390_dcb* %1, %struct.dc390_srb* %2) #0 {
  %4 = alloca %struct.dc390_acb*, align 8
  %5 = alloca %struct.dc390_dcb*, align 8
  %6 = alloca %struct.dc390_srb*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.dc390_acb* %0, %struct.dc390_acb** %4, align 8
  store %struct.dc390_dcb* %1, %struct.dc390_dcb** %5, align 8
  store %struct.dc390_srb* %2, %struct.dc390_srb** %6, align 8
  %9 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %10 = icmp ne %struct.dc390_dcb* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %13 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %12, i32 0, i32 1
  %14 = load %struct.dc390_dcb*, %struct.dc390_dcb** %13, align 8
  store %struct.dc390_dcb* %14, %struct.dc390_dcb** %5, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %17 = icmp ne %struct.dc390_srb* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %20 = icmp ne %struct.dc390_dcb* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %23 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %22, i32 0, i32 0
  %24 = load %struct.dc390_srb*, %struct.dc390_srb** %23, align 8
  store %struct.dc390_srb* %24, %struct.dc390_srb** %6, align 8
  br label %25

25:                                               ; preds = %21, %18, %15
  %26 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %27 = icmp ne %struct.dc390_srb* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %30 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %33 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %36 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %39 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %43 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dc390_srb*, %struct.dc390_srb** %6, align 8
  %46 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %28, %25
  %50 = load i32, i32* @dc390_laststatus, align 4
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @CtcReg_Low, align 4
  %55 = call i32 @DC390_read8(i32 %54)
  %56 = load i32, i32* @CtcReg_Mid, align 4
  %57 = call i32 @DC390_read8(i32 %56)
  %58 = shl i32 %57, 8
  %59 = add nsw i32 %55, %58
  %60 = load i32, i32* @CtcReg_High, align 4
  %61 = call i32 @DC390_read8(i32 %60)
  %62 = shl i32 %61, 16
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* @ScsiCmd, align 4
  %65 = call i32 @DC390_read8(i32 %64)
  %66 = load i32, i32* @Scsi_Status, align 4
  %67 = call i32 @DC390_read8(i32 %66)
  %68 = load i32, i32* @Intern_State, align 4
  %69 = call i32 @DC390_read8(i32 %68)
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %65, i32 %67, i32 %69)
  %71 = load i32, i32* @INT_Status, align 4
  %72 = call i32 @DC390_read8(i32 %71)
  %73 = load i32, i32* @Current_Fifo, align 4
  %74 = call i32 @DC390_read8(i32 %73)
  %75 = load i32, i32* @CtrlReg1, align 4
  %76 = call i32 @DC390_read8(i32 %75)
  %77 = load i32, i32* @CtrlReg2, align 4
  %78 = call i32 @DC390_read8(i32 %77)
  %79 = load i32, i32* @CtrlReg3, align 4
  %80 = call i32 @DC390_read8(i32 %79)
  %81 = load i32, i32* @CtrlReg4, align 4
  %82 = call i32 @DC390_read8(i32 %81)
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82)
  %84 = load i32, i32* @DMA_ScsiBusCtrl, align 4
  %85 = load i32, i32* @WRT_ERASE_DMA_STAT, align 4
  %86 = load i32, i32* @EN_INT_ON_PCI_ABORT, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @DC390_write32(i32 %84, i32 %87)
  %89 = load i32, i32* @Current_Fifo, align 4
  %90 = call i32 @DC390_read8(i32 %89)
  %91 = and i32 %90, 31
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %49
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %100, %93
  %96 = load i32, i32* @Current_Fifo, align 4
  %97 = call i32 @DC390_read8(i32 %96)
  %98 = and i32 %97, 31
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @ScsiFifo, align 4
  %102 = call i32 @DC390_read8(i32 %101)
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  br label %95

104:                                              ; preds = %95
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %49
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %109 = load i32, i32* @DMA_Cmd, align 4
  %110 = call i32 @DC390_read8(i32 %109)
  %111 = load i32, i32* @DMA_XferCnt, align 4
  %112 = call i32 @DC390_read32(i32 %111)
  %113 = load i32, i32* @DMA_XferAddr, align 4
  %114 = call i32 @DC390_read32(i32 %113)
  %115 = load i32, i32* @DMA_Wk_ByteCntr, align 4
  %116 = call i32 @DC390_read32(i32 %115)
  %117 = load i32, i32* @DMA_Wk_AddrCntr, align 4
  %118 = call i32 @DC390_read32(i32 %117)
  %119 = load i32, i32* @DMA_Status, align 4
  %120 = call i32 @DC390_read8(i32 %119)
  %121 = load i32, i32* @DMA_ScsiBusCtrl, align 4
  %122 = call i32 @DC390_read32(i32 %121)
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %110, i32 %112, i32 %114, i32 %116, i32 %118, i32 %120, i32 %122)
  %124 = load i32, i32* @DMA_ScsiBusCtrl, align 4
  %125 = load i32, i32* @EN_INT_ON_PCI_ABORT, align 4
  %126 = call i32 @DC390_write32(i32 %124, i32 %125)
  %127 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %128 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %127, i32 0, i32 0
  %129 = load %struct.pci_dev*, %struct.pci_dev** %128, align 8
  store %struct.pci_dev* %129, %struct.pci_dev** %7, align 8
  %130 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %131 = load i32, i32* @PCI_STATUS, align 4
  %132 = call i32 @pci_read_config_word(%struct.pci_dev* %130, i32 %131, i32* %8)
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %133)
  %135 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @DC390_read8(i32) #1

declare dso_local i32 @DC390_write32(i32, i32) #1

declare dso_local i32 @DC390_read32(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
