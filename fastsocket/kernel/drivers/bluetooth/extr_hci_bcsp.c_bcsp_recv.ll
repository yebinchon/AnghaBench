; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64, %struct.bcsp_struct* }
%struct.bcsp_struct = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"hu %p count %d rx_state %d rx_count %ld\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Short BCSP packet\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error in BCSP hdr checksum\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Out-of-order packet arrived, got %u expected %u\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Checksum failed: computed %04x received %04x\00", align 1
@BCSP_ESCSTATE_NOESC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Can't allocate mem for new packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8*, i32)* @bcsp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcsp_recv(%struct.hci_uart* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_uart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcsp_struct*, align 8
  %9 = alloca i8*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 1
  %12 = load %struct.bcsp_struct*, %struct.bcsp_struct** %11, align 8
  store %struct.bcsp_struct* %12, %struct.bcsp_struct** %8, align 8
  %13 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %16 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %19 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %13, i32 %14, i32 %17, i32 %20)
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %284, %213, %197, %188, %148, %127, %94, %51, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %285

26:                                               ; preds = %23
  %27 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %28 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 192
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %39 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @kfree_skb(%struct.TYPE_4__* %40)
  %42 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %43 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %42, i32 0, i32 0
  store i32 128, i32* %43, align 8
  %44 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %45 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %51

46:                                               ; preds = %31
  %47 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @bcsp_unslip_one_byte(%struct.bcsp_struct* %47, i8 zeroext %49)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %23

56:                                               ; preds = %26
  %57 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %58 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %284 [
    i32 132, label %60
    i32 130, label %170
    i32 131, label %189
    i32 129, label %226
    i32 128, label %239
  ]

60:                                               ; preds = %56
  %61 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %62 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %69 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %67, %74
  %76 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %77 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %75, %82
  %84 = xor i32 %83, -1
  %85 = and i32 255, %84
  %86 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %87 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %85, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %60
  %95 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %97 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @kfree_skb(%struct.TYPE_4__* %98)
  %100 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %101 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %100, i32 0, i32 0
  store i32 129, i32* %101, align 8
  %102 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %103 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %23

104:                                              ; preds = %60
  %105 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %106 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %104
  %115 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %116 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 7
  %123 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %124 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %114
  %128 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %129 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 7
  %136 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %137 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %141 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i32 @kfree_skb(%struct.TYPE_4__* %142)
  %144 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %145 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %144, i32 0, i32 0
  store i32 129, i32* %145, align 8
  %146 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %147 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  br label %23

148:                                              ; preds = %114, %104
  %149 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %150 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %149, i32 0, i32 0
  store i32 130, i32* %150, align 8
  %151 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %152 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %151, i32 0, i32 3
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 4
  %159 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %160 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %159, i32 0, i32 3
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 4
  %167 = add nsw i32 %158, %166
  %168 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %169 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %23

170:                                              ; preds = %56
  %171 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %172 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 64
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %170
  %181 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %182 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %181, i32 0, i32 0
  store i32 131, i32* %182, align 8
  %183 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %184 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %183, i32 0, i32 1
  store i32 2, i32* %184, align 4
  br label %188

185:                                              ; preds = %170
  %186 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %187 = call i32 @bcsp_complete_rx_pkt(%struct.hci_uart* %186)
  br label %188

188:                                              ; preds = %185, %180
  br label %23

189:                                              ; preds = %56
  %190 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %191 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @bitrev16(i32 %192)
  %194 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %195 = call i32 @bscp_get_crc(%struct.bcsp_struct* %194)
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %189
  %198 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %199 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @bitrev16(i32 %200)
  %202 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %203 = call i32 @bscp_get_crc(%struct.bcsp_struct* %202)
  %204 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %201, i32 %203)
  %205 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %206 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %205, i32 0, i32 3
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = call i32 @kfree_skb(%struct.TYPE_4__* %207)
  %209 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %210 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %209, i32 0, i32 0
  store i32 129, i32* %210, align 8
  %211 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %212 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %211, i32 0, i32 1
  store i32 0, i32* %212, align 4
  br label %23

213:                                              ; preds = %189
  %214 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %215 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %218 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %217, i32 0, i32 3
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = sub nsw i32 %221, 2
  %223 = call i32 @skb_trim(%struct.TYPE_4__* %216, i32 %222)
  %224 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %225 = call i32 @bcsp_complete_rx_pkt(%struct.hci_uart* %224)
  br label %23

226:                                              ; preds = %56
  %227 = load i8*, i8** %9, align 8
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  switch i32 %229, label %233 [
    i32 192, label %230
  ]

230:                                              ; preds = %226
  %231 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %232 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %231, i32 0, i32 0
  store i32 128, i32* %232, align 8
  br label %234

233:                                              ; preds = %226
  br label %234

234:                                              ; preds = %233, %230
  %235 = load i8*, i8** %9, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %9, align 8
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %7, align 4
  br label %284

239:                                              ; preds = %56
  %240 = load i8*, i8** %9, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  switch i32 %242, label %248 [
    i32 192, label %243
  ]

243:                                              ; preds = %239
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %9, align 8
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %7, align 4
  br label %283

248:                                              ; preds = %239
  %249 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %250 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %249, i32 0, i32 0
  store i32 132, i32* %250, align 8
  %251 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %252 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %251, i32 0, i32 1
  store i32 4, i32* %252, align 4
  %253 = load i32, i32* @BCSP_ESCSTATE_NOESC, align 4
  %254 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %255 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %254, i32 0, i32 5
  store i32 %253, i32* %255, align 4
  %256 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %257 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @BCSP_CRC_INIT(i32 %258)
  %260 = load i32, i32* @GFP_ATOMIC, align 4
  %261 = call %struct.TYPE_4__* @bt_skb_alloc(i32 4101, i32 %260)
  %262 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %263 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %262, i32 0, i32 3
  store %struct.TYPE_4__* %261, %struct.TYPE_4__** %263, align 8
  %264 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %265 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %264, i32 0, i32 3
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = icmp ne %struct.TYPE_4__* %266, null
  br i1 %267, label %274, label %268

268:                                              ; preds = %248
  %269 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %270 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %271 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %270, i32 0, i32 0
  store i32 129, i32* %271, align 8
  %272 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %273 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %272, i32 0, i32 1
  store i32 0, i32* %273, align 4
  store i32 0, i32* %4, align 4
  br label %287

274:                                              ; preds = %248
  %275 = load %struct.hci_uart*, %struct.hci_uart** %5, align 8
  %276 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.bcsp_struct*, %struct.bcsp_struct** %8, align 8
  %280 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %279, i32 0, i32 3
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  store i8* %278, i8** %282, align 8
  br label %283

283:                                              ; preds = %274, %243
  br label %284

284:                                              ; preds = %56, %283, %234
  br label %23

285:                                              ; preds = %23
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %285, %268
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @bcsp_unslip_one_byte(%struct.bcsp_struct*, i8 zeroext) #1

declare dso_local i32 @bcsp_complete_rx_pkt(%struct.hci_uart*) #1

declare dso_local i32 @bitrev16(i32) #1

declare dso_local i32 @bscp_get_crc(%struct.bcsp_struct*) #1

declare dso_local i32 @skb_trim(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @BCSP_CRC_INIT(i32) #1

declare dso_local %struct.TYPE_4__* @bt_skb_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
