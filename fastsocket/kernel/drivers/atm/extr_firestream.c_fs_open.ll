; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_fs_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_fs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i16, i32, i32, %struct.TYPE_5__, %struct.fs_vcc*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.atm_trafprm, %struct.atm_trafprm }
%struct.atm_trafprm = type { i64 }
%struct.fs_vcc = type { i16, i32, i16, i16*, i64*, i64, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.fs_dev = type { i32, i16, i32, %struct.atm_vcc**, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.fs_transmit_config = type { i16, i32, i16, i16*, i64*, i64, i32, i32* }

@FS_DEBUG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fs: open on dev: %p, vcc at %p\0A\00", align 1
@ATM_VPI_UNSPEC = common dso_local global i32 0, align 4
@ATM_VCI_UNSPEC = common dso_local global i16 0, align 2
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"fs: (itf %d): open %d.%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Alloc VCC: %p(%Zd)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATM_VF_PARTIAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"No more free channels for FS50..\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FS155_VCI_BITS = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [30 x i8] c"Channel is in use for FS155.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"OK. Allocated channel %x(%d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Alloc tc: %p(%Zd)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"fs: can't alloc transmit_config.\0A\00", align 1
@TC_FLAGS_TRANSPARENT_PAYLOAD = common dso_local global i32 0, align 4
@TC_FLAGS_PACKET = common dso_local global i32 0, align 4
@TC_FLAGS_TYPE_UBR = common dso_local global i32 0, align 4
@TC_FLAGS_CAL0 = common dso_local global i32 0, align 4
@TC_FLAGS_AAL5 = common dso_local global i32 0, align 4
@TC_FLAGS_TYPE_CBR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Unknown aal: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pcr = %d.\0A\00", align 1
@ROUND_DOWN = common dso_local global i32 0, align 4
@ROUND_UP = common dso_local global i32 0, align 4
@fs_debug = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"TX config record:\0A\00", align 1
@QE_CMD_CONFIG_TX = common dso_local global i32 0, align 4
@QE_CMD_IMM_INQ = common dso_local global i32 0, align 4
@QE_CMD_TX_EN = common dso_local global i32 0, align 4
@FS_NR_FREE_POOLS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"No free pool fits sdu: %d.\0A\00", align 1
@QE_CMD_CONFIG_RX = common dso_local global i32 0, align 4
@RC_FLAGS_TRANSP = common dso_local global i32 0, align 4
@RC_FLAGS_BFPS_BFP = common dso_local global i32 0, align 4
@RC_FLAGS_RXBM_PSB = common dso_local global i32 0, align 4
@RC_FLAGS_AAL5 = common dso_local global i32 0, align 4
@QE_CMD_REG_WR = common dso_local global i32 0, align 4
@QE_CMD_RX_EN = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @fs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_open(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.fs_dev*, align 8
  %5 = alloca %struct.fs_vcc*, align 8
  %6 = alloca %struct.fs_transmit_config*, align 8
  %7 = alloca %struct.atm_trafprm*, align 8
  %8 = alloca %struct.atm_trafprm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 8
  store i16 %19, i16* %13, align 2
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = call i32 (...) @func_enter()
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %25 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call %struct.fs_dev* @FS_DEV(%struct.TYPE_6__* %26)
  store %struct.fs_dev* %27, %struct.fs_dev** %4, align 8
  %28 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %29 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %31 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.fs_dev* %29, %struct.atm_vcc* %30)
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @ATM_VPI_UNSPEC, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load i16, i16* %13, align 2
  %37 = sext i16 %36 to i32
  %38 = load i16, i16* @ATM_VCI_UNSPEC, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @ATM_VF_ADDR, align 4
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %44 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %43, i32 0, i32 2
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %35, %1
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 128
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 129
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %588

61:                                               ; preds = %52, %46
  %62 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %64 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %69 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %68, i32 0, i32 0
  %70 = load i16, i16* %69, align 8
  %71 = sext i16 %70 to i32
  %72 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %73 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %71, i32 %74)
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.fs_vcc* @kmalloc(i32 56, i32 %76)
  store %struct.fs_vcc* %77, %struct.fs_vcc** %5, align 8
  %78 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %79 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %80 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.fs_vcc* %79, i64 56)
  %81 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %82 = icmp ne %struct.fs_vcc* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %61
  %84 = load i32, i32* @ATM_VF_ADDR, align 4
  %85 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %86 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %85, i32 0, i32 2
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %588

90:                                               ; preds = %61
  %91 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %93 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %92, i32 0, i32 4
  store %struct.fs_vcc* %91, %struct.fs_vcc** %93, align 8
  %94 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %95 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %94, i32 0, i32 7
  store i32* null, i32** %95, align 8
  %96 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %97 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %96, i32 0, i32 6
  %98 = call i32 @init_waitqueue_head(i32* %97)
  %99 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %100 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store %struct.atm_trafprm* %101, %struct.atm_trafprm** %7, align 8
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %103 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store %struct.atm_trafprm* %104, %struct.atm_trafprm** %8, align 8
  %105 = load i64, i64* @ATM_VF_PARTIAL, align 8
  %106 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %107 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %106, i32 0, i32 2
  %108 = call i64 @test_bit(i64 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %242, label %110

110:                                              ; preds = %90
  %111 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %112 = call i64 @IS_FS50(%struct.fs_dev* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %187

114:                                              ; preds = %110
  store i32 33, i32* %11, align 4
  br label %115

115:                                              ; preds = %158, %114
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %165

118:                                              ; preds = %115
  %119 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %120 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %125 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %128 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %132 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %131, i32 0, i32 3
  %133 = load %struct.atm_vcc**, %struct.atm_vcc*** %132, align 8
  %134 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %135 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %133, i64 %137
  %139 = load %struct.atm_vcc*, %struct.atm_vcc** %138, align 8
  %140 = icmp ne %struct.atm_vcc* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %158

142:                                              ; preds = %130, %126
  %143 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %144 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %148 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %152 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @test_bit(i64 %150, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %158

157:                                              ; preds = %146, %142
  br label %165

158:                                              ; preds = %156, %141
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %11, align 4
  %161 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %162 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  br label %115

165:                                              ; preds = %157, %115
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* @EBUSY, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %588

172:                                              ; preds = %165
  %173 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %174 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = trunc i32 %175 to i16
  %177 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %178 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %177, i32 0, i32 0
  store i16 %176, i16* %178, align 8
  %179 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %180 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %179, i32 0, i32 1
  %181 = load i16, i16* %180, align 4
  %182 = sext i16 %181 to i32
  %183 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %184 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %231

187:                                              ; preds = %110
  %188 = load i16, i16* %13, align 2
  %189 = sext i16 %188 to i32
  %190 = load i16, i16* @FS155_VCI_BITS, align 2
  %191 = sext i16 %190 to i32
  %192 = shl i32 %189, %191
  %193 = load i32, i32* %14, align 4
  %194 = or i32 %192, %193
  %195 = trunc i32 %194 to i16
  %196 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %197 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %196, i32 0, i32 0
  store i16 %195, i16* %197, align 8
  %198 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %199 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %187
  %202 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %203 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %202, i32 0, i32 3
  %204 = load %struct.atm_vcc**, %struct.atm_vcc*** %203, align 8
  %205 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %206 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %205, i32 0, i32 0
  %207 = load i16, i16* %206, align 8
  %208 = sext i16 %207 to i64
  %209 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %204, i64 %208
  %210 = load %struct.atm_vcc*, %struct.atm_vcc** %209, align 8
  %211 = icmp ne %struct.atm_vcc* %210, null
  br i1 %211, label %226, label %212

212:                                              ; preds = %201, %187
  %213 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %214 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %212
  %217 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %218 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %217, i32 0, i32 0
  %219 = load i16, i16* %218, align 8
  %220 = sext i16 %219 to i64
  %221 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %222 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = call i64 @test_bit(i64 %220, i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %216, %201
  %227 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %228 = load i32, i32* @EBUSY, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %588

230:                                              ; preds = %216, %212
  br label %231

231:                                              ; preds = %230, %172
  %232 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %233 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %234 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %233, i32 0, i32 0
  %235 = load i16, i16* %234, align 8
  %236 = sext i16 %235 to i32
  %237 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %238 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %237, i32 0, i32 0
  %239 = load i16, i16* %238, align 8
  %240 = sext i16 %239 to i32
  %241 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %236, i32 %240)
  br label %242

242:                                              ; preds = %231, %90
  %243 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %244 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %439

246:                                              ; preds = %242
  %247 = load i32, i32* @GFP_KERNEL, align 4
  %248 = call %struct.fs_vcc* @kmalloc(i32 56, i32 %247)
  %249 = bitcast %struct.fs_vcc* %248 to %struct.fs_transmit_config*
  store %struct.fs_transmit_config* %249, %struct.fs_transmit_config** %6, align 8
  %250 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %251 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %252 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.fs_transmit_config* %251, i64 56)
  %253 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %254 = icmp ne %struct.fs_transmit_config* %253, null
  br i1 %254, label %260, label %255

255:                                              ; preds = %246
  %256 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %257 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %258 = load i32, i32* @ENOMEM, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %2, align 4
  br label %588

260:                                              ; preds = %246
  %261 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %262 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  switch i32 %264, label %288 [
    i32 129, label %265
    i32 130, label %265
    i32 128, label %277
  ]

265:                                              ; preds = %260, %260
  %266 = load i32, i32* @TC_FLAGS_TRANSPARENT_PAYLOAD, align 4
  %267 = or i32 0, %266
  %268 = load i32, i32* @TC_FLAGS_PACKET, align 4
  %269 = or i32 %267, %268
  %270 = or i32 %269, 268435456
  %271 = load i32, i32* @TC_FLAGS_TYPE_UBR, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @TC_FLAGS_CAL0, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %276 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  br label %296

277:                                              ; preds = %260
  %278 = load i32, i32* @TC_FLAGS_AAL5, align 4
  %279 = or i32 0, %278
  %280 = load i32, i32* @TC_FLAGS_PACKET, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @TC_FLAGS_TYPE_CBR, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @TC_FLAGS_CAL0, align 4
  %285 = or i32 %283, %284
  %286 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %287 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  br label %296

288:                                              ; preds = %260
  %289 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %290 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %292)
  %294 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %295 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %294, i32 0, i32 1
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %288, %277, %265
  %297 = load i16, i16* %13, align 2
  %298 = sext i16 %297 to i32
  %299 = shl i32 %298, 20
  %300 = load i32, i32* %14, align 4
  %301 = shl i32 %300, 4
  %302 = or i32 %299, %301
  %303 = trunc i32 %302 to i16
  %304 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %305 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %304, i32 0, i32 2
  store i16 %303, i16* %305, align 8
  store i16 0, i16* %12, align 2
  %306 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %307 = call i32 @atm_pcr_goal(%struct.atm_trafprm* %306)
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %309 = load i32, i32* %15, align 4
  %310 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %308, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %309)
  %311 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %312 = call i64 @IS_FS50(%struct.fs_dev* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %296
  %315 = load i32, i32* %15, align 4
  %316 = icmp sgt i32 %315, 122264
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  store i32 122264, i32* %15, align 4
  br label %318

318:                                              ; preds = %317, %314
  br label %324

319:                                              ; preds = %296
  %320 = load i32, i32* %15, align 4
  %321 = icmp sgt i32 %320, 366792
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  store i32 366792, i32* %15, align 4
  br label %323

323:                                              ; preds = %322, %319
  br label %324

324:                                              ; preds = %323, %318
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %334, label %327

327:                                              ; preds = %324
  %328 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %329 = call i64 @IS_FS50(%struct.fs_dev* %328)
  %330 = icmp ne i64 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i32 25022, i32 25801
  %333 = trunc i32 %332 to i16
  store i16 %333, i16* %12, align 2
  br label %355

334:                                              ; preds = %324
  %335 = load i32, i32* %15, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %334
  %338 = load i32, i32* @ROUND_DOWN, align 4
  store i32 %338, i32* %16, align 4
  %339 = load i32, i32* %15, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %15, align 4
  br label %343

341:                                              ; preds = %334
  %342 = load i32, i32* @ROUND_UP, align 4
  store i32 %342, i32* %16, align 4
  br label %343

343:                                              ; preds = %341, %337
  %344 = load i32, i32* %15, align 4
  %345 = load i32, i32* %16, align 4
  %346 = call i32 @make_rate(i32 %344, i32 %345, i16* %12, i32* null)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %351 = bitcast %struct.fs_transmit_config* %350 to %struct.fs_vcc*
  %352 = call i32 @kfree(%struct.fs_vcc* %351)
  %353 = load i32, i32* %9, align 4
  store i32 %353, i32* %2, align 4
  br label %588

354:                                              ; preds = %343
  br label %355

355:                                              ; preds = %354, %327
  %356 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %357 = load i32, i32* %15, align 4
  %358 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %356, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %357)
  %359 = load i16, i16* %12, align 2
  %360 = zext i16 %359 to i32
  %361 = or i32 %360, 16384
  %362 = trunc i32 %361 to i16
  %363 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %364 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %363, i32 0, i32 3
  %365 = load i16*, i16** %364, align 8
  %366 = getelementptr inbounds i16, i16* %365, i64 0
  store i16 %362, i16* %366, align 2
  %367 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %368 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %367, i32 0, i32 3
  %369 = load i16*, i16** %368, align 8
  %370 = getelementptr inbounds i16, i16* %369, i64 1
  store i16 0, i16* %370, align 2
  %371 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %372 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %371, i32 0, i32 3
  %373 = load i16*, i16** %372, align 8
  %374 = getelementptr inbounds i16, i16* %373, i64 2
  store i16 0, i16* %374, align 2
  %375 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %376 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %375, i32 0, i32 3
  %377 = load i16*, i16** %376, align 8
  %378 = getelementptr inbounds i16, i16* %377, i64 3
  store i16 0, i16* %378, align 2
  %379 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %380 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %379, i32 0, i32 5
  store i64 0, i64* %380, align 8
  %381 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %382 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %381, i32 0, i32 4
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 0
  store i64 0, i64* %384, align 8
  %385 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %386 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %385, i32 0, i32 4
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 1
  store i64 0, i64* %388, align 8
  %389 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %390 = getelementptr inbounds %struct.fs_transmit_config, %struct.fs_transmit_config* %389, i32 0, i32 4
  %391 = load i64*, i64** %390, align 8
  %392 = getelementptr inbounds i64, i64* %391, i64 2
  store i64 0, i64* %392, align 8
  %393 = load i32, i32* @fs_debug, align 4
  %394 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %355
  %398 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %399 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %398, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %400 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %401 = bitcast %struct.fs_transmit_config* %400 to %struct.fs_vcc*
  %402 = call i32 @my_hd(%struct.fs_vcc* %401, i32 56)
  br label %403

403:                                              ; preds = %397, %355
  %404 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %405 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %406 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %405, i32 0, i32 2
  %407 = load i32, i32* @QE_CMD_CONFIG_TX, align 4
  %408 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %409 = or i32 %407, %408
  %410 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %411 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %410, i32 0, i32 0
  %412 = load i16, i16* %411, align 8
  %413 = sext i16 %412 to i32
  %414 = or i32 %409, %413
  %415 = load %struct.fs_transmit_config*, %struct.fs_transmit_config** %6, align 8
  %416 = bitcast %struct.fs_transmit_config* %415 to %struct.fs_vcc*
  %417 = call i32 @virt_to_bus(%struct.fs_vcc* %416)
  %418 = call i32 @submit_command(%struct.fs_dev* %404, i32* %406, i32 %414, i32 %417, i16 signext 0, i32 0)
  %419 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %420 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %421 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %420, i32 0, i32 2
  %422 = load i32, i32* @QE_CMD_TX_EN, align 4
  %423 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %424 = or i32 %422, %423
  %425 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %426 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %425, i32 0, i32 0
  %427 = load i16, i16* %426, align 8
  %428 = sext i16 %427 to i32
  %429 = or i32 %424, %428
  %430 = call i32 @submit_command(%struct.fs_dev* %419, i32* %421, i32 %429, i32 0, i16 signext 0, i32 0)
  %431 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %432 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %431, i32 0, i32 0
  %433 = load i16, i16* %432, align 8
  %434 = sext i16 %433 to i32
  %435 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %436 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %435, i32 0, i32 5
  %437 = load i32*, i32** %436, align 8
  %438 = call i32 @set_bit(i32 %434, i32* %437)
  br label %439

439:                                              ; preds = %403, %242
  %440 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %441 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %582

443:                                              ; preds = %439
  %444 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %445 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %446 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %445, i32 0, i32 3
  %447 = load %struct.atm_vcc**, %struct.atm_vcc*** %446, align 8
  %448 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %449 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %448, i32 0, i32 0
  %450 = load i16, i16* %449, align 8
  %451 = sext i16 %450 to i64
  %452 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %447, i64 %451
  store %struct.atm_vcc* %444, %struct.atm_vcc** %452, align 8
  store i32 0, i32* %10, align 4
  br label %453

453:                                              ; preds = %474, %443
  %454 = load i32, i32* %10, align 4
  %455 = load i32, i32* @FS_NR_FREE_POOLS, align 4
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %457, label %477

457:                                              ; preds = %453
  %458 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %459 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %464 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %463, i32 0, i32 4
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %464, align 8
  %466 = load i32, i32* %10, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = icmp sle i64 %462, %470
  br i1 %471, label %472, label %473

472:                                              ; preds = %457
  br label %477

473:                                              ; preds = %457
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* %10, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %10, align 4
  br label %453

477:                                              ; preds = %472, %453
  %478 = load i32, i32* %10, align 4
  %479 = load i32, i32* @FS_NR_FREE_POOLS, align 4
  %480 = icmp sge i32 %478, %479
  br i1 %480, label %481, label %501

481:                                              ; preds = %477
  %482 = load i32, i32* @FS_DEBUG_OPEN, align 4
  %483 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %484 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %482, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i64 %487)
  %489 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %490 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %489, i32 0, i32 3
  %491 = load %struct.atm_vcc**, %struct.atm_vcc*** %490, align 8
  %492 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %493 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %492, i32 0, i32 0
  %494 = load i16, i16* %493, align 8
  %495 = sext i16 %494 to i64
  %496 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %491, i64 %495
  store %struct.atm_vcc* null, %struct.atm_vcc** %496, align 8
  %497 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %498 = call i32 @kfree(%struct.fs_vcc* %497)
  %499 = load i32, i32* @EINVAL, align 4
  %500 = sub nsw i32 0, %499
  store i32 %500, i32* %2, align 4
  br label %588

501:                                              ; preds = %477
  %502 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %503 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  switch i32 %505, label %546 [
    i32 130, label %506
    i32 129, label %506
    i32 128, label %526
  ]

506:                                              ; preds = %501, %501
  %507 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %508 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %509 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %508, i32 0, i32 2
  %510 = load i32, i32* @QE_CMD_CONFIG_RX, align 4
  %511 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %512 = or i32 %510, %511
  %513 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %514 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %513, i32 0, i32 0
  %515 = load i16, i16* %514, align 8
  %516 = sext i16 %515 to i32
  %517 = or i32 %512, %516
  %518 = load i32, i32* @RC_FLAGS_TRANSP, align 4
  %519 = load i32, i32* @RC_FLAGS_BFPS_BFP, align 4
  %520 = load i32, i32* %10, align 4
  %521 = mul nsw i32 %519, %520
  %522 = or i32 %518, %521
  %523 = load i32, i32* @RC_FLAGS_RXBM_PSB, align 4
  %524 = or i32 %522, %523
  %525 = call i32 @submit_command(%struct.fs_dev* %507, i32* %509, i32 %517, i32 %524, i16 signext 0, i32 0)
  br label %546

526:                                              ; preds = %501
  %527 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %528 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %529 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %528, i32 0, i32 2
  %530 = load i32, i32* @QE_CMD_CONFIG_RX, align 4
  %531 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %532 = or i32 %530, %531
  %533 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %534 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %533, i32 0, i32 0
  %535 = load i16, i16* %534, align 8
  %536 = sext i16 %535 to i32
  %537 = or i32 %532, %536
  %538 = load i32, i32* @RC_FLAGS_AAL5, align 4
  %539 = load i32, i32* @RC_FLAGS_BFPS_BFP, align 4
  %540 = load i32, i32* %10, align 4
  %541 = mul nsw i32 %539, %540
  %542 = or i32 %538, %541
  %543 = load i32, i32* @RC_FLAGS_RXBM_PSB, align 4
  %544 = or i32 %542, %543
  %545 = call i32 @submit_command(%struct.fs_dev* %527, i32* %529, i32 %537, i32 %544, i16 signext 0, i32 0)
  br label %546

546:                                              ; preds = %501, %526, %506
  %547 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %548 = call i64 @IS_FS50(%struct.fs_dev* %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %569

550:                                              ; preds = %546
  %551 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %552 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %553 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %552, i32 0, i32 2
  %554 = load i32, i32* @QE_CMD_REG_WR, align 4
  %555 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %556 = or i32 %554, %555
  %557 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %558 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %557, i32 0, i32 0
  %559 = load i16, i16* %558, align 8
  %560 = sext i16 %559 to i32
  %561 = add nsw i32 128, %560
  %562 = load i16, i16* %13, align 2
  %563 = sext i16 %562 to i32
  %564 = shl i32 %563, 16
  %565 = load i32, i32* %14, align 4
  %566 = or i32 %564, %565
  %567 = trunc i32 %566 to i16
  %568 = call i32 @submit_command(%struct.fs_dev* %551, i32* %553, i32 %556, i32 %561, i16 signext %567, i32 0)
  br label %569

569:                                              ; preds = %550, %546
  %570 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %571 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %572 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %571, i32 0, i32 2
  %573 = load i32, i32* @QE_CMD_RX_EN, align 4
  %574 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %575 = or i32 %573, %574
  %576 = load %struct.fs_vcc*, %struct.fs_vcc** %5, align 8
  %577 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %576, i32 0, i32 0
  %578 = load i16, i16* %577, align 8
  %579 = sext i16 %578 to i32
  %580 = or i32 %575, %579
  %581 = call i32 @submit_command(%struct.fs_dev* %570, i32* %572, i32 %580, i32 0, i16 signext 0, i32 0)
  br label %582

582:                                              ; preds = %569, %439
  %583 = load i32, i32* @ATM_VF_READY, align 4
  %584 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %585 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %584, i32 0, i32 2
  %586 = call i32 @set_bit(i32 %583, i32* %585)
  %587 = call i32 (...) @func_exit()
  store i32 0, i32* %2, align 4
  br label %588

588:                                              ; preds = %582, %481, %349, %255, %226, %168, %83, %58
  %589 = load i32, i32* %2, align 4
  ret i32 %589
}

declare dso_local i32 @func_enter(...) #1

declare dso_local %struct.fs_dev* @FS_DEV(%struct.TYPE_6__*) #1

declare dso_local i32 @fs_dprintk(i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.fs_vcc* @kmalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @IS_FS50(%struct.fs_dev*) #1

declare dso_local i64 @DO_DIRECTION(%struct.atm_trafprm*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @atm_pcr_goal(%struct.atm_trafprm*) #1

declare dso_local i32 @make_rate(i32, i32, i16*, i32*) #1

declare dso_local i32 @kfree(%struct.fs_vcc*) #1

declare dso_local i32 @my_hd(%struct.fs_vcc*, i32) #1

declare dso_local i32 @submit_command(%struct.fs_dev*, i32*, i32, i32, i16 signext, i32) #1

declare dso_local i32 @virt_to_bus(%struct.fs_vcc*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
