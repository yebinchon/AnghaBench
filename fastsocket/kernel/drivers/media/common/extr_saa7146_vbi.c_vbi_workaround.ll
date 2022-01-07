; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_vbi_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.saa7146_dev = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.saa7146_vv* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.saa7146_vv = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BASE_EVEN3 = common dso_local global i32 0, align 4
@BASE_ODD3 = common dso_local global i32 0, align 4
@vbi_pixel_to_capture = common dso_local global i32 0, align 4
@PROT_ADDR3 = common dso_local global i32 0, align 4
@PITCH3 = common dso_local global i32 0, align 4
@BASE_PAGE3 = common dso_local global i32 0, align 4
@NUM_LINE_BYTE3 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@CMD_WR_REG = common dso_local global i32 0, align 4
@BRS_CTRL = common dso_local global i32 0, align 4
@SAA7146_USE_PORT_B_FOR_VBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"...using port b\0A\00", align 1
@CMD_PAUSE = common dso_local global i32 0, align 4
@CMD_OAN = common dso_local global i32 0, align 4
@CMD_SIG1 = common dso_local global i32 0, align 4
@CMD_E_FID_B = common dso_local global i32 0, align 4
@CMD_O_FID_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"...using port a\0A\00", align 1
@MASK_10 = common dso_local global i32 0, align 4
@CMD_UPLOAD = common dso_local global i32 0, align 4
@MASK_08 = common dso_local global i32 0, align 4
@MASK_19 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@CMD_INTERRUPT = common dso_local global i32 0, align 4
@CMD_STOP = common dso_local global i32 0, align 4
@MASK_31 = common dso_local global i32 0, align 4
@MASK_15 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RPS_ADDR1 = common dso_local global i32 0, align 4
@MASK_13 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"brs bug workaround %d/1.\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"aborted (rps:0x%08x).\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @vbi_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_workaround(%struct.saa7146_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 3
  %11 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  store %struct.saa7146_vv* %11, %struct.saa7146_vv** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %14 = call i32 @DECLARE_WAITQUEUE(i32 %12, %struct.TYPE_8__* %13)
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %16 = bitcast %struct.saa7146_dev* %15 to i8*
  %17 = call i32 @DEB_VBI(i8* %16)
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @pci_alloc_consistent(i32 %20, i32 4096, i32* %6)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* null, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %258

27:                                               ; preds = %1
  %28 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %29 = load i32, i32* @BASE_EVEN3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @saa7146_write(%struct.saa7146_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %33 = load i32, i32* @BASE_ODD3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @vbi_pixel_to_capture, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @saa7146_write(%struct.saa7146_dev* %32, i32 %33, i32 %36)
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %39 = load i32, i32* @PROT_ADDR3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 4096
  %42 = call i32 @saa7146_write(%struct.saa7146_dev* %38, i32 %39, i32 %41)
  %43 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %44 = load i32, i32* @PITCH3, align 4
  %45 = load i32, i32* @vbi_pixel_to_capture, align 4
  %46 = call i32 @saa7146_write(%struct.saa7146_dev* %43, i32 %44, i32 %45)
  %47 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %48 = load i32, i32* @BASE_PAGE3, align 4
  %49 = call i32 @saa7146_write(%struct.saa7146_dev* %47, i32 %48, i32 0)
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %51 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %52 = load i32, i32* @vbi_pixel_to_capture, align 4
  %53 = shl i32 %52, 0
  %54 = or i32 131072, %53
  %55 = call i32 @saa7146_write(%struct.saa7146_dev* %50, i32 %51, i32 %54)
  %56 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %57 = load i32, i32* @MC2, align 4
  %58 = load i32, i32* @MASK_04, align 4
  %59 = load i32, i32* @MASK_20, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @saa7146_write(%struct.saa7146_dev* %56, i32 %57, i32 %60)
  %62 = load i32, i32* @CMD_WR_REG, align 4
  %63 = or i32 %62, 256
  %64 = load i32, i32* @BRS_CTRL, align 4
  %65 = sdiv i32 %64, 4
  %66 = or i32 %63, %65
  %67 = call i32 @WRITE_RPS1(i32 %66)
  %68 = call i32 @WRITE_RPS1(i32 -1073741684)
  %69 = load i32, i32* @SAA7146_USE_PORT_B_FOR_VBI, align 4
  %70 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %71 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %69, %74
  %76 = icmp ne i32 0, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %27
  %78 = call i32 @DEB_D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @CMD_PAUSE, align 4
  %80 = load i32, i32* @CMD_OAN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CMD_SIG1, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CMD_E_FID_B, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @WRITE_RPS1(i32 %85)
  %87 = load i32, i32* @CMD_PAUSE, align 4
  %88 = load i32, i32* @CMD_OAN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CMD_SIG1, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CMD_O_FID_B, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @WRITE_RPS1(i32 %93)
  br label %101

95:                                               ; preds = %27
  %96 = call i32 @DEB_D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @CMD_PAUSE, align 4
  %98 = load i32, i32* @MASK_10, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @WRITE_RPS1(i32 %99)
  br label %101

101:                                              ; preds = %95, %77
  %102 = load i32, i32* @CMD_UPLOAD, align 4
  %103 = load i32, i32* @MASK_08, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @WRITE_RPS1(i32 %104)
  %106 = load i32, i32* @CMD_WR_REG, align 4
  %107 = or i32 %106, 256
  %108 = load i32, i32* @BRS_CTRL, align 4
  %109 = sdiv i32 %108, 4
  %110 = or i32 %107, %109
  %111 = call i32 @WRITE_RPS1(i32 %110)
  %112 = load i32, i32* @vbi_pixel_to_capture, align 4
  %113 = sub nsw i32 1728, %112
  %114 = shl i32 %113, 7
  %115 = load i32, i32* @MASK_19, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @WRITE_RPS1(i32 %116)
  %118 = load i32, i32* @CMD_PAUSE, align 4
  %119 = load i32, i32* @MASK_08, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @WRITE_RPS1(i32 %120)
  %122 = load i32, i32* @CMD_UPLOAD, align 4
  %123 = load i32, i32* @MASK_08, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @WRITE_RPS1(i32 %124)
  %126 = load i32, i32* @CMD_WR_REG, align 4
  %127 = or i32 %126, 256
  %128 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %129 = sdiv i32 %128, 4
  %130 = or i32 %127, %129
  %131 = call i32 @WRITE_RPS1(i32 %130)
  %132 = load i32, i32* @vbi_pixel_to_capture, align 4
  %133 = or i32 131072, %132
  %134 = call i32 @WRITE_RPS1(i32 %133)
  %135 = load i32, i32* @CMD_WR_REG, align 4
  %136 = or i32 %135, 256
  %137 = load i32, i32* @BRS_CTRL, align 4
  %138 = sdiv i32 %137, 4
  %139 = or i32 %136, %138
  %140 = call i32 @WRITE_RPS1(i32 %139)
  %141 = call i32 @WRITE_RPS1(i32 2690560)
  %142 = load i32, i32* @CMD_PAUSE, align 4
  %143 = load i32, i32* @MASK_08, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @WRITE_RPS1(i32 %144)
  %146 = load i32, i32* @CMD_UPLOAD, align 4
  %147 = load i32, i32* @MASK_08, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @MASK_04, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @WRITE_RPS1(i32 %150)
  %152 = load i32, i32* @CMD_WR_REG, align 4
  %153 = or i32 %152, 256
  %154 = load i32, i32* @MC1, align 4
  %155 = sdiv i32 %154, 4
  %156 = or i32 %153, %155
  %157 = call i32 @WRITE_RPS1(i32 %156)
  %158 = load i32, i32* @MASK_20, align 4
  %159 = load i32, i32* @MASK_04, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @WRITE_RPS1(i32 %160)
  %162 = load i32, i32* @CMD_INTERRUPT, align 4
  %163 = call i32 @WRITE_RPS1(i32 %162)
  %164 = load i32, i32* @CMD_STOP, align 4
  %165 = call i32 @WRITE_RPS1(i32 %164)
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %248, %101
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %251

169:                                              ; preds = %166
  %170 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %171 = load i32, i32* @MC2, align 4
  %172 = load i32, i32* @MASK_31, align 4
  %173 = load i32, i32* @MASK_15, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @saa7146_write(%struct.saa7146_dev* %170, i32 %171, i32 %174)
  %176 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %177 = load i32, i32* @NUM_LINE_BYTE3, align 4
  %178 = call i32 @saa7146_write(%struct.saa7146_dev* %176, i32 %177, i32 65538)
  %179 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %180 = load i32, i32* @MC2, align 4
  %181 = load i32, i32* @MASK_04, align 4
  %182 = load i32, i32* @MASK_20, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @saa7146_write(%struct.saa7146_dev* %179, i32 %180, i32 %183)
  %185 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %186 = load i32, i32* @MASK_28, align 4
  %187 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %185, i32 %186)
  %188 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %189 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %188, i32 0, i32 0
  %190 = call i32 @add_wait_queue(i32* %189, i32* @wait)
  %191 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %195 = load i32, i32* @RPS_ADDR1, align 4
  %196 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %197 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @saa7146_write(%struct.saa7146_dev* %194, i32 %195, i32 %199)
  %201 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %202 = load i32, i32* @MC1, align 4
  %203 = load i32, i32* @MASK_13, align 4
  %204 = load i32, i32* @MASK_29, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @saa7146_write(%struct.saa7146_dev* %201, i32 %202, i32 %205)
  %207 = call i32 (...) @schedule()
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  %211 = call i32 @DEB_VBI(i8* %210)
  %212 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %213 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %212, i32 0, i32 0
  %214 = call i32 @remove_wait_queue(i32* %213, i32* @wait)
  %215 = load i32, i32* @TASK_RUNNING, align 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %219 = load i32, i32* @MASK_28, align 4
  %220 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %218, i32 %219)
  %221 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %222 = load i32, i32* @MC1, align 4
  %223 = load i32, i32* @MASK_20, align 4
  %224 = call i32 @saa7146_write(%struct.saa7146_dev* %221, i32 %222, i32 %223)
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %226 = call i64 @signal_pending(%struct.TYPE_8__* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %169
  %229 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %230 = load i32, i32* @RPS_ADDR1, align 4
  %231 = call i32 @saa7146_read(%struct.saa7146_dev* %229, i32 %230)
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = call i32 @DEB_VBI(i8* %233)
  %235 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %236 = load i32, i32* @MC1, align 4
  %237 = load i32, i32* @MASK_29, align 4
  %238 = call i32 @saa7146_write(%struct.saa7146_dev* %235, i32 %236, i32 %237)
  %239 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %240 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @pci_free_consistent(i32 %241, i32 4096, i32* %242, i32 %243)
  %245 = load i32, i32* @EINTR, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %2, align 4
  br label %258

247:                                              ; preds = %169
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  br label %166

251:                                              ; preds = %166
  %252 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %253 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @pci_free_consistent(i32 %254, i32 4096, i32* %255, i32 %256)
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %251, %228, %24
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @WRITE_RPS1(i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i64 @signal_pending(%struct.TYPE_8__*) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
