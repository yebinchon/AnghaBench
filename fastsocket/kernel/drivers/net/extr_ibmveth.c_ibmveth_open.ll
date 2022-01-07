; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.ibmveth_adapter = type { i32, i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_8__*, i8*, i8*, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_7__ = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i64 }
%union.ibmveth_buf_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"open starting\0A\00", align 1
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to allocate filter or buffer list pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to allocate rx queue pages\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"unable to map filter or buffer list pages\0A\00", align 1
@IBMVETH_BUF_VALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"buffer list @ 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"filter list @ 0x%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"receive q   @ 0x%p\0A\00", align 1
@VIO_IRQ_DISABLE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"h_register_logical_lan failed with %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"buffer TCE:0x%llx filter TCE:0x%llx rxq desc:0x%llx MAC:0x%llx\0A\00", align 1
@ENONET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"unable to alloc pool\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"registering irq 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"unable to request irq 0x%x, rc %d\0A\00", align 1
@H_BUSY = common dso_local global i32 0, align 4
@IBMVETH_BUFF_OH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"unable to allocate bounce buffer\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to map bounce buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"initial replenish cycle\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"open complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ibmveth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmveth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ibmveth_buf_desc, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ibmveth_adapter* %13, %struct.ibmveth_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %16, i32 0, i32 0
  %18 = call i32 @napi_enable(i32* %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %36, %1
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %24, i32 0, i32 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @get_zeroed_page(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i64 @get_zeroed_page(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %50, i32 0, i32 9
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54, %39
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %384

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kmalloc(i32 %75, i32 %76)
  %78 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %64
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %384

91:                                               ; preds = %64
  %92 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %92, i32 0, i32 3
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store %struct.device* %95, %struct.device** %11, align 8
  %96 = load %struct.device*, %struct.device** %11, align 8
  %97 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %97, i32 0, i32 9
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %101 = call i8* @dma_map_single(%struct.device* %96, i8* %99, i32 4096, i32 %100)
  %102 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load %struct.device*, %struct.device** %11, align 8
  %105 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %105, i32 0, i32 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %109 = call i8* @dma_map_single(%struct.device* %104, i8* %107, i32 4096, i32 %108)
  %110 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.device*, %struct.device** %11, align 8
  %113 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %122 = call i8* @dma_map_single(%struct.device* %112, i8* %116, i32 %120, i32 %121)
  %123 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  store i8* %122, i8** %125, align 8
  %126 = load %struct.device*, %struct.device** %11, align 8
  %127 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @dma_mapping_error(%struct.device* %126, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %91
  %133 = load %struct.device*, %struct.device** %11, align 8
  %134 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @dma_mapping_error(%struct.device* %133, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %132
  %140 = load %struct.device*, %struct.device** %11, align 8
  %141 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @dma_mapping_error(%struct.device* %140, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %139, %132, %91
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %8, align 4
  br label %384

152:                                              ; preds = %139
  %153 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %154 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %158 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %161 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 8
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.net_device*, %struct.net_device** %3, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @memcpy(i32* %5, i32 %165, i32 %168)
  %170 = load i32, i32* %5, align 4
  %171 = ashr i32 %170, 16
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @IBMVETH_BUF_VALID, align 4
  %173 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %174 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %172, %176
  %178 = bitcast %union.ibmveth_buf_desc* %9 to %struct.TYPE_5__*
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %181 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %184 = bitcast %union.ibmveth_buf_desc* %9 to %struct.TYPE_5__*
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.net_device*, %struct.net_device** %3, align 8
  %187 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %188 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %187, i32 0, i32 9
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %189)
  %191 = load %struct.net_device*, %struct.net_device** %3, align 8
  %192 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %193 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %192, i32 0, i32 8
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %194)
  %196 = load %struct.net_device*, %struct.net_device** %3, align 8
  %197 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %198 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %196, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %200)
  %202 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %203 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %202, i32 0, i32 3
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @VIO_IRQ_DISABLE, align 4
  %208 = call i32 @h_vio_signal(i32 %206, i32 %207)
  %209 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = bitcast %union.ibmveth_buf_desc* %9 to { i32, i8* }*
  %212 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %211, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i64 @ibmveth_register_logical_lan(%struct.ibmveth_adapter* %209, i32 %213, i8* %215, i32 %210)
  store i64 %216, i64* %7, align 8
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* @H_SUCCESS, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %152
  %221 = load %struct.net_device*, %struct.net_device** %3, align 8
  %222 = load i64, i64* %7, align 8
  %223 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %222)
  %224 = load %struct.net_device*, %struct.net_device** %3, align 8
  %225 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %226 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %225, i32 0, i32 6
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %229 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %228, i32 0, i32 5
  %230 = load i8*, i8** %229, align 8
  %231 = bitcast %union.ibmveth_buf_desc* %9 to i32*
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %224, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i8* %227, i8* %230, i32 %232, i32 %233)
  %235 = load i32, i32* @ENONET, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %8, align 4
  br label %384

237:                                              ; preds = %152
  store i32 0, i32* %10, align 4
  br label %238

238:                                              ; preds = %275, %237
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %278

242:                                              ; preds = %238
  %243 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %244 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %243, i32 0, i32 4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %242
  br label %275

253:                                              ; preds = %242
  %254 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %255 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %254, i32 0, i32 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 %258
  %260 = call i64 @ibmveth_alloc_buffer_pool(%struct.TYPE_8__* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %253
  %263 = load %struct.net_device*, %struct.net_device** %3, align 8
  %264 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %263, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %265 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %266 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %265, i32 0, i32 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = load i32, i32* @ENOMEM, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %8, align 4
  br label %384

274:                                              ; preds = %253
  br label %275

275:                                              ; preds = %274, %252
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %238

278:                                              ; preds = %238
  %279 = load %struct.net_device*, %struct.net_device** %3, align 8
  %280 = load %struct.net_device*, %struct.net_device** %3, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %279, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %282)
  %284 = load %struct.net_device*, %struct.net_device** %3, align 8
  %285 = getelementptr inbounds %struct.net_device, %struct.net_device* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.net_device*, %struct.net_device** %3, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.net_device*, %struct.net_device** %3, align 8
  %291 = call i32 @request_irq(i32 %286, i32 (i32, %struct.net_device*)* @ibmveth_interrupt, i32 0, i32 %289, %struct.net_device* %290)
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %319

294:                                              ; preds = %278
  %295 = load %struct.net_device*, %struct.net_device** %3, align 8
  %296 = load %struct.net_device*, %struct.net_device** %3, align 8
  %297 = getelementptr inbounds %struct.net_device, %struct.net_device* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %8, align 4
  %300 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %295, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %316, %294
  %302 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %303 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %302, i32 0, i32 3
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @h_free_logical_lan(i32 %306)
  store i32 %307, i32* %8, align 4
  br label %308

308:                                              ; preds = %301
  %309 = load i32, i32* %8, align 4
  %310 = call i64 @H_IS_LONG_BUSY(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* @H_BUSY, align 4
  %315 = icmp eq i32 %313, %314
  br label %316

316:                                              ; preds = %312, %308
  %317 = phi i1 [ true, %308 ], [ %315, %312 ]
  br i1 %317, label %301, label %318

318:                                              ; preds = %316
  br label %384

319:                                              ; preds = %278
  %320 = load %struct.net_device*, %struct.net_device** %3, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %324 = add nsw i32 %322, %323
  %325 = load i32, i32* @GFP_KERNEL, align 4
  %326 = call i8* @kmalloc(i32 %324, i32 %325)
  %327 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %328 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %327, i32 0, i32 2
  store i8* %326, i8** %328, align 8
  %329 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %330 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %329, i32 0, i32 2
  %331 = load i8*, i8** %330, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %338, label %333

333:                                              ; preds = %319
  %334 = load %struct.net_device*, %struct.net_device** %3, align 8
  %335 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %334, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %336 = load i32, i32* @ENOMEM, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %8, align 4
  br label %378

338:                                              ; preds = %319
  %339 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %340 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %339, i32 0, i32 3
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %344 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.net_device*, %struct.net_device** %3, align 8
  %347 = getelementptr inbounds %struct.net_device, %struct.net_device* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %350 = add nsw i32 %348, %349
  %351 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %352 = call i8* @dma_map_single(%struct.device* %342, i8* %345, i32 %350, i32 %351)
  %353 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %354 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %353, i32 0, i32 1
  store i8* %352, i8** %354, align 8
  %355 = load %struct.device*, %struct.device** %11, align 8
  %356 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %357 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = call i64 @dma_mapping_error(%struct.device* %355, i8* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %338
  %362 = load %struct.net_device*, %struct.net_device** %3, align 8
  %363 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %362, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %8, align 4
  br label %378

366:                                              ; preds = %338
  %367 = load %struct.net_device*, %struct.net_device** %3, align 8
  %368 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %367, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %369 = load %struct.net_device*, %struct.net_device** %3, align 8
  %370 = getelementptr inbounds %struct.net_device, %struct.net_device* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.net_device*, %struct.net_device** %3, align 8
  %373 = call i32 @ibmveth_interrupt(i32 %371, %struct.net_device* %372)
  %374 = load %struct.net_device*, %struct.net_device** %3, align 8
  %375 = call i32 @netif_start_queue(%struct.net_device* %374)
  %376 = load %struct.net_device*, %struct.net_device** %3, align 8
  %377 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %376, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %391

378:                                              ; preds = %361, %333
  %379 = load %struct.net_device*, %struct.net_device** %3, align 8
  %380 = getelementptr inbounds %struct.net_device, %struct.net_device* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.net_device*, %struct.net_device** %3, align 8
  %383 = call i32 @free_irq(i32 %381, %struct.net_device* %382)
  br label %384

384:                                              ; preds = %378, %318, %262, %220, %147, %86, %59
  %385 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %386 = call i32 @ibmveth_cleanup(%struct.ibmveth_adapter* %385)
  %387 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %388 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %387, i32 0, i32 0
  %389 = call i32 @napi_disable(i32* %388)
  %390 = load i32, i32* %8, align 4
  store i32 %390, i32* %2, align 4
  br label %391

391:                                              ; preds = %384, %366
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @h_vio_signal(i32, i32) #1

declare dso_local i64 @ibmveth_register_logical_lan(%struct.ibmveth_adapter*, i32, i8*, i32) #1

declare dso_local i64 @ibmveth_alloc_buffer_pool(%struct.TYPE_8__*) #1

declare dso_local i32 @request_irq(i32, i32 (i32, %struct.net_device*)*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ibmveth_interrupt(i32, %struct.net_device*) #1

declare dso_local i32 @h_free_logical_lan(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ibmveth_cleanup(%struct.ibmveth_adapter*) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
