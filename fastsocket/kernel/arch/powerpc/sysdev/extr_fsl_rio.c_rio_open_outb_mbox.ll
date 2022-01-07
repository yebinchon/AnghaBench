; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_open_outb_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_open_outb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i32, i8**, i8*, i64, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@RIO_MIN_TX_RING_SIZE = common dso_local global i32 0, align 4
@RIO_MAX_TX_RING_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RIO_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RIO_MSG_DESC_SIZE = common dso_local global i32 0, align 4
@fsl_rio_tx_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"msg_tx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_open_outb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rio_priv*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %15 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %14, i32 0, i32 0
  %16 = load %struct.rio_priv*, %struct.rio_priv** %15, align 8
  store %struct.rio_priv* %16, %struct.rio_priv** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @RIO_MIN_TX_RING_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @RIO_MAX_TX_RING_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_power_of_2(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %238

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %34 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %38 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %125, %31
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %43 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %128

47:                                               ; preds = %40
  %48 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %49 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %52 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %53 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @dma_alloc_coherent(i32 %50, i32 %51, i32* %58, i32 %59)
  %61 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %62 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %60, i8** %67, align 8
  %68 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %69 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %124, label %77

77:                                               ; preds = %47
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %120, %77
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %83 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %80
  %88 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %89 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %119

97:                                               ; preds = %87
  %98 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %99 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %102 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %103 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %111 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dma_free_coherent(i32 %100, i32 %101, i8* %109, i32 %117)
  br label %119

119:                                              ; preds = %97, %87
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %80

123:                                              ; preds = %80
  br label %238

124:                                              ; preds = %47
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %40

128:                                              ; preds = %40
  %129 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %130 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %133 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @RIO_MSG_DESC_SIZE, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %139 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @dma_alloc_coherent(i32 %131, i32 %137, i32* %140, i32 %141)
  %143 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %144 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i8* %142, i8** %145, align 8
  %146 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %147 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %128
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %12, align 4
  br label %259

154:                                              ; preds = %128
  %155 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %156 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %160 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @RIO_MSG_DESC_SIZE, align 4
  %164 = mul nsw i32 %162, %163
  %165 = call i32 @memset(i8* %158, i32 0, i32 %164)
  %166 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %167 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  %169 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %170 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %169, i32 0, i32 2
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 4
  %173 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %174 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @out_be32(i32* %172, i32 %176)
  %178 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %179 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %178, i32 0, i32 2
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %183 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @out_be32(i32* %181, i32 %185)
  %187 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %188 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %187, i32 0, i32 2
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = call i32 @out_be32(i32* %190, i32 4)
  %192 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %193 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %192, i32 0, i32 2
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = call i32 @out_be32(i32* %195, i32 179)
  %197 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %198 = call i32 @IRQ_RIO_TX(%struct.rio_mport* %197)
  %199 = load i32, i32* @fsl_rio_tx_handler, align 4
  %200 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %201 = bitcast %struct.rio_mport* %200 to i8*
  %202 = call i32 @request_irq(i32 %198, i32 %199, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %154
  br label %240

206:                                              ; preds = %154
  %207 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %208 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %207, i32 0, i32 2
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = call i32 @out_be32(i32* %210, i32 1049120)
  %212 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %213 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %212, i32 0, i32 2
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %217 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %216, i32 0, i32 2
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = call i32 @in_be32(i32* %219)
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @get_bitmask_order(i32 %221)
  %223 = sub nsw i32 %222, 2
  %224 = shl i32 %223, 12
  %225 = or i32 %220, %224
  %226 = call i32 @out_be32(i32* %215, i32 %225)
  %227 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %228 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %227, i32 0, i32 2
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %232 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %231, i32 0, i32 2
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = call i32 @in_be32(i32* %234)
  %236 = or i32 %235, 1
  %237 = call i32 @out_be32(i32* %230, i32 %236)
  br label %238

238:                                              ; preds = %206, %123, %28
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %5, align 4
  br label %294

240:                                              ; preds = %205
  %241 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %242 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %245 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @RIO_MSG_DESC_SIZE, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %251 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %255 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @dma_free_coherent(i32 %243, i32 %249, i8* %253, i32 %257)
  br label %259

259:                                              ; preds = %240, %151
  store i32 0, i32* %10, align 4
  br label %260

260:                                              ; preds = %289, %259
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %263 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %292

267:                                              ; preds = %260
  %268 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %269 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %272 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %273 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 3
  %275 = load i8**, i8*** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  %281 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @dma_free_coherent(i32 %270, i32 %271, i8* %279, i32 %287)
  br label %289

289:                                              ; preds = %267
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %10, align 4
  br label %260

292:                                              ; preds = %260
  %293 = load i32, i32* %12, align 4
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %292, %238
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IRQ_RIO_TX(%struct.rio_mport*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @get_bitmask_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
