; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_board_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_board_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mscp = type { i32, i32, i64, i32*, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64*, i32, %struct.mscp*, %struct.mscp* }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@CP_TAIL_SIZE = common dso_local global i64 0, align 8
@OP_HOST_ADAPTER = common dso_local global i32 0, align 4
@DTD_IN = common dso_local global i32 0, align 4
@HA_CMD_INQUIRY = common dso_local global i32 0, align 4
@sh = common dso_local global %struct.TYPE_3__** null, align 8
@MAXLOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: board_inquiry, adapter busy.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IGNORE = common dso_local global i64 0, align 8
@CMD_CLR_INTR = common dso_local global i32 0, align 4
@REG_SYS_INTR = common dso_local global i64 0, align 8
@REG_OGM = common dso_local global i64 0, align 8
@CMD_OGM_INTR = common dso_local global i32 0, align 4
@REG_LCL_INTR = common dso_local global i64 0, align 8
@driver_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: board_inquiry, err 0x%x.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @board_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @board_inquiry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mscp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_4__* @HD(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_4__* @HD(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load %struct.mscp*, %struct.mscp** %14, align 8
  %16 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %17 = call i8* @pci_map_single(i32 %11, %struct.mscp* %15, i32 8, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.TYPE_4__* @HD(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.mscp*, %struct.mscp** %21, align 8
  %23 = getelementptr inbounds %struct.mscp, %struct.mscp* %22, i64 0
  store %struct.mscp* %23, %struct.mscp** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.TYPE_4__* @HD(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mscp*, %struct.mscp** %4, align 8
  %29 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %30 = call i8* @pci_map_single(i32 %27, %struct.mscp* %28, i32 48, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.mscp*, %struct.mscp** %4, align 8
  %33 = getelementptr inbounds %struct.mscp, %struct.mscp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mscp*, %struct.mscp** %4, align 8
  %35 = load i64, i64* @CP_TAIL_SIZE, align 8
  %36 = sub i64 48, %35
  %37 = call i32 @memset(%struct.mscp* %34, i32 0, i64 %36)
  %38 = load i32, i32* @OP_HOST_ADAPTER, align 4
  %39 = load %struct.mscp*, %struct.mscp** %4, align 8
  %40 = getelementptr inbounds %struct.mscp, %struct.mscp* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @DTD_IN, align 4
  %42 = load %struct.mscp*, %struct.mscp** %4, align 8
  %43 = getelementptr inbounds %struct.mscp, %struct.mscp* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @H2DEV(i32 %44)
  %46 = load %struct.mscp*, %struct.mscp** %4, align 8
  %47 = getelementptr inbounds %struct.mscp, %struct.mscp* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = call i8* @H2DEV(i32 8)
  %49 = load %struct.mscp*, %struct.mscp** %4, align 8
  %50 = getelementptr inbounds %struct.mscp, %struct.mscp* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mscp*, %struct.mscp** %4, align 8
  %52 = getelementptr inbounds %struct.mscp, %struct.mscp* %51, i32 0, i32 1
  store i32 6, i32* %52, align 4
  %53 = load i32, i32* @HA_CMD_INQUIRY, align 4
  %54 = load %struct.mscp*, %struct.mscp** %4, align 8
  %55 = getelementptr inbounds %struct.mscp, %struct.mscp* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sh, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @MAXLOOP, align 4
  %66 = call i64 @wait_on_busy(i64 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @BN(i32 %69)
  %71 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %2, align 4
  br label %179

73:                                               ; preds = %1
  %74 = load i64, i64* @IGNORE, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call %struct.TYPE_4__* @HD(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %74, i64* %79, align 8
  %80 = load i32, i32* @CMD_CLR_INTR, align 4
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sh, align 8
  %82 = load i32, i32* %3, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @REG_SYS_INTR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outb(i32 %80, i64 %89)
  %91 = load %struct.mscp*, %struct.mscp** %4, align 8
  %92 = getelementptr inbounds %struct.mscp, %struct.mscp* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @H2DEV(i32 %93)
  %95 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sh, align 8
  %96 = load i32, i32* %3, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %95, i64 %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @REG_OGM, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outl(i8* %94, i64 %103)
  %105 = load i32, i32* @CMD_OGM_INTR, align 4
  %106 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sh, align 8
  %107 = load i32, i32* %3, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %106, i64 %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @REG_LCL_INTR, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outb(i32 %105, i64 %114)
  %116 = call i32 @spin_unlock_irq(i32* @driver_lock)
  %117 = load i64, i64* @jiffies, align 8
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %130, %73
  %119 = load i64, i64* @jiffies, align 8
  %120 = load i64, i64* %7, align 8
  %121 = sub i64 %119, %120
  %122 = load i64, i64* @HZ, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* %6, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = icmp ult i32 %125, 20000
  br label %128

128:                                              ; preds = %124, %118
  %129 = phi i1 [ false, %118 ], [ %127, %124 ]
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = call i32 @udelay(i64 100)
  br label %118

132:                                              ; preds = %128
  %133 = call i32 @spin_lock_irq(i32* @driver_lock)
  %134 = load %struct.mscp*, %struct.mscp** %4, align 8
  %135 = getelementptr inbounds %struct.mscp, %struct.mscp* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %3, align 4
  %140 = call %struct.TYPE_4__* @HD(i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FREE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %138, %132
  %148 = load i64, i64* @FREE, align 8
  %149 = load i32, i32* %3, align 4
  %150 = call %struct.TYPE_4__* @HD(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  store i64 %148, i64* %153, align 8
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @BN(i32 %154)
  %156 = load %struct.mscp*, %struct.mscp** %4, align 8
  %157 = getelementptr inbounds %struct.mscp, %struct.mscp* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %155, i64 %158)
  %160 = load i32, i32* @TRUE, align 4
  store i32 %160, i32* %2, align 4
  br label %179

161:                                              ; preds = %138
  %162 = load i32, i32* %3, align 4
  %163 = call %struct.TYPE_4__* @HD(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mscp*, %struct.mscp** %4, align 8
  %167 = getelementptr inbounds %struct.mscp, %struct.mscp* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %170 = call i32 @pci_unmap_single(i32 %165, i32 %168, i32 48, i32 %169)
  %171 = load i32, i32* %3, align 4
  %172 = call %struct.TYPE_4__* @HD(i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %177 = call i32 @pci_unmap_single(i32 %174, i32 %175, i32 8, i32 %176)
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %161, %147, %68
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i8* @pci_map_single(i32, %struct.mscp*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @HD(i32) #1

declare dso_local i32 @memset(%struct.mscp*, i32, i64) #1

declare dso_local i8* @H2DEV(i32) #1

declare dso_local i64 @wait_on_busy(i64, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @BN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i8*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
