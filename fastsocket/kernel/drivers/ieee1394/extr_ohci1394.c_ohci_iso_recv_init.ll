; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_recv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i64, i32, i32, i32, %struct.ohci_iso_recv*, %struct.TYPE_6__* }
%struct.ohci_iso_recv = type { i32, i64, i32, i32, i32, %struct.ti_ohci*, i64, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_8__, %struct.dma_cmd*, i64, i64, i64, i64 }
%struct.ti_ohci = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.dma_cmd = type { i32 }
%struct.TYPE_6__ = type { %struct.ti_ohci* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HPSB_ISO_DMA_OLD_ABI = common dso_local global i64 0, align 8
@HPSB_ISO_DMA_PACKET_PER_BUFFER = common dso_local global i64 0, align 8
@PACKET_PER_BUFFER_MODE = common dso_local global i64 0, align 8
@BUFFER_FILL_MODE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ohci_iso_recv_init: DMA buffer too small\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"ohci_iso_recv_init: problem choosing a buffer stride\00", align 1
@OHCI_ISO_MULTICHANNEL_RECEIVE = common dso_local global i32 0, align 4
@OHCI_ISO_RECEIVE = common dso_local global i32 0, align 4
@ohci_iso_recv_task = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OHCI1394_IsoRcvContextControlSet = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvContextControlClear = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvContextMatch = common dso_local global i64 0, align 8
@OHCI1394_IRMultiChanMaskHiClear = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskLoClear = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [119 x i8] c"ohci_iso_recv_init: %s mode, DMA buffer is %lu pages (%u bytes), using %u blocks, buf_stride %u, block_irq_interval %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"buffer-fill\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"packet-per-buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_iso*)* @ohci_iso_recv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_iso_recv_init(%struct.hpsb_iso* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.ti_ohci*, align 8
  %5 = alloca %struct.ohci_iso_recv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  %9 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %10 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %9, i32 0, i32 6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %12, align 8
  store %struct.ti_ohci* %13, %struct.ti_ohci** %4, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ohci_iso_recv* @kmalloc(i32 128, i32 %16)
  store %struct.ohci_iso_recv* %17, %struct.ohci_iso_recv** %5, align 8
  %18 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %19 = icmp ne %struct.ohci_iso_recv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %356

23:                                               ; preds = %1
  %24 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %25 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %26 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %25, i32 0, i32 5
  store %struct.ohci_iso_recv* %24, %struct.ohci_iso_recv** %26, align 8
  %27 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %28 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %29 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %28, i32 0, i32 5
  store %struct.ti_ohci* %27, %struct.ti_ohci** %29, align 8
  %30 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %31 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %33 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %32, i32 0, i32 11
  %34 = call i32 @dma_prog_region_init(%struct.TYPE_8__* %33)
  %35 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %36 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %35, i32 0, i32 12
  store %struct.dma_cmd* null, %struct.dma_cmd** %36, align 8
  %37 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %38 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %43 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HPSB_ISO_DMA_OLD_ABI, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41, %23
  %48 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %49 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HPSB_ISO_DMA_PACKET_PER_BUFFER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47, %41
  %54 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %55 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* @PACKET_PER_BUFFER_MODE, align 8
  %60 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %61 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %66

62:                                               ; preds = %53, %47
  %63 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %64 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %65 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %68 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %66
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %75 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %77 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = sdiv i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %83 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %85 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %352

90:                                               ; preds = %72
  %91 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %92 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %97 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %96, i32 0, i32 4
  store i32 1, i32* %97, align 8
  br label %113

98:                                               ; preds = %90
  %99 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %100 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %103 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %107 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %105, %108
  %110 = mul nsw i32 %101, %109
  %111 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %112 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %98, %95
  %114 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %115 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 4
  %118 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %119 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %124 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 4
  %127 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %128 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %122, %113
  %130 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %131 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %136 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %135, i32 0, i32 4
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %129
  br label %215

138:                                              ; preds = %66
  %139 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %140 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %143 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %145 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %148 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %150 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %151, 4
  %153 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %154 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %138
  %158 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %159 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %160, 4
  %162 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %163 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %157, %138
  %165 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %166 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %171 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %170, i32 0, i32 4
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %174 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %177 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = sdiv i32 %175, %178
  store i32 %179, i32* %8, align 4
  %180 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %181 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %180, i32 0, i32 2
  store i32 8, i32* %181, align 8
  br label %182

182:                                              ; preds = %189, %172
  %183 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %184 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %191 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %192, 2
  store i32 %193, i32* %191, align 8
  br label %182

194:                                              ; preds = %182
  %195 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %196 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %199 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %197, %200
  %202 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %203 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp sgt i32 %201, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %194
  %207 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %208 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @PAGE_SIZE, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %206, %194
  %213 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %352

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214, %137
  %216 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %217 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %216, i32 0, i32 16
  store i64 0, i64* %217, align 8
  %218 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %219 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %218, i32 0, i32 15
  store i64 0, i64* %219, align 8
  %220 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %221 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %220, i32 0, i32 14
  store i64 0, i64* %221, align 8
  %222 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %223 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %222, i32 0, i32 13
  store i64 0, i64* %223, align 8
  %224 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %225 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %224, i32 0, i32 11
  %226 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %227 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = mul i64 4, %229
  %231 = trunc i64 %230 to i32
  %232 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %233 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %232, i32 0, i32 5
  %234 = load %struct.ti_ohci*, %struct.ti_ohci** %233, align 8
  %235 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @dma_prog_region_alloc(%struct.TYPE_8__* %225, i32 %231, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %215
  br label %352

240:                                              ; preds = %215
  %241 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %242 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %241, i32 0, i32 11
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to %struct.dma_cmd*
  %246 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %247 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %246, i32 0, i32 12
  store %struct.dma_cmd* %245, %struct.dma_cmd** %247, align 8
  %248 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %249 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %248, i32 0, i32 10
  %250 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %251 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %256

254:                                              ; preds = %240
  %255 = load i32, i32* @OHCI_ISO_MULTICHANNEL_RECEIVE, align 4
  br label %258

256:                                              ; preds = %240
  %257 = load i32, i32* @OHCI_ISO_RECEIVE, align 4
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %260 = load i32, i32* @ohci_iso_recv_task, align 4
  %261 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %262 = ptrtoint %struct.hpsb_iso* %261 to i64
  %263 = call i32 @ohci1394_init_iso_tasklet(%struct.TYPE_7__* %249, i32 %259, i32 %260, i64 %262)
  %264 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %265 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %264, i32 0, i32 5
  %266 = load %struct.ti_ohci*, %struct.ti_ohci** %265, align 8
  %267 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %268 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %267, i32 0, i32 10
  %269 = call i64 @ohci1394_register_iso_tasklet(%struct.ti_ohci* %266, %struct.TYPE_7__* %268)
  %270 = icmp slt i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %258
  %272 = load i32, i32* @EBUSY, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %7, align 4
  br label %352

274:                                              ; preds = %258
  %275 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %276 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %275, i32 0, i32 0
  store i32 1, i32* %276, align 8
  %277 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %278 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %277, i32 0, i32 10
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %6, align 4
  %281 = load i64, i64* @OHCI1394_IsoRcvContextControlSet, align 8
  %282 = load i32, i32* %6, align 4
  %283 = mul nsw i32 32, %282
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %281, %284
  %286 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %287 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %286, i32 0, i32 9
  store i64 %285, i64* %287, align 8
  %288 = load i64, i64* @OHCI1394_IsoRcvContextControlClear, align 8
  %289 = load i32, i32* %6, align 4
  %290 = mul nsw i32 32, %289
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %288, %291
  %293 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %294 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %293, i32 0, i32 8
  store i64 %292, i64* %294, align 8
  %295 = load i64, i64* @OHCI1394_IsoRcvCommandPtr, align 8
  %296 = load i32, i32* %6, align 4
  %297 = mul nsw i32 32, %296
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %295, %298
  %300 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %301 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %300, i32 0, i32 7
  store i64 %299, i64* %301, align 8
  %302 = load i64, i64* @OHCI1394_IsoRcvContextMatch, align 8
  %303 = load i32, i32* %6, align 4
  %304 = mul nsw i32 32, %303
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %302, %305
  %307 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %308 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %307, i32 0, i32 6
  store i64 %306, i64* %308, align 8
  %309 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %310 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %324

313:                                              ; preds = %274
  %314 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %315 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %314, i32 0, i32 5
  %316 = load %struct.ti_ohci*, %struct.ti_ohci** %315, align 8
  %317 = load i32, i32* @OHCI1394_IRMultiChanMaskHiClear, align 4
  %318 = call i32 @reg_write(%struct.ti_ohci* %316, i32 %317, i32 -1)
  %319 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %320 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %319, i32 0, i32 5
  %321 = load %struct.ti_ohci*, %struct.ti_ohci** %320, align 8
  %322 = load i32, i32* @OHCI1394_IRMultiChanMaskLoClear, align 4
  %323 = call i32 @reg_write(%struct.ti_ohci* %321, i32 %322, i32 -1)
  br label %324

324:                                              ; preds = %313, %274
  %325 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %326 = call i32 @ohci_iso_recv_program(%struct.hpsb_iso* %325)
  %327 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %328 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @BUFFER_FILL_MODE, align 8
  %331 = icmp eq i64 %329, %330
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)
  %334 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %335 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @PAGE_SIZE, align 4
  %338 = sdiv i32 %336, %337
  %339 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %340 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %343 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %346 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.ohci_iso_recv*, %struct.ohci_iso_recv** %5, align 8
  %349 = getelementptr inbounds %struct.ohci_iso_recv, %struct.ohci_iso_recv* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i8* %333, i32 %338, i32 %341, i32 %344, i32 %347, i32 %350)
  store i32 0, i32* %2, align 4
  br label %356

352:                                              ; preds = %271, %239, %212, %88
  %353 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %354 = call i32 @ohci_iso_recv_shutdown(%struct.hpsb_iso* %353)
  %355 = load i32, i32* %7, align 4
  store i32 %355, i32* %2, align 4
  br label %356

356:                                              ; preds = %352, %324, %20
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local %struct.ohci_iso_recv* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_prog_region_init(%struct.TYPE_8__*) #1

declare dso_local i32 @DBGMSG(i8*, ...) #1

declare dso_local i64 @dma_prog_region_alloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ohci1394_init_iso_tasklet(%struct.TYPE_7__*, i32, i32, i64) #1

declare dso_local i64 @ohci1394_register_iso_tasklet(%struct.ti_ohci*, %struct.TYPE_7__*) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @ohci_iso_recv_program(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci_iso_recv_shutdown(%struct.hpsb_iso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
