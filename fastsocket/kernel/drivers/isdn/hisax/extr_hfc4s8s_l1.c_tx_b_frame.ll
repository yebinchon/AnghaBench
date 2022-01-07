; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_tx_b_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_tx_b_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc4s8s_btype = type { i64, i32, i32, %struct.TYPE_15__, %struct.sk_buff*, i32, %struct.hfc4s8s_l1* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.hisax_if*, i32, i8*)* }
%struct.hisax_if = type { i32 }
%struct.sk_buff = type { i32, i64, i32* }
%struct.hfc4s8s_l1 = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@L1_MODE_NULL = common dso_local global i64 0, align 8
@R_FIFO = common dso_local global i32 0, align 4
@L1_MODE_HDLC = common dso_local global i64 0, align 8
@A_F1 = common dso_local global i32 0, align 4
@MAX_F_CNT = common dso_local global i32 0, align 4
@A_F2 = common dso_local global i32 0, align 4
@A_Z2 = common dso_local global i32 0, align 4
@A_Z1 = common dso_local global i32 0, align 4
@A_FIFO_DATA0 = common dso_local global i32 0, align 4
@A_INC_RES_FIFO = common dso_local global i32 0, align 4
@PH_DATA = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc4s8s_btype*)* @tx_b_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_b_frame(%struct.hfc4s8s_btype* %0) #0 {
  %2 = alloca %struct.hfc4s8s_btype*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hfc4s8s_l1*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hfc4s8s_btype* %0, %struct.hfc4s8s_btype** %2, align 8
  %10 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %11 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %10, i32 0, i32 6
  %12 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %11, align 8
  store %struct.hfc4s8s_l1* %12, %struct.hfc4s8s_l1** %4, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %14 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %19 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @L1_MODE_NULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  br label %319

24:                                               ; preds = %17
  %25 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %26 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = load i32, i32* @R_FIFO, align 4
  %29 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %30 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 8
  %33 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %34 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = add nsw i32 %32, %38
  %40 = call i32 @Write_hfc8(%struct.TYPE_16__* %27, i32 %28, i32 %39)
  %41 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %42 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = call i32 @wait_busy(%struct.TYPE_16__* %43)
  br label %45

45:                                               ; preds = %300, %24
  %46 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %47 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @L1_MODE_HDLC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %53 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load i32, i32* @A_F1, align 4
  %56 = call i32 @Read_hfc8(%struct.TYPE_16__* %54, i32 %55)
  %57 = load i32, i32* @MAX_F_CNT, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %60 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %59, i32 0, i32 1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load i32, i32* @A_F2, align 4
  %63 = call i32 @Read_hfc8_stable(%struct.TYPE_16__* %61, i32 %62)
  %64 = load i32, i32* @MAX_F_CNT, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 16
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %51
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 15
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %301

77:                                               ; preds = %73
  br label %79

78:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %81 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %80, i32 0, i32 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %3, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %116, label %84

84:                                               ; preds = %79
  %85 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %86 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %85, i32 0, i32 5
  %87 = call %struct.sk_buff* @skb_dequeue(i32* %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %3, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %84
  %90 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %91 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 4
  %96 = xor i32 %95, -1
  %97 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %98 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %104 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %96
  store i32 %109, i32* %107, align 4
  br label %301

110:                                              ; preds = %84
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %113 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %112, i32 0, i32 4
  store %struct.sk_buff* %111, %struct.sk_buff** %113, align 8
  %114 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %115 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %114, i32 0, i32 2
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %79
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %121 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 4
  %126 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %127 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %133 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %125
  store i32 %138, i32* %136, align 4
  br label %160

139:                                              ; preds = %116
  %140 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %141 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 4
  %146 = xor i32 %145, -1
  %147 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %148 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %154 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %146
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %139, %119
  %161 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %162 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %161, i32 0, i32 1
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load i32, i32* @A_Z2, align 4
  %165 = call i32 @Read_hfc16_stable(%struct.TYPE_16__* %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %167 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %166, i32 0, i32 1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load i32, i32* @A_Z1, align 4
  %170 = call i64 @Read_hfc16(%struct.TYPE_16__* %168, i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = sub nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp sle i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %160
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 384
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %177, %160
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 16
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %301

186:                                              ; preds = %180
  %187 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %191 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %197, %186
  %200 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %204 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32* %207, i32** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %210 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %214 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %213, i32 0, i32 1
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = load i32, i32* @A_FIFO_DATA0, align 4
  %217 = call i32 @SetRegAddr(%struct.TYPE_16__* %215, i32 %216)
  br label %218

218:                                              ; preds = %221, %199
  %219 = load i32, i32* %6, align 4
  %220 = icmp sge i32 %219, 4
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %223 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %222, i32 0, i32 1
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = bitcast i32* %225 to i64*
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (%struct.TYPE_16__*, i64, ...) @fWrite_hfc32(%struct.TYPE_16__* %224, i64 %227)
  %229 = load i32*, i32** %5, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  store i32* %230, i32** %5, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sub nsw i32 %231, 4
  store i32 %232, i32* %6, align 4
  br label %218

233:                                              ; preds = %218
  br label %234

234:                                              ; preds = %238, %233
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %6, align 4
  %237 = icmp ne i32 %235, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %240 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %239, i32 0, i32 1
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %5, align 8
  %244 = load i32, i32* %242, align 4
  %245 = call i32 (%struct.TYPE_16__*, i32, ...) @fWrite_hfc8(%struct.TYPE_16__* %241, i32 %244)
  br label %234

246:                                              ; preds = %234
  %247 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %248 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %249, %252
  br i1 %253, label %254, label %278

254:                                              ; preds = %246
  %255 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %256 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @L1_MODE_HDLC, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %262 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %261, i32 0, i32 1
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  %264 = load i32, i32* @A_INC_RES_FIFO, align 4
  %265 = call i32 @Write_hfc8(%struct.TYPE_16__* %263, i32 %264, i32 1)
  br label %266

266:                                              ; preds = %260, %254
  %267 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* %9, align 8
  %271 = add nsw i64 %270, %269
  store i64 %271, i64* %9, align 8
  %272 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %273 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %272, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %273, align 8
  %274 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %275 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %274, i32 0, i32 2
  store i32 0, i32* %275, align 4
  %276 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %277 = call i32 @dev_kfree_skb(%struct.sk_buff* %276)
  br label %295

278:                                              ; preds = %246
  %279 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %280 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %279, i32 0, i32 1
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = load i32, i32* @R_FIFO, align 4
  %283 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %284 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = mul nsw i32 %285, 8
  %287 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %288 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 1
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 0, i32 2
  %293 = add nsw i32 %286, %292
  %294 = call i32 @Write_hfc8(%struct.TYPE_16__* %281, i32 %282, i32 %293)
  br label %295

295:                                              ; preds = %278, %266
  %296 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %4, align 8
  %297 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %296, i32 0, i32 1
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = call i32 @wait_busy(%struct.TYPE_16__* %298)
  br label %300

300:                                              ; preds = %295
  br i1 true, label %45, label %301

301:                                              ; preds = %300, %185, %89, %76
  %302 = load i64, i64* %9, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %319

304:                                              ; preds = %301
  %305 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %306 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i32 (%struct.hisax_if*, i32, i8*)*, i32 (%struct.hisax_if*, i32, i8*)** %308, align 8
  %310 = load %struct.hfc4s8s_btype*, %struct.hfc4s8s_btype** %2, align 8
  %311 = getelementptr inbounds %struct.hfc4s8s_btype, %struct.hfc4s8s_btype* %310, i32 0, i32 3
  %312 = bitcast %struct.TYPE_15__* %311 to %struct.hisax_if*
  %313 = load i32, i32* @PH_DATA, align 4
  %314 = load i32, i32* @CONFIRM, align 4
  %315 = or i32 %313, %314
  %316 = load i64, i64* %9, align 8
  %317 = inttoptr i64 %316 to i8*
  %318 = call i32 %309(%struct.hisax_if* %312, i32 %315, i8* %317)
  br label %319

319:                                              ; preds = %23, %304, %301
  ret void
}

declare dso_local i32 @Write_hfc8(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @wait_busy(%struct.TYPE_16__*) #1

declare dso_local i32 @Read_hfc8(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @Read_hfc8_stable(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @Read_hfc16_stable(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @Read_hfc16(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @SetRegAddr(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fWrite_hfc32(%struct.TYPE_16__*, i64, ...) #1

declare dso_local i32 @fWrite_hfc8(%struct.TYPE_16__*, i32, ...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
