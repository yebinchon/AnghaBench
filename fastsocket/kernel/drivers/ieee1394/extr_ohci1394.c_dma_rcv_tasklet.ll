; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_dma_rcv_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_dma_rcv_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_rcv_ctx = type { i32, i32, i32**, i32, i32, i32, i32, i8*, i32, %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ti_ohci = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Unexpected tcode 0x%x(0x%08x) in AR ctx=%d, length=%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Split packet rcv'd\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Split packet size exceeded\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Got only half a packet!\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Single packet rcv'd\00", align 1
@OHCI1394_TCODE_PHY = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Packet received from node %d ack=0x%02X spd=%d tcode=0x%X length=%d ctx=%d tlabel=%d\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dma_rcv_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_rcv_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dma_rcv_ctx*, align 8
  %4 = alloca %struct.ti_ohci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [256 x i8], align 16
  store i64 %0, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = inttoptr i64 %17 to %struct.dma_rcv_ctx*
  store %struct.dma_rcv_ctx* %18, %struct.dma_rcv_ctx** %3, align 8
  %19 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ti_ohci*
  store %struct.ti_ohci* %22, %struct.ti_ohci** %4, align 8
  %23 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %23, i32 0, i32 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = udiv i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %14, align 8
  %44 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %44, i32 0, i32 9
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = and i32 %53, 65535
  store i32 %54, i32* %8, align 4
  %55 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %417, %1
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %436

65:                                               ; preds = %62
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %70 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cond_le32_to_cpu(i32 %68, i32 %71)
  %73 = ashr i32 %72, 4
  %74 = and i32 %73, 15
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %9, align 1
  %76 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i8, i8* %9, align 1
  %81 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %82 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @packet_length(%struct.dma_rcv_ctx* %76, i32 %77, i32* %78, i32 %79, i8 zeroext %80, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %112

87:                                               ; preds = %65
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %89 = load i8, i8* %9, align 1
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %94 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cond_le32_to_cpu(i32 %92, i32 %95)
  %97 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 zeroext %89, i32 %96, i32 %99, i32 %100)
  %102 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %103 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %107 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %102, i32 %105, i8* %106)
  %108 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %108, i32 0, i32 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %447

112:                                              ; preds = %65
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %113, %114
  %116 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ugt i32 %115, %118
  br i1 %119, label %120, label %275

120:                                              ; preds = %112
  %121 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %120
  %128 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %129 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %128, i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %140 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %139, i32 0, i32 8
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  br label %447

143:                                              ; preds = %120
  %144 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %145 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %144, i32 0, i32 9
  %146 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %147, 1
  %149 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = urem i32 %148, %151
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %146, i64 %153
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %143
  %164 = load i32, i32* @KERN_INFO, align 4
  %165 = call i32 (i32, i8*, ...) @PRINT(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %168 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %171 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %173 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %172, i32 0, i32 8
  %174 = load i64, i64* %13, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  br label %447

176:                                              ; preds = %143
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %5, align 4
  %178 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %179 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %178, i32 0, i32 7
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %15, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %184 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sub i32 %185, %186
  %188 = call i32 @memcpy(i8* %181, i32* %182, i32 %187)
  %189 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sub i32 %191, %192
  %194 = load i32, i32* %5, align 4
  %195 = sub i32 %194, %193
  store i32 %195, i32* %5, align 4
  %196 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %197 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sub i32 %198, %199
  %201 = load i8*, i8** %15, align 8
  %202 = zext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %15, align 8
  %204 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @insert_dma_buffer(%struct.dma_rcv_ctx* %204, i32 %205)
  %207 = load i32, i32* %6, align 4
  %208 = add i32 %207, 1
  %209 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %210 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = urem i32 %208, %211
  store i32 %212, i32* %6, align 4
  %213 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %213, i32 0, i32 2
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  store i32* %219, i32** %14, align 8
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %226, %176
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %223 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp uge i32 %221, %224
  br i1 %225, label %226, label %260

226:                                              ; preds = %220
  %227 = load i8*, i8** %15, align 8
  %228 = load i32*, i32** %14, align 8
  %229 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %230 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @memcpy(i8* %227, i32* %228, i32 %231)
  %233 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %234 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i8*, i8** %15, align 8
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %15, align 8
  %239 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %240 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sub i32 %242, %241
  store i32 %243, i32* %5, align 4
  %244 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @insert_dma_buffer(%struct.dma_rcv_ctx* %244, i32 %245)
  %247 = load i32, i32* %6, align 4
  %248 = add i32 %247, 1
  %249 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %250 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = urem i32 %248, %251
  store i32 %252, i32* %6, align 4
  %253 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %254 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %253, i32 0, i32 2
  %255 = load i32**, i32*** %254, align 8
  %256 = load i32, i32* %6, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  store i32* %259, i32** %14, align 8
  br label %220

260:                                              ; preds = %220
  %261 = load i32, i32* %5, align 4
  %262 = icmp ugt i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %260
  %264 = load i8*, i8** %15, align 8
  %265 = load i32*, i32** %14, align 8
  %266 = load i32, i32* %5, align 4
  %267 = call i32 @memcpy(i8* %264, i32* %265, i32 %266)
  %268 = load i32, i32* %5, align 4
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = udiv i32 %269, 4
  %271 = load i32*, i32** %14, align 8
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32* %273, i32** %14, align 8
  br label %274

274:                                              ; preds = %263, %260
  br label %314

275:                                              ; preds = %112
  %276 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %277 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %278 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %277, i32 0, i32 7
  %279 = load i8*, i8** %278, align 8
  %280 = load i32*, i32** %14, align 8
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @memcpy(i8* %279, i32* %280, i32 %281)
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %7, align 4
  %285 = add i32 %284, %283
  store i32 %285, i32* %7, align 4
  %286 = load i32, i32* %10, align 4
  %287 = sdiv i32 %286, 4
  %288 = load i32*, i32** %14, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32* %290, i32** %14, align 8
  %291 = load i32, i32* %7, align 4
  %292 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %293 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %291, %294
  br i1 %295, label %296, label %313

296:                                              ; preds = %275
  %297 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @insert_dma_buffer(%struct.dma_rcv_ctx* %297, i32 %298)
  %300 = load i32, i32* %6, align 4
  %301 = add i32 %300, 1
  %302 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %303 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = urem i32 %301, %304
  store i32 %305, i32* %6, align 4
  %306 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %307 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %306, i32 0, i32 2
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  store i32* %312, i32** %14, align 8
  store i32 0, i32* %7, align 4
  br label %313

313:                                              ; preds = %296, %275
  br label %314

314:                                              ; preds = %313, %274
  %315 = load i8, i8* %9, align 1
  %316 = zext i8 %315 to i32
  %317 = load i8, i8* @OHCI1394_TCODE_PHY, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp ne i32 %316, %318
  br i1 %319, label %320, label %417

320:                                              ; preds = %314
  %321 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %322 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %320
  %326 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %327 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %326, i32 0, i32 7
  %328 = load i8*, i8** %327, align 8
  %329 = load i8, i8* %9, align 1
  %330 = call i32 @header_le32_to_cpu(i8* %328, i8 zeroext %329)
  br label %331

331:                                              ; preds = %325, %320
  %332 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %333 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %332, i32 0, i32 7
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = ashr i32 %337, 16
  %339 = and i32 %338, 63
  %340 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %341 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %340, i32 0, i32 7
  %342 = load i8*, i8** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sdiv i32 %343, 4
  %345 = sub nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %342, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %351 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @cond_le32_to_cpu(i32 %349, i32 %352)
  %354 = ashr i32 %353, 16
  %355 = and i32 %354, 31
  %356 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %357 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %356, i32 0, i32 7
  %358 = load i8*, i8** %357, align 8
  %359 = load i32, i32* %10, align 4
  %360 = sdiv i32 %359, 4
  %361 = sub nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %358, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %367 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @cond_le32_to_cpu(i32 %365, i32 %368)
  %370 = ashr i32 %369, 21
  %371 = and i32 %370, 3
  %372 = load i8, i8* %9, align 1
  %373 = zext i8 %372 to i32
  %374 = load i32, i32* %10, align 4
  %375 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %376 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %379 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %378, i32 0, i32 7
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 0
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = ashr i32 %383, 10
  %385 = and i32 %384, 63
  %386 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %339, i32 %355, i32 %371, i32 %373, i32 %374, i32 %377, i32 %385)
  %387 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %388 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %387, i32 0, i32 7
  %389 = load i8*, i8** %388, align 8
  %390 = load i32, i32* %10, align 4
  %391 = sdiv i32 %390, 4
  %392 = sub nsw i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %389, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %398 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @cond_le32_to_cpu(i32 %396, i32 %399)
  %401 = ashr i32 %400, 16
  %402 = and i32 %401, 31
  %403 = icmp eq i32 %402, 17
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 1, i32 0
  store i32 %405, i32* %12, align 4
  %406 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %407 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %410 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %409, i32 0, i32 7
  %411 = load i8*, i8** %410, align 8
  %412 = bitcast i8* %411 to i32*
  %413 = load i32, i32* %10, align 4
  %414 = sub nsw i32 %413, 4
  %415 = load i32, i32* %12, align 4
  %416 = call i32 @hpsb_packet_received(i32 %408, i32* %412, i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %331, %314
  %418 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %419 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %418, i32 0, i32 9
  %420 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %419, align 8
  %421 = load i32, i32* %6, align 4
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %420, i64 %422
  %424 = load %struct.TYPE_2__*, %struct.TYPE_2__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @le32_to_cpu(i32 %426)
  %428 = and i32 %427, 65535
  store i32 %428, i32* %8, align 4
  %429 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %430 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* %8, align 4
  %433 = sub i32 %431, %432
  %434 = load i32, i32* %7, align 4
  %435 = sub i32 %433, %434
  store i32 %435, i32* %11, align 4
  br label %62

436:                                              ; preds = %62
  %437 = load i32, i32* %6, align 4
  %438 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %439 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  %440 = load i32, i32* %7, align 4
  %441 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %442 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %441, i32 0, i32 1
  store i32 %440, i32* %442, align 4
  %443 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %3, align 8
  %444 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %443, i32 0, i32 8
  %445 = load i64, i64* %13, align 8
  %446 = call i32 @spin_unlock_irqrestore(i32* %444, i64 %445)
  br label %447

447:                                              ; preds = %436, %163, %127, %87
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cond_le32_to_cpu(i32, i32) #1

declare dso_local i32 @packet_length(%struct.dma_rcv_ctx*, i32, i32*, i32, i8 zeroext, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @ohci1394_stop_context(%struct.ti_ohci*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBGMSG(i8*, ...) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @insert_dma_buffer(%struct.dma_rcv_ctx*, i32) #1

declare dso_local i32 @header_le32_to_cpu(i8*, i8 zeroext) #1

declare dso_local i32 @hpsb_packet_received(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
