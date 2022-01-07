; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_state_5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_initio.c_initio_state_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64, i64, %struct.TYPE_2__*, %struct.scsi_ctrl_blk* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_ctrl_blk = type { i32, i32, i64, i64, i32, i64, %struct.sg_entry*, i32 }
%struct.sg_entry = type { i32, i32 }

@TUL_SCnt0 = common dso_local global i64 0, align 8
@TUL_XCmd = common dso_local global i64 0, align 8
@TSS_PAR_ERROR = common dso_local global i32 0, align 4
@HOST_DO_DU = common dso_local global i32 0, align 4
@TUL_XStatus = common dso_local global i64 0, align 8
@XPEND = common dso_local global i32 0, align 4
@TUL_XCtrl = common dso_local global i64 0, align 8
@TUL_SStatus1 = common dso_local global i64 0, align 8
@TSS_XFER_CMP = common dso_local global i32 0, align 4
@TSC_WIDE_SCSI = common dso_local global i32 0, align 4
@TUL_SFifoCnt = common dso_local global i64 0, align 8
@TAX_X_ABT = common dso_local global i32 0, align 4
@TUL_Int = common dso_local global i64 0, align 8
@XABT = common dso_local global i32 0, align 4
@DATA_OUT = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@SCF_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_state_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_state_5(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sg_entry*, align 8
  %8 = alloca i64, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %9 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 4
  %11 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %10, align 8
  store %struct.scsi_ctrl_blk* %11, %struct.scsi_ctrl_blk** %4, align 8
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TUL_SCnt0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inl(i64 %16)
  %18 = and i32 %17, 16777215
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %21 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TUL_XCmd, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inb(i64 %24)
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %1
  %29 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %30 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TSS_PAR_ERROR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @HOST_DO_DU, align 4
  %37 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %41 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TUL_XStatus, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @inb(i64 %44)
  %46 = load i32, i32* @XPEND, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %39
  %50 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %51 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TUL_XCtrl, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inb(i64 %54)
  %56 = or i32 %55, 128
  %57 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %58 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TUL_XCtrl, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  br label %63

63:                                               ; preds = %73, %49
  %64 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %65 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TUL_XStatus, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  %70 = load i32, i32* @XPEND, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 (...) @cpu_relax()
  br label %63

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %39
  br label %193

77:                                               ; preds = %1
  %78 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %79 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TUL_SStatus1, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @inb(i64 %82)
  %84 = load i32, i32* @TSS_XFER_CMP, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %77
  %88 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %89 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TSC_WIDE_SCSI, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %87
  %97 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %98 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TUL_SFifoCnt, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @inb(i64 %101)
  %103 = and i32 %102, 31
  %104 = shl i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %5, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %5, align 8
  br label %119

108:                                              ; preds = %87
  %109 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %110 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TUL_SFifoCnt, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @inb(i64 %113)
  %115 = and i32 %114, 31
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %5, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %108, %96
  br label %120

120:                                              ; preds = %119, %77
  %121 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %122 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TUL_XStatus, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @inb(i64 %125)
  %127 = load i32, i32* @XPEND, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %120
  %131 = load i32, i32* @TAX_X_ABT, align 4
  %132 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %133 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TUL_XCmd, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 %131, i64 %136)
  br label %138

138:                                              ; preds = %148, %130
  %139 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %140 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TUL_Int, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @inb(i64 %143)
  %145 = load i32, i32* @XABT, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = call i32 (...) @cpu_relax()
  br label %138

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %120
  %152 = load i64, i64* %5, align 8
  %153 = icmp eq i64 %152, 1
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %156 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @DATA_OUT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %162 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %163 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TUL_SCmd, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @outb(i32 %161, i64 %166)
  %168 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %169 = call i32 @wait_tulip(%struct.initio_host* %168)
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  store i32 -1, i32* %2, align 4
  br label %297

172:                                              ; preds = %160
  store i64 0, i64* %5, align 8
  br label %192

173:                                              ; preds = %154, %151
  %174 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %175 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @TUL_SStatus1, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @inb(i64 %178)
  %180 = load i32, i32* @TSS_XFER_CMP, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %173
  %184 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %185 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %186 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TUL_SCtrl0, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outb(i32 %184, i64 %189)
  br label %191

191:                                              ; preds = %183, %173
  br label %192

192:                                              ; preds = %191, %172
  br label %193

193:                                              ; preds = %192, %76
  %194 = load i64, i64* %5, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %198 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  store i32 6, i32* %2, align 4
  br label %297

199:                                              ; preds = %193
  %200 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %201 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %5, align 8
  %205 = sub nsw i64 %203, %204
  store i64 %205, i64* %6, align 8
  %206 = load i64, i64* %5, align 8
  %207 = trunc i64 %206 to i32
  %208 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %209 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %211 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @SCF_SG, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %289

216:                                              ; preds = %199
  %217 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %218 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %217, i32 0, i32 6
  %219 = load %struct.sg_entry*, %struct.sg_entry** %218, align 8
  %220 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %221 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %219, i64 %222
  store %struct.sg_entry* %223, %struct.sg_entry** %7, align 8
  %224 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %225 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %8, align 8
  br label %227

227:                                              ; preds = %283, %216
  %228 = load i64, i64* %8, align 8
  %229 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %230 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = icmp ult i64 %228, %231
  br i1 %232, label %233, label %288

233:                                              ; preds = %227
  %234 = load %struct.sg_entry*, %struct.sg_entry** %7, align 8
  %235 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* %6, align 8
  %239 = sub nsw i64 %238, %237
  store i64 %239, i64* %6, align 8
  %240 = load i64, i64* %6, align 8
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %242, label %282

242:                                              ; preds = %233
  %243 = load %struct.sg_entry*, %struct.sg_entry** %7, align 8
  %244 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %6, align 8
  %248 = add nsw i64 %247, %246
  store i64 %248, i64* %6, align 8
  %249 = load i64, i64* %6, align 8
  %250 = trunc i64 %249 to i32
  %251 = load %struct.sg_entry*, %struct.sg_entry** %7, align 8
  %252 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load i64, i64* %6, align 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.sg_entry*, %struct.sg_entry** %7, align 8
  %258 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load i64, i64* %8, align 8
  %262 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %263 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = sub i64 %261, %264
  %266 = trunc i64 %265 to i32
  %267 = shl i32 %266, 3
  %268 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %269 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %273 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* %8, align 8
  %276 = sub i64 %274, %275
  %277 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %278 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %277, i32 0, i32 5
  store i64 %276, i64* %278, align 8
  %279 = load i64, i64* %8, align 8
  %280 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %281 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %280, i32 0, i32 2
  store i64 %279, i64* %281, align 8
  store i32 4, i32* %2, align 4
  br label %297

282:                                              ; preds = %233
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.sg_entry*, %struct.sg_entry** %7, align 8
  %285 = getelementptr inbounds %struct.sg_entry, %struct.sg_entry* %284, i32 1
  store %struct.sg_entry* %285, %struct.sg_entry** %7, align 8
  %286 = load i64, i64* %8, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %8, align 8
  br label %227

288:                                              ; preds = %227
  store i32 6, i32* %2, align 4
  br label %297

289:                                              ; preds = %199
  %290 = load i64, i64* %6, align 8
  %291 = trunc i64 %290 to i32
  %292 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %293 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %289
  store i32 4, i32* %2, align 4
  br label %297

297:                                              ; preds = %296, %288, %242, %196, %171
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
