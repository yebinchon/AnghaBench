; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_5__*, i64, %struct.rx_queue* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rx_queue = type { i32, i32, i32, i64, i32*, i32, %struct.TYPE_4__, i32*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i8*, i8*, i32, i32, %struct.TYPE_5__* }
%struct.rx_desc = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't allocate rx ring (%d bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't allocate rx skb ring\0A\00", align 1
@LRO_F_NAPI = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@mv643xx_get_skb_header = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, i32)* @rxq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_init(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_queue*, align 8
  %7 = alloca %struct.rx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %12 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %11, i32 0, i32 4
  %13 = load %struct.rx_queue*, %struct.rx_queue** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %13, i64 %15
  store %struct.rx_queue* %16, %struct.rx_queue** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %19 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %21 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %26 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %28 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %32 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %42 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %47 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %50 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @ioremap(i64 %48, i32 %51)
  %53 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %54 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %56 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %59 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  br label %74

60:                                               ; preds = %39, %2
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %69 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %68, i32 0, i32 3
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32* @dma_alloc_coherent(i32 %66, i32 %67, i64* %69, i32 %70)
  %72 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %73 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %60, %45
  %75 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %76 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* @KERN_ERR, align 4
  %81 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %82 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, %struct.TYPE_6__*, i8*, ...) @dev_printk(i32 %80, %struct.TYPE_6__* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %232

87:                                               ; preds = %74
  %88 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %89 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @memset(i32* %90, i32 0, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %95 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %97 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32* @kmalloc(i32 %101, i32 %102)
  %104 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %105 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %104, i32 0, i32 7
  store i32* %103, i32** %105, align 8
  %106 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %107 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %87
  %111 = load i32, i32* @KERN_ERR, align 4
  %112 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %113 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = call i32 (i32, %struct.TYPE_6__*, i8*, ...) @dev_printk(i32 %111, %struct.TYPE_6__* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %202

117:                                              ; preds = %87
  %118 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %119 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = bitcast i32* %120 to %struct.rx_desc*
  store %struct.rx_desc* %121, %struct.rx_desc** %7, align 8
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %150, %117
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %125 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %122
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %133 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %128
  %138 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %139 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 8
  %144 = add i64 %140, %143
  %145 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %145, i64 %147
  %149 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %148, i32 0, i32 0
  store i64 %144, i64* %149, align 8
  br label %150

150:                                              ; preds = %137
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %122

153:                                              ; preds = %122
  %154 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %155 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %154, i32 0, i32 2
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %158 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 9
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %159, align 8
  %160 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %161 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 8
  %163 = call i32 @memset(i32* %162, i32 0, i32 4)
  %164 = load i32, i32* @LRO_F_NAPI, align 4
  %165 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %166 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 7
  store i32 %164, i32* %167, align 8
  %168 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %169 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %170 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 6
  store i8* %168, i8** %171, align 8
  %172 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %173 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %174 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 5
  store i8* %172, i8** %175, align 8
  %176 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %177 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ARRAY_SIZE(i32 %178)
  %180 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %181 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  store i32 %179, i32* %182, align 8
  %183 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %184 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32 32, i32* %185, align 8
  %186 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %187 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %190 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %193 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @mv643xx_get_skb_header, align 4
  %196 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %197 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %200 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %199, i32 0, i32 5
  %201 = call i32 @memset(i32* %200, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %235

202:                                              ; preds = %110
  %203 = load i32, i32* %5, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %208 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sle i32 %206, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %213 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @iounmap(i32* %214)
  br label %231

216:                                              ; preds = %205, %202
  %217 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %218 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %217, i32 0, i32 2
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %225 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.rx_queue*, %struct.rx_queue** %6, align 8
  %228 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @dma_free_coherent(i32 %222, i32 %223, i32* %226, i64 %229)
  br label %231

231:                                              ; preds = %216, %211
  br label %232

232:                                              ; preds = %231, %79
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %232, %153
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
