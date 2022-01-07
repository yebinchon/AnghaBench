; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pdc_adma.c_adma_qc_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pdc_adma.c_adma_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.adma_port_priv* }
%struct.adma_port_priv = type { i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@cVLD = common dso_local global i32 0, align 4
@cDAT = common dso_local global i32 0, align 4
@cIEN = common dso_local global i32 0, align 4
@ADMA_REGS_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ADMA_REGS_SECTOR_COUNT = common dso_local global i32 0, align 4
@ADMA_REGS_LBA_LOW = common dso_local global i32 0, align 4
@ADMA_REGS_LBA_MID = common dso_local global i32 0, align 4
@ADMA_REGS_LBA_HIGH = common dso_local global i32 0, align 4
@ADMA_REGS_CONTROL = common dso_local global i32 0, align 4
@rIGN = common dso_local global i32 0, align 4
@ADMA_REGS_COMMAND = common dso_local global i32 0, align 4
@rEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @adma_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adma_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.adma_port_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.adma_port_priv*, %struct.adma_port_priv** %10, align 8
  store %struct.adma_port_priv* %11, %struct.adma_port_priv** %3, align 8
  %12 = load %struct.adma_port_priv*, %struct.adma_port_priv** %3, align 8
  %13 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.adma_port_priv*, %struct.adma_port_priv** %3, align 8
  %16 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %19 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @adma_enter_reg_mode(%struct.TYPE_4__* %22)
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ATA_PROT_DMA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %32 = call i32 @ata_sff_qc_prep(%struct.ata_queued_cmd* %31)
  br label %284

33:                                               ; preds = %1
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @cVLD, align 4
  %45 = load i32, i32* @cDAT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @cIEN, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @cpu_to_le32(i64 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 0, i32* %70, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 0, i32* %75, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 0, i32* %80, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 0, i32* %85, align 4
  %86 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %87 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* @ADMA_REGS_DEVICE, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %102 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %169

108:                                              ; preds = %33
  %109 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %110 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* @ADMA_REGS_SECTOR_COUNT, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %125 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load i32, i32* @ADMA_REGS_LBA_LOW, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %140 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* @ADMA_REGS_LBA_MID, align 4
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  %154 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %155 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load i32, i32* @ADMA_REGS_LBA_HIGH, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %163, i32* %168, align 4
  br label %169

169:                                              ; preds = %108, %33
  %170 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %171 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32, i32* @ADMA_REGS_SECTOR_COUNT, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %186 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  %194 = load i32, i32* @ADMA_REGS_LBA_LOW, align 4
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %201 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %4, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %203, i32* %208, align 4
  %209 = load i32, i32* @ADMA_REGS_LBA_MID, align 4
  %210 = load i32*, i32** %4, align 8
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %209, i32* %214, align 4
  %215 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %216 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4
  %224 = load i32, i32* @ADMA_REGS_LBA_HIGH, align 4
  %225 = load i32*, i32** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %224, i32* %229, align 4
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  store i32 0, i32* %234, align 4
  %235 = load i32, i32* @ADMA_REGS_CONTROL, align 4
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  %241 = load i32, i32* @rIGN, align 4
  %242 = load i32*, i32** %4, align 8
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 %241, i32* %246, align 4
  %247 = load i32*, i32** %4, align 8
  %248 = load i32, i32* %6, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %6, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 0, i32* %251, align 4
  %252 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %253 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 8
  %256 = load i32*, i32** %4, align 8
  %257 = load i32, i32* %6, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %6, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load i32, i32* @ADMA_REGS_COMMAND, align 4
  %262 = load i32, i32* @rEND, align 4
  %263 = or i32 %261, %262
  %264 = load i32*, i32** %4, align 8
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %6, align 4
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  store i32 %263, i32* %268, align 4
  %269 = load i32, i32* %6, align 4
  %270 = ashr i32 %269, 3
  %271 = sub nsw i32 %270, 2
  %272 = load i32*, i32** %4, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 3
  store i32 %271, i32* %273, align 4
  %274 = load i64, i64* %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %274, %276
  %278 = call i32 @cpu_to_le32(i64 %277)
  %279 = load i32*, i32** %4, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 8
  store i32 %278, i32* %280, align 4
  %281 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %282 = call i32 @adma_fill_sg(%struct.ata_queued_cmd* %281)
  store i32 %282, i32* %6, align 4
  %283 = call i32 (...) @wmb()
  br label %284

284:                                              ; preds = %169, %30
  ret void
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @adma_enter_reg_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @ata_sff_qc_prep(%struct.ata_queued_cmd*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @adma_fill_sg(%struct.ata_queued_cmd*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
