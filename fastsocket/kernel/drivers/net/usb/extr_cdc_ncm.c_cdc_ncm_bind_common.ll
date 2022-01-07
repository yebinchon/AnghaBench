; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_bind_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_bind_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64*, %struct.TYPE_15__*, i32, i32*, i32, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.usb_interface = type { %struct.TYPE_24__*, i32, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32*, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.cdc_ncm_ctx = type { %struct.usb_interface*, %struct.usb_interface*, i64, i64, i32, i32*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.usb_cdc_ether_desc*, %struct.usb_interface*, %struct.usb_cdc_mbim_desc*, %struct.usb_cdc_union_desc*, %struct.usb_cdc_ncm_desc*, %struct.TYPE_15__*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.usb_cdc_ether_desc = type { i32, i32 }
%struct.usb_cdc_mbim_desc = type { i32 }
%struct.usb_cdc_union_desc = type { i32, i32 }
%struct.usb_cdc_ncm_desc = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.usb_driver = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@cdc_ncm_tx_timer_cb = common dso_local global i32 0, align 4
@cdc_ncm_txpath_bh = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@CDC_NCM_MIN_DATAGRAM_SIZE = common dso_local global i32 0, align 4
@CDC_NCM_MAX_DATAGRAM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CDC Union missing - got slave from IAD\0A\00", align 1
@cdc_ncm_ethtool_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MAC-Address: %pM\0A\00", align 1
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"bind() failure\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_ncm_bind_common(%struct.usbnet* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdc_ncm_ctx*, align 8
  %9 = alloca %struct.usb_driver*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cdc_ncm_ctx* @kzalloc(i32 152, i32 %14)
  store %struct.cdc_ncm_ctx* %15, %struct.cdc_ncm_ctx** %8, align 8
  %16 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %17 = icmp ne %struct.cdc_ncm_ctx* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %490

21:                                               ; preds = %3
  %22 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %22, i32 0, i32 18
  %24 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %25 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %26 = call i32 @hrtimer_init(%struct.TYPE_16__* %23, i32 %24, i32 %25)
  %27 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %27, i32 0, i32 18
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i32* @cdc_ncm_tx_timer_cb, i32** %29, align 8
  %30 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %31 = ptrtoint %struct.cdc_ncm_ctx* %30 to i64
  %32 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %32, i32 0, i32 17
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* @cdc_ncm_txpath_bh, align 4
  %36 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %36, i32 0, i32 17
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %39, i32 0, i32 16
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %42, i32 0, i32 15
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 6
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %48, i32 0, i32 14
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %49, align 8
  %50 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %51 = ptrtoint %struct.cdc_ncm_ctx* %50 to i64
  %52 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %51, i64* %55, align 8
  %56 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %57 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %56)
  store %struct.usb_driver* %57, %struct.usb_driver** %9, align 8
  %58 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 0
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %10, align 8
  %63 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 0
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  %68 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %71, i32 0, i32 13
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %72, align 8
  %73 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %74 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %74, i32 0, i32 9
  store %struct.usb_interface* %73, %struct.usb_interface** %75, align 8
  br label %76

76:                                               ; preds = %206, %21
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %87, %88
  br label %90

90:                                               ; preds = %84, %79, %76
  %91 = phi i1 [ false, %79 ], [ false, %76 ], [ %89, %84 ]
  br i1 %91, label %92, label %217

92:                                               ; preds = %90
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %206

99:                                               ; preds = %92
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %204 [
    i32 128, label %103
    i32 131, label %139
    i32 129, label %180
    i32 130, label %192
  ]

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %107, 8
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %205

110:                                              ; preds = %103
  %111 = load i32*, i32** %10, align 8
  %112 = bitcast i32* %111 to %struct.usb_cdc_union_desc*
  %113 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %114 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %113, i32 0, i32 11
  store %struct.usb_cdc_union_desc* %112, %struct.usb_cdc_union_desc** %114, align 8
  %115 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %116 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %118, i32 0, i32 11
  %120 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %119, align 8
  %121 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @usb_ifnum_to_if(%struct.TYPE_15__* %117, i32 %122)
  %124 = bitcast i8* %123 to %struct.usb_interface*
  %125 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %125, i32 0, i32 1
  store %struct.usb_interface* %124, %struct.usb_interface** %126, align 8
  %127 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %128 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %131 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %130, i32 0, i32 11
  %132 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %131, align 8
  %133 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @usb_ifnum_to_if(%struct.TYPE_15__* %129, i32 %134)
  %136 = bitcast i8* %135 to %struct.usb_interface*
  %137 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %138 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %137, i32 0, i32 0
  store %struct.usb_interface* %136, %struct.usb_interface** %138, align 8
  br label %205

139:                                              ; preds = %99
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %143, 8
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %205

146:                                              ; preds = %139
  %147 = load i32*, i32** %10, align 8
  %148 = bitcast i32* %147 to %struct.usb_cdc_ether_desc*
  %149 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %150 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %149, i32 0, i32 8
  store %struct.usb_cdc_ether_desc* %148, %struct.usb_cdc_ether_desc** %150, align 8
  %151 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %152 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %151, i32 0, i32 8
  %153 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %152, align 8
  %154 = getelementptr inbounds %struct.usb_cdc_ether_desc, %struct.usb_cdc_ether_desc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le16_to_cpu(i32 %155)
  %157 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %158 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %160 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CDC_NCM_MIN_DATAGRAM_SIZE, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %146
  %165 = load i32, i32* @CDC_NCM_MIN_DATAGRAM_SIZE, align 4
  %166 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %167 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 8
  br label %179

168:                                              ; preds = %146
  %169 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %170 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CDC_NCM_MAX_DATAGRAM_SIZE, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* @CDC_NCM_MAX_DATAGRAM_SIZE, align 4
  %176 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %177 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %174, %168
  br label %179

179:                                              ; preds = %178, %164
  br label %205

180:                                              ; preds = %99
  %181 = load i32*, i32** %10, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = icmp ult i64 %184, 4
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %205

187:                                              ; preds = %180
  %188 = load i32*, i32** %10, align 8
  %189 = bitcast i32* %188 to %struct.usb_cdc_ncm_desc*
  %190 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %191 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %190, i32 0, i32 12
  store %struct.usb_cdc_ncm_desc* %189, %struct.usb_cdc_ncm_desc** %191, align 8
  br label %205

192:                                              ; preds = %99
  %193 = load i32*, i32** %10, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp ult i64 %196, 4
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %205

199:                                              ; preds = %192
  %200 = load i32*, i32** %10, align 8
  %201 = bitcast i32* %200 to %struct.usb_cdc_mbim_desc*
  %202 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %203 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %202, i32 0, i32 10
  store %struct.usb_cdc_mbim_desc* %201, %struct.usb_cdc_mbim_desc** %203, align 8
  br label %205

204:                                              ; preds = %99
  br label %205

205:                                              ; preds = %204, %199, %198, %187, %186, %179, %145, %110, %109
  br label %206

206:                                              ; preds = %205, %98
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32*, i32** %10, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %10, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %11, align 4
  br label %76

217:                                              ; preds = %90
  %218 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %219 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %218, i32 0, i32 11
  %220 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %219, align 8
  %221 = icmp ne %struct.usb_cdc_union_desc* %220, null
  br i1 %221, label %255, label %222

222:                                              ; preds = %217
  %223 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %224 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %223, i32 0, i32 2
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %224, align 8
  %226 = icmp ne %struct.TYPE_25__* %225, null
  br i1 %226, label %227, label %255

227:                                              ; preds = %222
  %228 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %229 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %228, i32 0, i32 2
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 2
  br i1 %233, label %234, label %255

234:                                              ; preds = %227
  %235 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %236 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %237 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %236, i32 0, i32 1
  store %struct.usb_interface* %235, %struct.usb_interface** %237, align 8
  %238 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %239 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %238, i32 0, i32 1
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %239, align 8
  %241 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %242 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %241, i32 0, i32 0
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  %248 = call i8* @usb_ifnum_to_if(%struct.TYPE_15__* %240, i32 %247)
  %249 = bitcast i8* %248 to %struct.usb_interface*
  %250 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %251 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %250, i32 0, i32 0
  store %struct.usb_interface* %249, %struct.usb_interface** %251, align 8
  %252 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %253 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %252, i32 0, i32 1
  %254 = call i32 @dev_dbg(i32* %253, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %255

255:                                              ; preds = %234, %227, %222, %217
  %256 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %257 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %256, i32 0, i32 1
  %258 = load %struct.usb_interface*, %struct.usb_interface** %257, align 8
  %259 = icmp eq %struct.usb_interface* %258, null
  br i1 %259, label %281, label %260

260:                                              ; preds = %255
  %261 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %262 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %261, i32 0, i32 0
  %263 = load %struct.usb_interface*, %struct.usb_interface** %262, align 8
  %264 = icmp eq %struct.usb_interface* %263, null
  br i1 %264, label %281, label %265

265:                                              ; preds = %260
  %266 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %267 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %266, i32 0, i32 10
  %268 = load %struct.usb_cdc_mbim_desc*, %struct.usb_cdc_mbim_desc** %267, align 8
  %269 = icmp ne %struct.usb_cdc_mbim_desc* %268, null
  br i1 %269, label %282, label %270

270:                                              ; preds = %265
  %271 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %272 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %271, i32 0, i32 8
  %273 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %272, align 8
  %274 = icmp eq %struct.usb_cdc_ether_desc* %273, null
  br i1 %274, label %281, label %275

275:                                              ; preds = %270
  %276 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %277 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %276, i32 0, i32 1
  %278 = load %struct.usb_interface*, %struct.usb_interface** %277, align 8
  %279 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %280 = icmp ne %struct.usb_interface* %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %275, %270, %260, %255
  br label %471

282:                                              ; preds = %275, %265
  %283 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %284 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %283, i32 0, i32 0
  %285 = load %struct.usb_interface*, %struct.usb_interface** %284, align 8
  %286 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %287 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %286, i32 0, i32 1
  %288 = load %struct.usb_interface*, %struct.usb_interface** %287, align 8
  %289 = icmp ne %struct.usb_interface* %285, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %282
  %291 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %292 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %293 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %292, i32 0, i32 0
  %294 = load %struct.usb_interface*, %struct.usb_interface** %293, align 8
  %295 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %296 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %291, %struct.usb_interface* %294, %struct.usbnet* %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  br label %471

300:                                              ; preds = %290
  br label %301

301:                                              ; preds = %300, %282
  %302 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %303 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %302, i32 0, i32 0
  %304 = load %struct.usb_interface*, %struct.usb_interface** %303, align 8
  %305 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %304, i32 0, i32 0
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %13, align 4
  %310 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %311 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %310, i32 0, i32 1
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = call i32 @usb_set_interface(%struct.TYPE_15__* %312, i32 %313, i32 0)
  store i32 %314, i32* %12, align 4
  %315 = load i32, i32* %12, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %301
  br label %448

318:                                              ; preds = %301
  %319 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %320 = call i64 @cdc_ncm_setup(%struct.cdc_ncm_ctx* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  br label %448

323:                                              ; preds = %318
  %324 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %325 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %324, i32 0, i32 1
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %325, align 8
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* %7, align 4
  %329 = call i32 @usb_set_interface(%struct.TYPE_15__* %326, i32 %327, i32 %328)
  store i32 %329, i32* %12, align 4
  %330 = load i32, i32* %12, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %323
  br label %448

333:                                              ; preds = %323
  %334 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %335 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %336 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %335, i32 0, i32 0
  %337 = load %struct.usb_interface*, %struct.usb_interface** %336, align 8
  %338 = call i32 @cdc_ncm_find_endpoints(%struct.cdc_ncm_ctx* %334, %struct.usb_interface* %337)
  %339 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %340 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %341 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %340, i32 0, i32 1
  %342 = load %struct.usb_interface*, %struct.usb_interface** %341, align 8
  %343 = call i32 @cdc_ncm_find_endpoints(%struct.cdc_ncm_ctx* %339, %struct.usb_interface* %342)
  %344 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %345 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %344, i32 0, i32 7
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %345, align 8
  %347 = icmp eq %struct.TYPE_19__* %346, null
  br i1 %347, label %358, label %348

348:                                              ; preds = %333
  %349 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %350 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %349, i32 0, i32 6
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  %352 = icmp eq %struct.TYPE_21__* %351, null
  br i1 %352, label %358, label %353

353:                                              ; preds = %348
  %354 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %355 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %354, i32 0, i32 5
  %356 = load i32*, i32** %355, align 8
  %357 = icmp eq i32* %356, null
  br i1 %357, label %358, label %359

358:                                              ; preds = %353, %348, %333
  br label %448

359:                                              ; preds = %353
  %360 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %361 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %360, i32 0, i32 6
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 1
  store i32* @cdc_ncm_ethtool_ops, i32** %363, align 8
  %364 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %365 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %364, i32 0, i32 0
  %366 = load %struct.usb_interface*, %struct.usb_interface** %365, align 8
  %367 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %368 = call i32 @usb_set_intfdata(%struct.usb_interface* %366, %struct.usbnet* %367)
  %369 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %370 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %369, i32 0, i32 1
  %371 = load %struct.usb_interface*, %struct.usb_interface** %370, align 8
  %372 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %373 = call i32 @usb_set_intfdata(%struct.usb_interface* %371, %struct.usbnet* %372)
  %374 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %375 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %374, i32 0, i32 9
  %376 = load %struct.usb_interface*, %struct.usb_interface** %375, align 8
  %377 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %378 = call i32 @usb_set_intfdata(%struct.usb_interface* %376, %struct.usbnet* %377)
  %379 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %380 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %379, i32 0, i32 8
  %381 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %380, align 8
  %382 = icmp ne %struct.usb_cdc_ether_desc* %381, null
  br i1 %382, label %383, label %405

383:                                              ; preds = %359
  %384 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %385 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %386 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %385, i32 0, i32 8
  %387 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %386, align 8
  %388 = getelementptr inbounds %struct.usb_cdc_ether_desc, %struct.usb_cdc_ether_desc* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @usbnet_get_ethernet_addr(%struct.usbnet* %384, i32 %389)
  store i32 %390, i32* %12, align 4
  %391 = load i32, i32* %12, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %383
  br label %448

394:                                              ; preds = %383
  %395 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %396 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %395, i32 0, i32 1
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 0
  %399 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %400 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %399, i32 0, i32 6
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = call i32 (i32*, i8*, ...) @dev_info(i32* %398, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %403)
  br label %405

405:                                              ; preds = %394, %359
  %406 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %407 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %406, i32 0, i32 1
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %407, align 8
  %409 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %410 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %409, i32 0, i32 7
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %416 = and i32 %414, %415
  %417 = call i32 @usb_rcvbulkpipe(%struct.TYPE_15__* %408, i32 %416)
  %418 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %419 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %418, i32 0, i32 5
  store i32 %417, i32* %419, align 4
  %420 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %421 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %420, i32 0, i32 1
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %421, align 8
  %423 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %424 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %423, i32 0, i32 6
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %430 = and i32 %428, %429
  %431 = call i32 @usb_sndbulkpipe(%struct.TYPE_15__* %422, i32 %430)
  %432 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %433 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %432, i32 0, i32 4
  store i32 %431, i32* %433, align 8
  %434 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %435 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %434, i32 0, i32 5
  %436 = load i32*, i32** %435, align 8
  %437 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %438 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %437, i32 0, i32 3
  store i32* %436, i32** %438, align 8
  %439 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %440 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %443 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %442, i32 0, i32 2
  store i32 %441, i32* %443, align 8
  %444 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %445 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %444, i32 0, i32 2
  store i64 0, i64* %445, align 8
  %446 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %447 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %446, i32 0, i32 3
  store i64 0, i64* %447, align 8
  store i32 0, i32* %4, align 4
  br label %490

448:                                              ; preds = %393, %358, %332, %322, %317
  %449 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %450 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %449, i32 0, i32 1
  %451 = load %struct.usb_interface*, %struct.usb_interface** %450, align 8
  %452 = call i32 @usb_set_intfdata(%struct.usb_interface* %451, %struct.usbnet* null)
  %453 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %454 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %453, i32 0, i32 0
  %455 = load %struct.usb_interface*, %struct.usb_interface** %454, align 8
  %456 = call i32 @usb_set_intfdata(%struct.usb_interface* %455, %struct.usbnet* null)
  %457 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %458 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %457, i32 0, i32 0
  %459 = load %struct.usb_interface*, %struct.usb_interface** %458, align 8
  %460 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %461 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %460, i32 0, i32 1
  %462 = load %struct.usb_interface*, %struct.usb_interface** %461, align 8
  %463 = icmp ne %struct.usb_interface* %459, %462
  br i1 %463, label %464, label %470

464:                                              ; preds = %448
  %465 = load %struct.usb_driver*, %struct.usb_driver** %9, align 8
  %466 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %467 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %466, i32 0, i32 0
  %468 = load %struct.usb_interface*, %struct.usb_interface** %467, align 8
  %469 = call i32 @usb_driver_release_interface(%struct.usb_driver* %465, %struct.usb_interface* %468)
  br label %470

470:                                              ; preds = %464, %448
  br label %471

471:                                              ; preds = %470, %299, %281
  %472 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %473 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %472, i32 0, i32 0
  %474 = load i64*, i64** %473, align 8
  %475 = getelementptr inbounds i64, i64* %474, i64 0
  %476 = load i64, i64* %475, align 8
  %477 = inttoptr i64 %476 to %struct.cdc_ncm_ctx*
  %478 = call i32 @cdc_ncm_free(%struct.cdc_ncm_ctx* %477)
  %479 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %480 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %479, i32 0, i32 0
  %481 = load i64*, i64** %480, align 8
  %482 = getelementptr inbounds i64, i64* %481, i64 0
  store i64 0, i64* %482, align 8
  %483 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %484 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %483, i32 0, i32 1
  %485 = load %struct.TYPE_15__*, %struct.TYPE_15__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 0
  %487 = call i32 (i32*, i8*, ...) @dev_info(i32* %486, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %488 = load i32, i32* @ENODEV, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %4, align 4
  br label %490

490:                                              ; preds = %471, %405, %18
  %491 = load i32, i32* %4, align 4
  ret i32 %491
}

declare dso_local %struct.cdc_ncm_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i8* @usb_ifnum_to_if(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @cdc_ncm_setup(%struct.cdc_ncm_ctx*) #1

declare dso_local i32 @cdc_ncm_find_endpoints(%struct.cdc_ncm_ctx*, %struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @cdc_ncm_free(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
