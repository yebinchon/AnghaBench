; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_ipath_init_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_ipath_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.ipath_devdata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ipath_devdata*)*, i32, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_9__, i32*, %struct.TYPE_6__*, i32 (%struct.ipath_devdata*)*, i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.ipath_portdata**, %struct.TYPE_7__*, i32, i32 (%struct.ipath_devdata*)*, i8*, i32 (%struct.ipath_devdata*)*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i8*, i32 }
%struct.ipath_portdata = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_USER = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@ipath_kpiobufs = common dso_local global i32 0, align 4
@IPATH_MIN_USER_PORT_BUFCNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Allocating %d PIO bufs of %d for kernel leaves too few for %d user ports (%d each); using %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"%u pbufs/port leaves some unused, add 1 buffer to ports <= %u\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"%d PIO bufs for kernel out of %d total %u each for %u user ports\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Early initialization failure\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"Catastrophic software error, SendPIOAvailAddr written as %lx, read back as %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPATH_KD_QP = common dso_local global i64 0, align 8
@INFINIPATH_HWE_MEMBISTFAILED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to bringup IB link\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Unable to allocate portdata for port 0, failing\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"failed to allocate kernel port's rcvhdrq and/or egr bufs\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Couldn't allocate 0x%lx bytes for dummy hdrq\0A\00", align 1
@ipath_get_faststats = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@IPATH_HAS_SEND_DMA = common dso_local global i32 0, align 4
@ipath_hol_event = common dso_local global i32 0, align 4
@IPATH_HOL_UP = common dso_local global i32 0, align 4
@IPATH_STATUS_CHIP_PRESENT = common dso_local global i32 0, align 4
@IPATH_STATUS_INITTED = common dso_local global i32 0, align 4
@verify_interrupt = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"No interrupts enabled, couldn't setup interrupt address\0A\00", align 1
@ipath_stats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed (%d) to initialize chip\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_init_chip(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ipath_portdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipath_portdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @GFP_USER, align 4
  %16 = load i32, i32* @__GFP_COMP, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @init_housekeeping(%struct.ipath_devdata* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %551

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %551

30:                                               ; preds = %24
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 35
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 34
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @max(i32 %33, i32 %36)
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %42 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %41, i32 0, i32 22
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %40, i32 %45, i64 %48)
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BITS_PER_BYTE, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = udiv i64 %60, 2
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ALIGN(i32 %57, i32 %62)
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* @BITS_PER_BYTE, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = udiv i64 %67, 2
  %69 = udiv i64 %64, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %30
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %79 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  br label %83

82:                                               ; preds = %30
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi i32 [ %81, %77 ], [ 0, %82 ]
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 144
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %89 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 32, %90
  store i32 %91, i32* %7, align 4
  br label %97

92:                                               ; preds = %83
  %93 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 16, %95
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @ipath_kpiobufs, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %97
  %101 = load i32, i32* @ipath_kpiobufs, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @IPATH_MIN_USER_PORT_BUFCNT, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @IPATH_MIN_USER_PORT_BUFCNT, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %108
  %118 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %119 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %118, i32 0, i32 28
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* @ipath_kpiobufs, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @IPATH_MIN_USER_PORT_BUFCNT, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_info(i32* %121, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %6, align 4
  br label %137

129:                                              ; preds = %100, %97
  %130 = load i32, i32* @ipath_kpiobufs, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @ipath_kpiobufs, align 4
  store i32 %133, i32* %6, align 4
  br label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %132
  br label %137

137:                                              ; preds = %136, %117
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %147 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sdiv i32 %148, %149
  br label %152

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %145
  %153 = phi i32 [ %150, %145 ], [ 0, %151 ]
  %154 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %155 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %157 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %160 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sub nsw i32 %158, %163
  %165 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %166 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %168 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %152
  %172 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %173 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %176 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, i32, ...) @ipath_dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %171, %152
  %180 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %181 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %180, i32 0, i32 33
  store i64 0, i64* %181, align 8
  %182 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %183 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %186 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @VERBOSE, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %191 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @ipath_cdbg(i32 %187, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %188, i32 %189, i32 %192, i32 %193)
  %195 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %196 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %195, i32 0, i32 10
  %197 = load i32 (%struct.ipath_devdata*)*, i32 (%struct.ipath_devdata*)** %196, align 8
  %198 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %199 = call i32 %197(%struct.ipath_devdata* %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %179
  %203 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %204 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %551

205:                                              ; preds = %179
  %206 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %207 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %211 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, 1
  %214 = mul i64 %209, %213
  %215 = trunc i64 %214 to i32
  %216 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %217 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %216, i32 0, i32 11
  store i32 %215, i32* %217, align 8
  %218 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %219 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %220 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %219, i32 0, i32 22
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %225 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %224, i32 0, i32 12
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %218, i32 %223, i64 %227)
  %229 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %230 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %231 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %230, i32 0, i32 22
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %236 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %235, i32 0, i32 13
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %229, i32 %234, i64 %237)
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %205
  %242 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %243 = call i32 @init_pioavailregs(%struct.ipath_devdata* %242)
  store i32 %243, i32* %5, align 4
  %244 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %245 = call i32 @init_shadow_tids(%struct.ipath_devdata* %244)
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  br label %551

249:                                              ; preds = %241
  br label %250

250:                                              ; preds = %249, %205
  %251 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %252 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %253 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %252, i32 0, i32 22
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %258 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %257, i32 0, i32 14
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %251, i32 %256, i64 %259)
  %261 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %262 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %263 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %262, i32 0, i32 22
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = call i8* @ipath_read_kreg64(%struct.ipath_devdata* %261, i32 %266)
  %268 = ptrtoint i8* %267 to i64
  store i64 %268, i64* %10, align 8
  %269 = load i64, i64* %10, align 8
  %270 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %271 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %270, i32 0, i32 14
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %269, %272
  br i1 %273, label %274, label %283

274:                                              ; preds = %250
  %275 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %276 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %277 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %276, i32 0, i32 14
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %10, align 8
  %280 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %275, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i64 %278, i64 %279)
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %5, align 4
  br label %551

283:                                              ; preds = %250
  %284 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %285 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %286 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %285, i32 0, i32 22
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = load i64, i64* @IPATH_KD_QP, align 8
  %291 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %284, i32 %289, i64 %290)
  %292 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %293 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %294 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %293, i32 0, i32 22
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %292, i32 %297, i64 0)
  %299 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %300 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %301 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %300, i32 0, i32 22
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = load i64, i64* @INFINIPATH_HWE_MEMBISTFAILED, align 8
  %306 = xor i64 %305, -1
  %307 = and i64 -1, %306
  %308 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %299, i32 %304, i64 %307)
  %309 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %310 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %311 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %310, i32 0, i32 22
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %309, i32 %314, i64 0)
  %316 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %317 = call i64 @bringup_link(%struct.ipath_devdata* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %283
  %320 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %321 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %320, i32 0, i32 28
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = call i32 (i32*, i8*, ...) @dev_info(i32* %323, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %325 = load i32, i32* @ENETDOWN, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %5, align 4
  br label %551

327:                                              ; preds = %283
  %328 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %329 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %328, i32 0, i32 32
  %330 = load i32 (%struct.ipath_devdata*)*, i32 (%struct.ipath_devdata*)** %329, align 8
  %331 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %332 = call i32 %330(%struct.ipath_devdata* %331)
  %333 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %334 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %335 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %334, i32 0, i32 22
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = load i64, i64* @INFINIPATH_HWE_MEMBISTFAILED, align 8
  %340 = xor i64 %339, -1
  %341 = and i64 -1, %340
  %342 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %333, i32 %338, i64 %341)
  %343 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %344 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %345 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %344, i32 0, i32 22
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %350 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %349, i32 0, i32 15
  %351 = load i64, i64* %350, align 8
  %352 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %343, i32 %348, i64 %351)
  %353 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %354 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %355 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %354, i32 0, i32 22
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %353, i32 %358, i64 -1)
  %360 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %361 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %362 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %361, i32 0, i32 22
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %367 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %366, i32 0, i32 16
  %368 = load i64, i64* %367, align 8
  %369 = xor i64 %368, -1
  %370 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %360, i32 %365, i64 %369)
  %371 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %372 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %371, i32 0, i32 16
  store i64 0, i64* %372, align 8
  %373 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %374 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %375 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %374, i32 0, i32 22
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = call i8* @ipath_read_kreg64(%struct.ipath_devdata* %373, i32 %378)
  %380 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %381 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %380, i32 0, i32 31
  store i8* %379, i8** %381, align 8
  %382 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %383 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %384 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %383, i32 0, i32 22
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %382, i32 %387, i64 -1)
  %389 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %390 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %389, i32 0, i32 30
  %391 = load i32 (%struct.ipath_devdata*)*, i32 (%struct.ipath_devdata*)** %390, align 8
  %392 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %393 = call i32 %391(%struct.ipath_devdata* %392)
  %394 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %395 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %394, i32 0, i32 27
  %396 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %395, align 8
  %397 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %396, i64 0
  %398 = load %struct.ipath_portdata*, %struct.ipath_portdata** %397, align 8
  store %struct.ipath_portdata* %398, %struct.ipath_portdata** %11, align 8
  %399 = load i32, i32* %4, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %422

401:                                              ; preds = %327
  %402 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %403 = call %struct.ipath_portdata* @create_portdata0(%struct.ipath_devdata* %402)
  store %struct.ipath_portdata* %403, %struct.ipath_portdata** %14, align 8
  %404 = load %struct.ipath_portdata*, %struct.ipath_portdata** %14, align 8
  %405 = icmp ne %struct.ipath_portdata* %404, null
  br i1 %405, label %406, label %416

406:                                              ; preds = %401
  %407 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %408 = load %struct.ipath_portdata*, %struct.ipath_portdata** %11, align 8
  %409 = call i32 @ipath_free_pddata(%struct.ipath_devdata* %407, %struct.ipath_portdata* %408)
  %410 = load %struct.ipath_portdata*, %struct.ipath_portdata** %14, align 8
  %411 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %412 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %411, i32 0, i32 27
  %413 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %412, align 8
  %414 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %413, i64 0
  store %struct.ipath_portdata* %410, %struct.ipath_portdata** %414, align 8
  %415 = load %struct.ipath_portdata*, %struct.ipath_portdata** %14, align 8
  store %struct.ipath_portdata* %415, %struct.ipath_portdata** %11, align 8
  br label %421

416:                                              ; preds = %401
  %417 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %418 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %417, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %419 = load i32, i32* @ENOMEM, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %5, align 4
  br label %551

421:                                              ; preds = %406
  br label %422

422:                                              ; preds = %421, %327
  %423 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %424 = load %struct.ipath_portdata*, %struct.ipath_portdata** %11, align 8
  %425 = call i32 @ipath_create_rcvhdrq(%struct.ipath_devdata* %423, %struct.ipath_portdata* %424)
  store i32 %425, i32* %5, align 4
  %426 = load i32, i32* %5, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %422
  %429 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %430 = call i32 @create_port0_egr(%struct.ipath_devdata* %429)
  store i32 %430, i32* %5, align 4
  br label %431

431:                                              ; preds = %428, %422
  %432 = load i32, i32* %5, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %436 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %435, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  br label %551

437:                                              ; preds = %431
  %438 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %439 = load i32, i32* %4, align 4
  %440 = call i32 @enable_chip(%struct.ipath_devdata* %438, i32 %439)
  br label %441

441:                                              ; preds = %437
  %442 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %443 = load i32, i32* %8, align 4
  %444 = call i32 @ipath_chg_pioavailkernel(%struct.ipath_devdata* %442, i32 0, i32 %443, i32 1)
  %445 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %446 = call i32 @ipath_cancel_sends(%struct.ipath_devdata* %445, i32 1)
  %447 = load i32, i32* %4, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %487, label %449

449:                                              ; preds = %441
  %450 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %451 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %450, i32 0, i32 28
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 0
  %454 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %455 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %454, i32 0, i32 27
  %456 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %455, align 8
  %457 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %456, i64 0
  %458 = load %struct.ipath_portdata*, %struct.ipath_portdata** %457, align 8
  %459 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %462 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %461, i32 0, i32 17
  %463 = load i32, i32* %12, align 4
  %464 = call i32 @dma_alloc_coherent(i32* %453, i32 %460, i64* %462, i32 %463)
  %465 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %466 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %465, i32 0, i32 29
  store i32 %464, i32* %466, align 8
  %467 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %468 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %467, i32 0, i32 29
  %469 = load i32, i32* %468, align 8
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %486, label %471

471:                                              ; preds = %449
  %472 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %473 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %472, i32 0, i32 28
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 0
  %476 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %477 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %476, i32 0, i32 27
  %478 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %477, align 8
  %479 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %478, i64 0
  %480 = load %struct.ipath_portdata*, %struct.ipath_portdata** %479, align 8
  %481 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = call i32 (i32*, i8*, ...) @dev_info(i32* %475, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %482)
  %484 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %485 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %484, i32 0, i32 17
  store i64 0, i64* %485, align 8
  br label %486

486:                                              ; preds = %471, %449
  br label %487

487:                                              ; preds = %486, %441
  %488 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %489 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %490 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %489, i32 0, i32 22
  %491 = load %struct.TYPE_6__*, %struct.TYPE_6__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %488, i32 %493, i64 0)
  %495 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %496 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %495, i32 0, i32 18
  %497 = load i32, i32* %496, align 8
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %525, label %499

499:                                              ; preds = %487
  %500 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %501 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %500, i32 0, i32 26
  %502 = call i32 @init_timer(%struct.TYPE_9__* %501)
  %503 = load i32, i32* @ipath_get_faststats, align 4
  %504 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %505 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %504, i32 0, i32 26
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 2
  store i32 %503, i32* %506, align 8
  %507 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %508 = ptrtoint %struct.ipath_devdata* %507 to i64
  %509 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %510 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %509, i32 0, i32 26
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i32 0, i32 0
  store i64 %508, i64* %511, align 8
  %512 = load i8*, i8** @jiffies, align 8
  %513 = load i32, i32* @HZ, align 4
  %514 = mul nsw i32 5, %513
  %515 = sext i32 %514 to i64
  %516 = getelementptr i8, i8* %512, i64 %515
  %517 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %518 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %517, i32 0, i32 26
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 1
  store i8* %516, i8** %519, align 8
  %520 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %521 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %520, i32 0, i32 26
  %522 = call i32 @add_timer(%struct.TYPE_9__* %521)
  %523 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %524 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %523, i32 0, i32 18
  store i32 1, i32* %524, align 8
  br label %525

525:                                              ; preds = %499, %487
  %526 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %527 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %526, i32 0, i32 19
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @IPATH_HAS_SEND_DMA, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %525
  %533 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %534 = call i32 @setup_sdma(%struct.ipath_devdata* %533)
  store i32 %534, i32* %5, align 4
  br label %535

535:                                              ; preds = %532, %525
  %536 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %537 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %536, i32 0, i32 25
  %538 = call i32 @init_timer(%struct.TYPE_9__* %537)
  %539 = load i32, i32* @ipath_hol_event, align 4
  %540 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %541 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %540, i32 0, i32 25
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 2
  store i32 %539, i32* %542, align 8
  %543 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %544 = ptrtoint %struct.ipath_devdata* %543 to i64
  %545 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %546 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %545, i32 0, i32 25
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 0
  store i64 %544, i64* %547, align 8
  %548 = load i32, i32* @IPATH_HOL_UP, align 4
  %549 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %550 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %549, i32 0, i32 24
  store i32 %548, i32* %550, align 8
  br label %551

551:                                              ; preds = %535, %434, %416, %319, %274, %248, %202, %27, %23
  %552 = load i32, i32* %5, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %631, label %554

554:                                              ; preds = %551
  %555 = load i32, i32* @IPATH_STATUS_CHIP_PRESENT, align 4
  %556 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %557 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %556, i32 0, i32 21
  %558 = load i32*, i32** %557, align 8
  %559 = load i32, i32* %558, align 4
  %560 = or i32 %559, %555
  store i32 %560, i32* %558, align 4
  %561 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %562 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %561, i32 0, i32 23
  %563 = load i32 (%struct.ipath_devdata*)*, i32 (%struct.ipath_devdata*)** %562, align 8
  %564 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %565 = call i32 %563(%struct.ipath_devdata* %564)
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %615, label %567

567:                                              ; preds = %554
  %568 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %569 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %570 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %569, i32 0, i32 22
  %571 = load %struct.TYPE_6__*, %struct.TYPE_6__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %568, i32 %573, i64 -1)
  %575 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %576 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %577 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %576, i32 0, i32 22
  %578 = load %struct.TYPE_6__*, %struct.TYPE_6__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %575, i32 %580, i64 0)
  %582 = load i32, i32* @IPATH_STATUS_INITTED, align 4
  %583 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %584 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %583, i32 0, i32 21
  %585 = load i32*, i32** %584, align 8
  %586 = load i32, i32* %585, align 4
  %587 = or i32 %586, %582
  store i32 %587, i32* %585, align 4
  %588 = load i32, i32* %4, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %603, label %590

590:                                              ; preds = %567
  %591 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %592 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %591, i32 0, i32 20
  %593 = call i32 @init_timer(%struct.TYPE_9__* %592)
  %594 = load i32, i32* @verify_interrupt, align 4
  %595 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %596 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %595, i32 0, i32 20
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 2
  store i32 %594, i32* %597, align 8
  %598 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %599 = ptrtoint %struct.ipath_devdata* %598 to i64
  %600 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %601 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %600, i32 0, i32 20
  %602 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %601, i32 0, i32 0
  store i64 %599, i64* %602, align 8
  br label %603

603:                                              ; preds = %590, %567
  %604 = load i8*, i8** @jiffies, align 8
  %605 = load i32, i32* @HZ, align 4
  %606 = sdiv i32 %605, 2
  %607 = sext i32 %606 to i64
  %608 = getelementptr i8, i8* %604, i64 %607
  %609 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %610 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %609, i32 0, i32 20
  %611 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %610, i32 0, i32 1
  store i8* %608, i8** %611, align 8
  %612 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %613 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %612, i32 0, i32 20
  %614 = call i32 @add_timer(%struct.TYPE_9__* %613)
  br label %618

615:                                              ; preds = %554
  %616 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %617 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %616, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  br label %618

618:                                              ; preds = %615, %603
  %619 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %620 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %619, i32 0, i32 4
  %621 = load i32, i32* %620, align 4
  %622 = sext i32 %621 to i64
  %623 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipath_stats, i32 0, i32 0), align 8
  %624 = icmp sgt i64 %622, %623
  br i1 %624, label %625, label %630

625:                                              ; preds = %618
  %626 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %627 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %626, i32 0, i32 4
  %628 = load i32, i32* %627, align 4
  %629 = sext i32 %628 to i64
  store i64 %629, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipath_stats, i32 0, i32 0), align 8
  br label %630

630:                                              ; preds = %625, %618
  br label %634

631:                                              ; preds = %551
  %632 = load i32, i32* %5, align 4
  %633 = call i32 (i8*, i32, ...) @ipath_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %632)
  br label %634

634:                                              ; preds = %631, %630
  %635 = load i32, i32* %5, align 4
  ret i32 %635
}

declare dso_local i32 @init_housekeeping(%struct.ipath_devdata*, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @ipath_dbg(i8*, i32, ...) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @init_pioavailregs(%struct.ipath_devdata*) #1

declare dso_local i32 @init_shadow_tids(%struct.ipath_devdata*) #1

declare dso_local i8* @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i64 @bringup_link(%struct.ipath_devdata*) #1

declare dso_local %struct.ipath_portdata* @create_portdata0(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_free_pddata(%struct.ipath_devdata*, %struct.ipath_portdata*) #1

declare dso_local i32 @ipath_create_rcvhdrq(%struct.ipath_devdata*, %struct.ipath_portdata*) #1

declare dso_local i32 @create_port0_egr(%struct.ipath_devdata*) #1

declare dso_local i32 @enable_chip(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_chg_pioavailkernel(%struct.ipath_devdata*, i32, i32, i32) #1

declare dso_local i32 @ipath_cancel_sends(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @setup_sdma(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
