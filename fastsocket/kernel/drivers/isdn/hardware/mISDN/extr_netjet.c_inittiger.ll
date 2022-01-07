; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_inittiger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_inittiger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i64, %struct.TYPE_6__, i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i64 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i64 }
%struct.TYPE_4__ = type { i8*, i8* }

@NJ_DMA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: No DMA memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: DMA outside 32 bit\0A\00", align 1
@NJ_DMA_TXSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: no B%d send buffer\0A\00", align 1
@NJ_DMA_RXSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: no B%d recv buffer\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"%s: send buffer phy %#x - %#x - %#x  virt %p size %zu u32\0A\00", align 1
@NJ_DMA_READ_START = common dso_local global i64 0, align 8
@NJ_DMA_READ_IRQ = common dso_local global i64 0, align 8
@NJ_DMA_READ_END = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"%s: recv buffer phy %#x - %#x - %#x  virt %p size %zu u32\0A\00", align 1
@NJ_DMA_WRITE_START = common dso_local global i64 0, align 8
@NJ_DMA_WRITE_IRQ = common dso_local global i64 0, align 8
@NJ_DMA_WRITE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_hw*)* @inittiger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inittiger(%struct.tiger_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiger_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  %5 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %6 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @NJ_DMA_SIZE, align 4
  %9 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %10 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %9, i32 0, i32 3
  %11 = call i64 @pci_alloc_consistent(i32 %7, i32 %8, i64* %10)
  %12 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %13 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %12, i32 0, i32 4
  store i64 %11, i64* %13, align 8
  %14 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %15 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %20 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %322

25:                                               ; preds = %1
  %26 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %27 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp ugt i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %33 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %322

38:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %101, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %104

42:                                               ; preds = %39
  %43 = load i32, i32* @NJ_DMA_TXSIZE, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmalloc(i32 %43, i32 %44)
  %46 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %47 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %46, i32 0, i32 6
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %45, i8** %52, align 8
  %53 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %54 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %53, i32 0, i32 6
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %42
  %63 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %64 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %322

71:                                               ; preds = %42
  %72 = load i32, i32* @NJ_DMA_RXSIZE, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kmalloc(i32 %72, i32 %73)
  %75 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %76 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %75, i32 0, i32 6
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %74, i8** %81, align 8
  %82 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %83 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %82, i32 0, i32 6
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %71
  %92 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %93 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %322

100:                                              ; preds = %71
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %39

104:                                              ; preds = %39
  %105 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %106 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @NJ_DMA_SIZE, align 4
  %109 = call i32 @memset(i64 %107, i32 255, i32 %108)
  %110 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %111 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %114 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  store i64 %112, i64* %115, align 8
  %116 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %117 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %121 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  %123 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %124 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @NJ_DMA_TXSIZE, align 4
  %128 = sub nsw i32 %127, 1
  %129 = mul nsw i32 4, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %126, i64 %130
  %132 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %133 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %136 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* @NJ_DMA_TXSIZE, align 4
  %140 = sdiv i32 %139, 2
  %141 = sub nsw i32 %140, 1
  %142 = mul nsw i32 4, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr i8, i8* %138, i64 %143
  %145 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %146 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load i32, i32* @NJ_DMA_TXSIZE, align 4
  %149 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %150 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @debug, align 4
  %153 = load i32, i32* @DEBUG_HW, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %181

156:                                              ; preds = %104
  %157 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %158 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %161 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %165 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %169 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %173 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %177 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @pr_notice(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %159, i8* %163, i8* %167, i8* %171, i64 %175, i32 %179)
  br label %181

181:                                              ; preds = %156, %104
  %182 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %183 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %187 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @NJ_DMA_READ_START, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @outl(i8* %185, i64 %190)
  %192 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %193 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %197 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @NJ_DMA_READ_IRQ, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @outl(i8* %195, i64 %200)
  %202 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %203 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %207 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @NJ_DMA_READ_END, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @outl(i8* %205, i64 %210)
  %212 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %213 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @NJ_DMA_SIZE, align 4
  %216 = sdiv i32 %215, 2
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %214, %217
  %219 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %220 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 4
  store i64 %218, i64* %221, align 8
  %222 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %223 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i8*
  %226 = load i32, i32* @NJ_DMA_SIZE, align 4
  %227 = sdiv i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr i8, i8* %225, i64 %228
  %230 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %231 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 3
  store i8* %229, i8** %232, align 8
  %233 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %234 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* @NJ_DMA_RXSIZE, align 4
  %238 = sub nsw i32 %237, 1
  %239 = mul nsw i32 4, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr i8, i8* %236, i64 %240
  %242 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %243 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  store i8* %241, i8** %244, align 8
  %245 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %246 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* @NJ_DMA_RXSIZE, align 4
  %250 = sdiv i32 %249, 2
  %251 = sub nsw i32 %250, 1
  %252 = mul nsw i32 4, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr i8, i8* %248, i64 %253
  %255 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %256 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  store i8* %254, i8** %257, align 8
  %258 = load i32, i32* @NJ_DMA_RXSIZE, align 4
  %259 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %260 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  store i32 %258, i32* %261, align 8
  %262 = load i32, i32* @debug, align 4
  %263 = load i32, i32* @DEBUG_HW, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %291

266:                                              ; preds = %181
  %267 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %268 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %271 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 3
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %275 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %279 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %283 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %287 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @pr_notice(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %269, i8* %273, i8* %277, i8* %281, i64 %285, i32 %289)
  br label %291

291:                                              ; preds = %266, %181
  %292 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %293 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %297 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @NJ_DMA_WRITE_START, align 8
  %300 = add nsw i64 %298, %299
  %301 = call i32 @outl(i8* %295, i64 %300)
  %302 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %303 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 2
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %307 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @NJ_DMA_WRITE_IRQ, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @outl(i8* %305, i64 %310)
  %312 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %313 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %317 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @NJ_DMA_WRITE_END, align 8
  %320 = add nsw i64 %318, %319
  %321 = call i32 @outl(i8* %315, i64 %320)
  store i32 0, i32* %2, align 4
  br label %322

322:                                              ; preds = %291, %91, %62, %31, %18
  %323 = load i32, i32* %2, align 4
  ret i32 %323
}

declare dso_local i64 @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i8*, i8*, i8*, i64, i32) #1

declare dso_local i32 @outl(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
