; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_slot_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_cardinfo = type { i32, %struct.TYPE_6__*, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"IBM Flash Adapter PCI: recovering from slot reset.\0A\00", align 1
@ISR = common dso_local global i64 0, align 8
@RSXX_MAX_TARGETS = common dso_local global i32 0, align 4
@CR_INTR_ALL_G = common dso_local global i32 0, align 4
@CR_INTR_ALL_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"IBM Flash Adapter PCI: recovery complete.\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@STATUS_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@COMMAND_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @rsxx_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.rsxx_cardinfo* %9, %struct.rsxx_cardinfo** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_warn(i32* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pci_enable_device(%struct.pci_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %241

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_set_master(%struct.pci_dev* %19)
  %21 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %22 = call i32 @rsxx_eeh_fifo_flush_poll(%struct.rsxx_cardinfo* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %241

26:                                               ; preds = %18
  %27 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %28 = call i32 @rsxx_dma_queue_reset(%struct.rsxx_cardinfo* %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %48, %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %32 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %38 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = call i32 @rsxx_hw_buffers_init(%struct.pci_dev* %36, %struct.TYPE_6__* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %159

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %53 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %58 = call i32 @rsxx_dma_configure(%struct.rsxx_cardinfo* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %61 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ISR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @ioread32(i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %67 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %69 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %68, i32 0, i32 3
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %73 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RSXX_MAX_TARGETS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %59
  %79 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %80 = load i32, i32* @CR_INTR_ALL_G, align 4
  %81 = call i32 @rsxx_enable_ier_and_isr(%struct.rsxx_cardinfo* %79, i32 %80)
  br label %86

82:                                               ; preds = %59
  %83 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %84 = load i32, i32* @CR_INTR_ALL_C, align 4
  %85 = call i32 @rsxx_enable_ier_and_isr(%struct.rsxx_cardinfo* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %88 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %87, i32 0, i32 3
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %92 = call i32 @rsxx_kick_creg_queue(%struct.rsxx_cardinfo* %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %151, %86
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %96 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %154

99:                                               ; preds = %93
  %100 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %101 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %109 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = call i64 @list_empty(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %99
  %118 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %119 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = call i32 @spin_unlock(i32* %124)
  br label %151

126:                                              ; preds = %99
  %127 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %128 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %136 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %144 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = call i32 @queue_work(i32 %142, i32* %149)
  br label %151

151:                                              ; preds = %126, %117
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %93

154:                                              ; preds = %93
  %155 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 0
  %157 = call i32 @dev_info(i32* %156, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %158, i32* %2, align 4
  br label %245

159:                                              ; preds = %46
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %237, %159
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %163 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %240

166:                                              ; preds = %160
  %167 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %168 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %166
  %178 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %179 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %182 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %183 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %192 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @pci_free_consistent(i32 %180, i32 %181, i64 %190, i32 %199)
  br label %201

201:                                              ; preds = %177, %166
  %202 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %203 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %236

212:                                              ; preds = %201
  %213 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %214 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %217 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %218 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %227 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %226, i32 0, i32 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @pci_free_consistent(i32 %215, i32 %216, i64 %225, i32 %234)
  br label %236

236:                                              ; preds = %212, %201
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  br label %160

240:                                              ; preds = %160
  br label %241

241:                                              ; preds = %240, %25, %17
  %242 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %243 = call i32 @rsxx_eeh_failure(%struct.pci_dev* %242)
  %244 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %241, %154
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @rsxx_eeh_fifo_flush_poll(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_dma_queue_reset(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_hw_buffers_init(%struct.pci_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @rsxx_dma_configure(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rsxx_enable_ier_and_isr(%struct.rsxx_cardinfo*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rsxx_kick_creg_queue(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @rsxx_eeh_failure(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
