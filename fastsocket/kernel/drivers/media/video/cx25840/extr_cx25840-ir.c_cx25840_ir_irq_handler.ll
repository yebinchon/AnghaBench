; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.cx25840_ir_state = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%union.cx25840_ir_fifo_rec = type { i32 }

@FIFO_RX_DEPTH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CX25840_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@IRQEN_MSK = common dso_local global i32 0, align 4
@CX25840_IR_STATS_REG = common dso_local global i32 0, align 4
@STATS_TSR = common dso_local global i32 0, align 4
@STATS_RSR = common dso_local global i32 0, align 4
@STATS_RTO = common dso_local global i32 0, align 4
@STATS_ROR = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@ir_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IR IRQ Status:  %s %s %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tsr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rsr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rto\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@STATS_TBY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tby\00", align 1
@STATS_RBY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rby\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"IR IRQ Enables: %s %s %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tse\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rse\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"roe\00", align 1
@V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_TX_NOTIFY = common dso_local global i32 0, align 4
@FIFO_RX_NDV = common dso_local global i32 0, align 4
@CX25840_IR_FIFO_REG = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"IR receiver software FIFO overrun\0A\00", align 1
@CNTRL_RFE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"IR receiver hardware FIFO overrun\0A\00", align 1
@CNTRL_RXE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@CX25840_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_ir_irq_handler(%struct.v4l2_subdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cx25840_state*, align 8
  %9 = alloca %struct.cx25840_ir_state*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %32 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %31)
  store %struct.cx25840_state* %32, %struct.cx25840_state** %8, align 8
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %34 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %33)
  store %struct.cx25840_ir_state* %34, %struct.cx25840_ir_state** %9, align 8
  store %struct.i2c_client* null, %struct.i2c_client** %10, align 8
  %35 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %11, align 8
  %38 = alloca %union.cx25840_ir_fifo_rec, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %41 = icmp eq %struct.cx25840_ir_state* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %320

45:                                               ; preds = %3
  %46 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %47 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %46, i32 0, i32 1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %47, align 8
  store %struct.i2c_client* %48, %struct.i2c_client** %10, align 8
  %49 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %50 = call i64 @is_cx23885(%struct.cx25840_state* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %54 = call i64 @is_cx23887(%struct.cx25840_state* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %320

59:                                               ; preds = %52, %45
  %60 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %61 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %62 = call i32 @cx25840_read4(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %27, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %64 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %65 = call i32 @cx25840_read4(%struct.i2c_client* %63, i32 %64)
  store i32 %65, i32* %28, align 4
  %66 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %67 = call i64 @is_cx23885(%struct.cx25840_state* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %71 = call i64 @is_cx23887(%struct.cx25840_state* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %59
  %74 = load i32, i32* @IRQEN_MSK, align 4
  %75 = load i32, i32* %28, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %28, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %79 = load i32, i32* @CX25840_IR_STATS_REG, align 4
  %80 = call i32 @cx25840_read4(%struct.i2c_client* %78, i32 %79)
  store i32 %80, i32* %29, align 4
  %81 = load i32, i32* %29, align 4
  %82 = load i32, i32* @STATS_TSR, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %29, align 4
  %85 = load i32, i32* @STATS_RSR, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %29, align 4
  %88 = load i32, i32* @STATS_RTO, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %29, align 4
  %91 = load i32, i32* @STATS_ROR, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* @IRQEN_TSE, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %28, align 4
  %97 = load i32, i32* @IRQEN_RSE, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* @IRQEN_RTE, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %28, align 4
  %103 = load i32, i32* @IRQEN_ROE, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %25, align 4
  %105 = load i32, i32* @ir_debug, align 4
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %119 = load i32, i32* %21, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %123 = load i32, i32* %29, align 4
  %124 = load i32, i32* @STATS_TBY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %129 = load i32, i32* %29, align 4
  %130 = load i32, i32* @STATS_RBY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %135 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %105, %struct.v4l2_subdev* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %110, i8* %114, i8* %118, i8* %122, i8* %128, i8* %134)
  %136 = load i32, i32* @ir_debug, align 4
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %138 = load i32, i32* %22, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %142 = load i32, i32* %23, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %146 = load i32, i32* %24, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %150 = load i32, i32* %25, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %154 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %136, %struct.v4l2_subdev* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %141, i8* %145, i8* %149, i8* %153)
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %77
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %162 = call i32 @irqenable_tx(%struct.v4l2_subdev* %161, i32 0)
  %163 = load i32, i32* @V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ, align 4
  store i32 %163, i32* %16, align 4
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %165 = load i32, i32* @V4L2_SUBDEV_IR_TX_NOTIFY, align 4
  %166 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %164, i32 %165, i32* %16)
  %167 = load i32*, i32** %7, align 8
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %160, %157, %77
  store i32 0, i32* %26, align 4
  %169 = load i32, i32* %23, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %24, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %247

177:                                              ; preds = %174
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %247

180:                                              ; preds = %177, %171
  store i32 0, i32* %13, align 4
  %181 = load i32, i32* @FIFO_RX_NDV, align 4
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %244, %180
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @FIFO_RX_NDV, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* %26, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  br label %191

191:                                              ; preds = %187, %182
  %192 = phi i1 [ false, %182 ], [ %190, %187 ]
  br i1 %192, label %193, label %245

193:                                              ; preds = %191
  store i32 0, i32* %14, align 4
  br label %194

194:                                              ; preds = %219, %193
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @FIFO_RX_NDV, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %202 = icmp ult i32 %200, %201
  br label %203

203:                                              ; preds = %199, %194
  %204 = phi i1 [ false, %194 ], [ %202, %199 ]
  br i1 %204, label %205, label %222

205:                                              ; preds = %203
  %206 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %207 = load i32, i32* @CX25840_IR_FIFO_REG, align 4
  %208 = call i32 @cx25840_read4(%struct.i2c_client* %206, i32 %207)
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* @FIFO_RX_NDV, align 4
  %211 = xor i32 %210, -1
  %212 = and i32 %209, %211
  %213 = load i32, i32* %13, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %union.cx25840_ir_fifo_rec, %union.cx25840_ir_fifo_rec* %38, i64 %214
  %216 = bitcast %union.cx25840_ir_fifo_rec* %215 to i32*
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %13, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %14, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %194

222:                                              ; preds = %203
  %223 = load i32, i32* %13, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %245

226:                                              ; preds = %222
  %227 = load i32, i32* %13, align 4
  %228 = zext i32 %227 to i64
  %229 = mul i64 %228, 4
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %14, align 4
  %231 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %232 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = bitcast %union.cx25840_ir_fifo_rec* %38 to i8*
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @kfifo_put(i32 %233, i8* %234, i32 %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %226
  %241 = load i32, i32* %26, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %26, align 4
  br label %243

243:                                              ; preds = %240, %226
  br label %244

244:                                              ; preds = %243
  store i32 0, i32* %13, align 4
  br label %182

245:                                              ; preds = %225, %191
  %246 = load i32*, i32** %7, align 8
  store i32 1, i32* %246, align 4
  br label %247

247:                                              ; preds = %245, %177, %174
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %248 = load i32, i32* %26, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, i32* @V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN, align 4
  %252 = load i32, i32* %16, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %16, align 4
  %254 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %255 = call i32 @v4l2_err(%struct.v4l2_subdev* %254, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %256

256:                                              ; preds = %250, %247
  %257 = load i32, i32* %25, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %256
  %260 = load i32, i32* %21, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load i32, i32* @CNTRL_RFE, align 4
  %264 = load i32, i32* %17, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* @V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN, align 4
  %267 = load i32, i32* %16, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %16, align 4
  %269 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %270 = call i32 @v4l2_err(%struct.v4l2_subdev* %269, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %271

271:                                              ; preds = %262, %259, %256
  %272 = load i32, i32* %24, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %271
  %275 = load i32, i32* %20, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %274
  %278 = load i32, i32* @CNTRL_RXE, align 4
  %279 = load i32, i32* %17, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %17, align 4
  %281 = load i32, i32* @V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED, align 4
  %282 = load i32, i32* %16, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %16, align 4
  br label %284

284:                                              ; preds = %277, %274, %271
  %285 = load i32, i32* %17, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %284
  %288 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %289 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* %17, align 4
  %292 = xor i32 %291, -1
  %293 = and i32 %290, %292
  %294 = call i32 @cx25840_write4(%struct.i2c_client* %288, i32 %289, i32 %293)
  %295 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %296 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %297 = load i32, i32* %27, align 4
  %298 = call i32 @cx25840_write4(%struct.i2c_client* %295, i32 %296, i32 %297)
  %299 = load i32*, i32** %7, align 8
  store i32 1, i32* %299, align 4
  br label %300

300:                                              ; preds = %287, %284
  %301 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %9, align 8
  %302 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @kfifo_len(i32 %303)
  %305 = load i32, i32* @CX25840_IR_RX_KFIFO_SIZE, align 4
  %306 = sdiv i32 %305, 2
  %307 = icmp sge i32 %304, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %300
  %309 = load i32, i32* @V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ, align 4
  %310 = load i32, i32* %16, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %16, align 4
  br label %312

312:                                              ; preds = %308, %300
  %313 = load i32, i32* %16, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %317 = load i32, i32* @V4L2_SUBDEV_IR_RX_NOTIFY, align 4
  %318 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %316, i32 %317, i32* %16)
  br label %319

319:                                              ; preds = %315, %312
  store i32 0, i32* %4, align 4
  store i32 1, i32* %30, align 4
  br label %320

320:                                              ; preds = %319, %56, %42
  %321 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @irqenable_tx(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @kfifo_len(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
