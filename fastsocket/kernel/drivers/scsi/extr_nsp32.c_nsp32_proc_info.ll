; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NinjaSCSI-32 status\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Driver version:        %s, $Revision: 1.33 $\0A\00", align 1
@nsp32_release_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"SCSI host No.:         %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"IRQ:                   %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"IO:                    0x%lx-0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"MMIO(virtual address): 0x%lx-0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"sg_tablesize:          %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Chip revision:         0x%x\0A\00", align 1
@INDEX_REG = common dso_local global i32 0, align 4
@CHIP_MODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"OEM:                   %ld, %s\0A\00", align 1
@OEM0 = common dso_local global i8 0, align 1
@OEM1 = common dso_local global i8 0, align 1
@nsp32_model = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"CurrentSC:             0x%p\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SDTR status\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"id %d: \00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"----- NinjaSCSI-32 host adapter\0A\00", align 1
@SDTR_DONE = common dso_local global i64 0, align 8
@ASYNC_OFFSET = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" sync\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c" transfer %d.%dMB/s, offset %d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OPTF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i8**, i32, i32, i32)* @nsp32_proc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %14, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %240

31:                                               ; preds = %6
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %18, align 4
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %17, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %19, align 4
  %42 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @nsp32_release_version, align 4
  %44 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %18, align 4
  %46 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = sub nsw i64 %61, 1
  %63 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %53, i64 %62)
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = sub nsw i64 %74, 1
  %76 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %66, i64 %75)
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @INDEX_REG, align 4
  %83 = call i32 @nsp32_read2(i32 %81, i32 %82)
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 255
  %86 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @CHIP_MODE, align 4
  %89 = call zeroext i8 @nsp32_index_read1(i32 %87, i32 %88)
  store i8 %89, i8* %20, align 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %23, align 8
  %95 = load i8, i8* %20, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @OEM0, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @OEM1, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %98, %100
  %102 = and i32 %96, %101
  %103 = load i32*, i32** @nsp32_model, align 8
  %104 = load i64, i64* %23, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %16, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i64, i64* %16, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %121

121:                                              ; preds = %213, %31
  %122 = load i32, i32* %21, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %125)
  %127 = icmp slt i32 %122, %126
  br i1 %127, label %128, label %216

128:                                              ; preds = %121
  %129 = load i32, i32* %21, align 4
  %130 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %21, align 4
  %132 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %133 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %213

138:                                              ; preds = %128
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SDTR_DONE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %138
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %149
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i32, i32* %21, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ASYNC_OFFSET, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %174

172:                                              ; preds = %159, %149
  %173 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %170
  br label %177

175:                                              ; preds = %138
  %176 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %174
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %177
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %195, 4
  %197 = sdiv i32 1000000, %196
  store i32 %197, i32* %22, align 4
  %198 = load i32, i32* %22, align 4
  %199 = sdiv i32 %198, 1000
  %200 = load i32, i32* %22, align 4
  %201 = srem i32 %200, 1000
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %199, i32 %201, i64 %209)
  br label %211

211:                                              ; preds = %187, %177
  %212 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %136
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %21, align 4
  br label %121

216:                                              ; preds = %121
  %217 = load i8*, i8** %14, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = ptrtoint i8* %217 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %216
  %229 = load i8**, i8*** %10, align 8
  store i8* null, i8** %229, align 8
  store i32 0, i32* %7, align 4
  br label %240

230:                                              ; preds = %216
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @min(i32 %231, i32 %232)
  store i32 %233, i32* %15, align 4
  %234 = load i8*, i8** %9, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8**, i8*** %10, align 8
  store i8* %237, i8** %238, align 8
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %230, %228, %28
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @SPRINTF(i8*, ...) #1

declare dso_local i32 @nsp32_read2(i32, i32) #1

declare dso_local zeroext i8 @nsp32_index_read1(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
