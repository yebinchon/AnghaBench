; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_decode_one_descr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_decode_one_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_4__, %struct.spider_net_descr_chain, %struct.net_device*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.spider_net_descr_chain = type { %struct.spider_net_descr*, %struct.spider_net_descr* }
%struct.spider_net_descr = type { i32*, %struct.spider_net_descr*, %struct.spider_net_hw_descr* }
%struct.spider_net_hw_descr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SPIDER_NET_DESCR_CARDOWNED = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@SPIDER_NET_MAX_FRAME = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_RESPONSE_ERROR = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_PROTECTION_ERROR = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_FORCE_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"dropping RX descriptor with state %d\0A\00", align 1
@SPIDER_NET_DESCR_COMPLETE = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_FRAME_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RX descriptor with unknown state %d\0A\00", align 1
@SPIDER_NET_DESTROY_RX_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"error in received descriptor found, data_status=x%08x, data_error=x%08x\0A\00", align 1
@SPIDER_NET_DESCR_BAD_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"bad status, cmd_status=x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"buf_addr=x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"buf_size=x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"next_descr_addr=x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"result_size=x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"valid_size=x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"data_status=x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"data_error=x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"which=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_decode_one_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_decode_one_descr(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.spider_net_descr_chain*, align 8
  %6 = alloca %struct.spider_net_descr*, align 8
  %7 = alloca %struct.spider_net_hw_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  %10 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %11 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %13, i32 0, i32 1
  store %struct.spider_net_descr_chain* %14, %struct.spider_net_descr_chain** %5, align 8
  %15 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %16 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %15, i32 0, i32 1
  %17 = load %struct.spider_net_descr*, %struct.spider_net_descr** %16, align 8
  store %struct.spider_net_descr* %17, %struct.spider_net_descr** %6, align 8
  %18 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %19 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %18, i32 0, i32 2
  %20 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %19, align 8
  store %struct.spider_net_hw_descr* %20, %struct.spider_net_hw_descr** %7, align 8
  %21 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %22 = call i32 @spider_net_get_descr_status(%struct.spider_net_hw_descr* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SPIDER_NET_DESCR_CARDOWNED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %208

31:                                               ; preds = %26
  %32 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %33 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %32, i32 0, i32 1
  %34 = load %struct.spider_net_descr*, %struct.spider_net_descr** %33, align 8
  %35 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %5, align 8
  %36 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %35, i32 0, i32 1
  store %struct.spider_net_descr* %34, %struct.spider_net_descr** %36, align 8
  %37 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %38 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %41 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  %42 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %43 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SPIDER_NET_MAX_FRAME, align 4
  %47 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %48 = call i32 @pci_unmap_single(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SPIDER_NET_DESCR_RESPONSE_ERROR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SPIDER_NET_DESCR_PROTECTION_ERROR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SPIDER_NET_DESCR_FORCE_END, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56, %52, %31
  %61 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %62 = call i64 @netif_msg_rx_err(%struct.spider_net_card* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %191

75:                                               ; preds = %56
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SPIDER_NET_DESCR_COMPLETE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @SPIDER_NET_DESCR_FRAME_END, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %85 = call i64 @netif_msg_rx_err(%struct.spider_net_card* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %89 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %88, i32 0, i32 2
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %96 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %191

100:                                              ; preds = %79, %75
  %101 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %102 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SPIDER_NET_DESTROY_RX_FLAGS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %100
  %108 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %109 = call i64 @netif_msg_rx_err(%struct.spider_net_card* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %113 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %112, i32 0, i32 2
  %114 = load %struct.net_device*, %struct.net_device** %113, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %117 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %120 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %111, %107
  br label %191

124:                                              ; preds = %100
  %125 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %126 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SPIDER_NET_DESCR_BAD_STATUS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %124
  %132 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %133 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %132, i32 0, i32 2
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %137 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %143 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %147 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %151 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %155 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  %158 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %159 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %160)
  %162 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %163 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  %166 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %167 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %168 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %168, i32 0, i32 0
  %170 = load %struct.spider_net_descr*, %struct.spider_net_descr** %169, align 8
  %171 = ptrtoint %struct.spider_net_descr* %166 to i64
  %172 = ptrtoint %struct.spider_net_descr* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 24
  %175 = trunc i64 %174 to i32
  %176 = call i32 @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %175)
  %177 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %178 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %191

182:                                              ; preds = %124
  %183 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %184 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %185 = call i32 @spider_net_pass_skb_up(%struct.spider_net_descr* %183, %struct.spider_net_card* %184)
  %186 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %187 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %186, i32 0, i32 0
  store i32* null, i32** %187, align 8
  %188 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %189 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %190 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  store i32 1, i32* %2, align 4
  br label %208

191:                                              ; preds = %131, %123, %94, %69
  %192 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %193 = call i64 @netif_msg_rx_err(%struct.spider_net_card* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %197 = call i32 @show_rx_chain(%struct.spider_net_card* %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %200 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @dev_kfree_skb_irq(i32* %201)
  %203 = load %struct.spider_net_descr*, %struct.spider_net_descr** %6, align 8
  %204 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %203, i32 0, i32 0
  store i32* null, i32** %204, align 8
  %205 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %206 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %7, align 8
  %207 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %198, %182, %30
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @spider_net_get_descr_status(%struct.spider_net_hw_descr*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.spider_net_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spider_net_pass_skb_up(%struct.spider_net_descr*, %struct.spider_net_card*) #1

declare dso_local i32 @show_rx_chain(%struct.spider_net_card*) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
