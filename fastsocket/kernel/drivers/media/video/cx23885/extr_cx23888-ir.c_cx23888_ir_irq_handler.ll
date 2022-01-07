; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx23888_ir_state = type { i32, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }
%union.cx23888_ir_fifo_rec = type { i32 }

@CX23888_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CX23888_IR_IRQEN_REG = common dso_local global i32 0, align 4
@CX23888_IR_STATS_REG = common dso_local global i32 0, align 4
@FIFO_RX_DEPTH = common dso_local global i32 0, align 4
@STATS_TSR = common dso_local global i32 0, align 4
@STATS_RSR = common dso_local global i32 0, align 4
@STATS_RTO = common dso_local global i32 0, align 4
@STATS_ROR = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@ir_888_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IRQ Status:  %s %s %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tsr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rsr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rto\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@STATS_TBY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tby\00", align 1
@STATS_RBY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rby\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"IRQ Enables: %s %s %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tse\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rse\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"roe\00", align 1
@V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_TX_NOTIFY = common dso_local global i32 0, align 4
@FIFO_RX_NDV = common dso_local global i32 0, align 4
@CX23888_IR_FIFO_REG = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"IR receiver software FIFO overrun\0A\00", align 1
@CNTRL_RFE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"IR receiver hardware FIFO overrun\0A\00", align 1
@CNTRL_RXE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@CX23888_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32*)* @cx23888_ir_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_irq_handler(%struct.v4l2_subdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cx23888_ir_state*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
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
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %28)
  store %struct.cx23888_ir_state* %29, %struct.cx23888_ir_state** %7, align 8
  %30 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %31 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %30, i32 0, i32 1
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %31, align 8
  store %struct.cx23885_dev* %32, %struct.cx23885_dev** %8, align 8
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %34 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %35 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %37 = load i32, i32* @CX23888_IR_IRQEN_REG, align 4
  %38 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %40 = load i32, i32* @CX23888_IR_STATS_REG, align 4
  %41 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %12, align 8
  %45 = alloca %union.cx23888_ir_fifo_rec, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @STATS_TSR, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @STATS_RSR, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @STATS_RTO, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @STATS_ROR, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @IRQEN_TSE, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @IRQEN_RSE, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @IRQEN_RTE, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @IRQEN_ROE, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %26, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* @ir_888_debug, align 4
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @STATS_TBY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @STATS_RBY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %71, %struct.v4l2_subdev* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %76, i8* %80, i8* %84, i8* %88, i8* %94, i8* %100)
  %102 = load i32, i32* @ir_888_debug, align 4
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i32, i32* %24, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %112 = load i32, i32* %25, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %116 = load i32, i32* %26, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %120 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) @v4l2_dbg(i32 2, i32 %102, %struct.v4l2_subdev* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %107, i8* %111, i8* %115, i8* %119)
  %121 = load i32, i32* %23, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %3
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %128 = call i32 @irqenable_tx(%struct.cx23885_dev* %127, i32 0)
  %129 = load i32, i32* @V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ, align 4
  store i32 %129, i32* %17, align 4
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %131 = load i32, i32* @V4L2_SUBDEV_IR_TX_NOTIFY, align 4
  %132 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %130, i32 %131, i32* %17)
  %133 = load i32*, i32** %6, align 8
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %123, %3
  store i32 0, i32* %27, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %20, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %25, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %213

143:                                              ; preds = %140
  %144 = load i32, i32* %21, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %213

146:                                              ; preds = %143, %137
  store i32 0, i32* %14, align 4
  %147 = load i32, i32* @FIFO_RX_NDV, align 4
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %210, %146
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @FIFO_RX_NDV, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %27, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  br label %157

157:                                              ; preds = %153, %148
  %158 = phi i1 [ false, %148 ], [ %156, %153 ]
  br i1 %158, label %159, label %211

159:                                              ; preds = %157
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %185, %159
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* @FIFO_RX_NDV, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* @FIFO_RX_DEPTH, align 4
  %168 = icmp ult i32 %166, %167
  br label %169

169:                                              ; preds = %165, %160
  %170 = phi i1 [ false, %160 ], [ %168, %165 ]
  br i1 %170, label %171, label %188

171:                                              ; preds = %169
  %172 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %173 = load i32, i32* @CX23888_IR_FIFO_REG, align 4
  %174 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %172, i32 %173)
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* @FIFO_RX_NDV, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %175, %177
  %179 = load i32, i32* %14, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %union.cx23888_ir_fifo_rec, %union.cx23888_ir_fifo_rec* %45, i64 %180
  %182 = bitcast %union.cx23888_ir_fifo_rec* %181 to i32*
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %15, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %160

188:                                              ; preds = %169
  %189 = load i32, i32* %14, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %211

192:                                              ; preds = %188
  %193 = load i32, i32* %14, align 4
  %194 = zext i32 %193 to i64
  %195 = mul i64 %194, 4
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %15, align 4
  %197 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %198 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = bitcast %union.cx23888_ir_fifo_rec* %45 to i8*
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @kfifo_put(i32 %199, i8* %200, i32 %201)
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %192
  %207 = load i32, i32* %27, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %27, align 4
  br label %209

209:                                              ; preds = %206, %192
  br label %210

210:                                              ; preds = %209
  store i32 0, i32* %14, align 4
  br label %148

211:                                              ; preds = %191, %157
  %212 = load i32*, i32** %6, align 8
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %211, %143, %140
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %214 = load i32, i32* %27, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* @V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN, align 4
  %218 = load i32, i32* %17, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %17, align 4
  %220 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %221 = call i32 @v4l2_err(%struct.v4l2_subdev* %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %222

222:                                              ; preds = %216, %213
  %223 = load i32, i32* %26, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = load i32, i32* %22, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load i32, i32* @CNTRL_RFE, align 4
  %230 = load i32, i32* %18, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* @V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN, align 4
  %233 = load i32, i32* %17, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %17, align 4
  %235 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %236 = call i32 @v4l2_err(%struct.v4l2_subdev* %235, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %237

237:                                              ; preds = %228, %225, %222
  %238 = load i32, i32* %25, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load i32, i32* %21, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load i32, i32* @CNTRL_RXE, align 4
  %245 = load i32, i32* %18, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* @V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED, align 4
  %248 = load i32, i32* %17, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %17, align 4
  br label %250

250:                                              ; preds = %243, %240, %237
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %255 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %18, align 4
  %258 = xor i32 %257, -1
  %259 = and i32 %256, %258
  %260 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %254, i32 %255, i32 %259)
  %261 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %262 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %261, i32 %262, i32 %263)
  %265 = load i32*, i32** %6, align 8
  store i32 1, i32* %265, align 4
  br label %266

266:                                              ; preds = %253, %250
  %267 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %7, align 8
  %268 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @kfifo_len(i32 %269)
  %271 = load i32, i32* @CX23888_IR_RX_KFIFO_SIZE, align 4
  %272 = sdiv i32 %271, 2
  %273 = icmp sge i32 %270, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %266
  %275 = load i32, i32* @V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ, align 4
  %276 = load i32, i32* %17, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %17, align 4
  br label %278

278:                                              ; preds = %274, %266
  %279 = load i32, i32* %17, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %283 = load i32, i32* @V4L2_SUBDEV_IR_RX_NOTIFY, align 4
  %284 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %282, i32 %283, i32* %17)
  br label %285

285:                                              ; preds = %281, %278
  %286 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %286)
  ret i32 0
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_read4(%struct.cx23885_dev*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @irqenable_tx(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @cx23888_ir_write4(%struct.cx23885_dev*, i32, i32) #1

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
