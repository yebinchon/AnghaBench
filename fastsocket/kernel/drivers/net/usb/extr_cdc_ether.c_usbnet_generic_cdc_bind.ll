; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ether.c_usbnet_generic_cdc_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ether.c_usbnet_generic_cdc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_12__*, %struct.usb_host_endpoint*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.usb_host_endpoint = type { i32*, i32, %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_interface = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32, %struct.usb_host_endpoint*, %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i32, i32 }
%struct.cdc_state = type { %struct.usb_interface*, %struct.usb_interface*, %struct.TYPE_7__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.usb_driver = type { i32 }
%struct.usb_cdc_acm_descriptor = type { i32 }

@EDOM = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"extra CDC header\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CDC header len %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ACM capabilities %02x, not really RNDIS?\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"extra CDC union\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"CDC union len %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"master #%u/%p slave #%u/%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"bogus CDC Union\0A\00", align 1
@USB_CLASS_CDC_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"slave class %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"extra CDC ether\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"CDC ether len %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"rndis: master #0/%p slave #1/%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"missing cdc %s%s%sdescriptor\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"header \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ether \00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"bad notification endpoint\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"missing RNDIS status endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"bad CDC descriptors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_generic_cdc_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.cdc_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_driver*, align 8
  %13 = alloca %struct.usb_cdc_acm_descriptor*, align 8
  %14 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 3
  %27 = bitcast i32* %26 to i8*
  %28 = bitcast i8* %27 to %struct.cdc_state*
  store %struct.cdc_state* %28, %struct.cdc_state** %9, align 8
  %29 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %30 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %29)
  store %struct.usb_driver* %30, %struct.usb_driver** %12, align 8
  %31 = load i32, i32* @EDOM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %479

33:                                               ; No predecessors!
  br label %34

34:                                               ; preds = %272, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %284

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %272

44:                                               ; preds = %37
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %271 [
    i32 129, label %48
    i32 131, label %80
    i32 128, label %100
    i32 130, label %231
  ]

48:                                               ; preds = %44
  %49 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %50 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %49, i32 0, i32 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %471

57:                                               ; preds = %48
  %58 = load i32*, i32** %6, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = bitcast i8* %59 to %struct.TYPE_10__*
  %61 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %62 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %61, i32 0, i32 4
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %62, align 8
  %63 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %64 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %63, i32 0, i32 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 4
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %72 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %71, i32 0, i32 0
  %73 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %74 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %471

79:                                               ; preds = %57
  br label %271

80:                                               ; preds = %44
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = bitcast i8* %85 to %struct.usb_cdc_acm_descriptor*
  store %struct.usb_cdc_acm_descriptor* %86, %struct.usb_cdc_acm_descriptor** %13, align 8
  %87 = load %struct.usb_cdc_acm_descriptor*, %struct.usb_cdc_acm_descriptor** %13, align 8
  %88 = getelementptr inbounds %struct.usb_cdc_acm_descriptor, %struct.usb_cdc_acm_descriptor* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %93 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %92, i32 0, i32 0
  %94 = load %struct.usb_cdc_acm_descriptor*, %struct.usb_cdc_acm_descriptor** %13, align 8
  %95 = getelementptr inbounds %struct.usb_cdc_acm_descriptor, %struct.usb_cdc_acm_descriptor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %471

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %80
  br label %271

100:                                              ; preds = %44
  %101 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %102 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %101, i32 0, i32 3
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %471

109:                                              ; preds = %100
  %110 = load i32*, i32** %6, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = bitcast i8* %111 to %struct.TYPE_11__*
  %113 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %114 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %113, i32 0, i32 3
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %114, align 8
  %115 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %116 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %115, i32 0, i32 3
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ne i64 %120, 12
  br i1 %121, label %122, label %131

122:                                              ; preds = %109
  %123 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %124 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %123, i32 0, i32 0
  %125 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %126 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %125, i32 0, i32 3
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %471

131:                                              ; preds = %109
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %136 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @usb_ifnum_to_if(%struct.TYPE_12__* %134, i32 %139)
  %141 = bitcast i8* %140 to %struct.usb_interface*
  %142 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %143 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %142, i32 0, i32 1
  store %struct.usb_interface* %141, %struct.usb_interface** %143, align 8
  %144 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %145 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %148 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @usb_ifnum_to_if(%struct.TYPE_12__* %146, i32 %151)
  %153 = bitcast i8* %152 to %struct.usb_interface*
  %154 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %155 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %154, i32 0, i32 0
  store %struct.usb_interface* %153, %struct.usb_interface** %155, align 8
  %156 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %157 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %156, i32 0, i32 1
  %158 = load %struct.usb_interface*, %struct.usb_interface** %157, align 8
  %159 = icmp ne %struct.usb_interface* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %131
  %161 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %162 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %161, i32 0, i32 0
  %163 = load %struct.usb_interface*, %struct.usb_interface** %162, align 8
  %164 = icmp ne %struct.usb_interface* %163, null
  br i1 %164, label %185, label %165

165:                                              ; preds = %160, %131
  %166 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %167 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %166, i32 0, i32 0
  %168 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %169 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %168, i32 0, i32 3
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %174 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %173, i32 0, i32 1
  %175 = load %struct.usb_interface*, %struct.usb_interface** %174, align 8
  %176 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %177 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %176, i32 0, i32 3
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %182 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %181, i32 0, i32 0
  %183 = load %struct.usb_interface*, %struct.usb_interface** %182, align 8
  %184 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %172, %struct.usb_interface* %175, i32 %180, %struct.usb_interface* %183)
  br label %471

185:                                              ; preds = %160
  %186 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %187 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %186, i32 0, i32 1
  %188 = load %struct.usb_interface*, %struct.usb_interface** %187, align 8
  %189 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %190 = icmp ne %struct.usb_interface* %188, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %185
  %192 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %193 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %192, i32 0, i32 0
  %194 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %195 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %196 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %195, i32 0, i32 0
  %197 = load %struct.usb_interface*, %struct.usb_interface** %196, align 8
  %198 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %199 = icmp eq %struct.usb_interface* %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %202 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %201, i32 0, i32 1
  %203 = load %struct.usb_interface*, %struct.usb_interface** %202, align 8
  %204 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %205 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %204, i32 0, i32 0
  store %struct.usb_interface* %203, %struct.usb_interface** %205, align 8
  %206 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %207 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %208 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %207, i32 0, i32 1
  store %struct.usb_interface* %206, %struct.usb_interface** %208, align 8
  br label %210

209:                                              ; preds = %191
  br label %471

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210, %185
  %212 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %213 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %212, i32 0, i32 0
  %214 = load %struct.usb_interface*, %struct.usb_interface** %213, align 8
  %215 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  store %struct.usb_interface_descriptor* %217, %struct.usb_interface_descriptor** %8, align 8
  %218 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %219 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @USB_CLASS_CDC_DATA, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %211
  %224 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %225 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %224, i32 0, i32 0
  %226 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %227 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %225, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %228)
  br label %471

230:                                              ; preds = %211
  br label %271

231:                                              ; preds = %44
  %232 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %233 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %232, i32 0, i32 2
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = icmp ne %struct.TYPE_7__* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %238 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %237, i32 0, i32 0
  %239 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %471

240:                                              ; preds = %231
  %241 = load i32*, i32** %6, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = bitcast i8* %242 to %struct.TYPE_7__*
  %244 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %245 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %244, i32 0, i32 2
  store %struct.TYPE_7__* %243, %struct.TYPE_7__** %245, align 8
  %246 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %247 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %246, i32 0, i32 2
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = icmp ne i64 %251, 8
  br i1 %252, label %253, label %262

253:                                              ; preds = %240
  %254 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %255 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %254, i32 0, i32 0
  %256 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %257 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %256, i32 0, i32 2
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %255, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %260)
  br label %471

262:                                              ; preds = %240
  %263 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %264 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %263, i32 0, i32 2
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @le16_to_cpu(i32 %267)
  %269 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %270 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %44, %262, %230, %99, %79
  br label %272

272:                                              ; preds = %271, %43
  %273 = load i32*, i32** %6, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %7, align 4
  %277 = sub nsw i32 %276, %275
  store i32 %277, i32* %7, align 4
  %278 = load i32*, i32** %6, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %6, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %6, align 8
  br label %34

284:                                              ; preds = %34
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %327

287:                                              ; preds = %284
  %288 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %289 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %288, i32 0, i32 3
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = icmp ne %struct.TYPE_11__* %290, null
  br i1 %291, label %327, label %292

292:                                              ; preds = %287
  %293 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %294 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %293, i32 0, i32 1
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = call i8* @usb_ifnum_to_if(%struct.TYPE_12__* %295, i32 0)
  %297 = bitcast i8* %296 to %struct.usb_interface*
  %298 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %299 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %298, i32 0, i32 1
  store %struct.usb_interface* %297, %struct.usb_interface** %299, align 8
  %300 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %301 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %300, i32 0, i32 1
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = call i8* @usb_ifnum_to_if(%struct.TYPE_12__* %302, i32 1)
  %304 = bitcast i8* %303 to %struct.usb_interface*
  %305 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %306 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %305, i32 0, i32 0
  store %struct.usb_interface* %304, %struct.usb_interface** %306, align 8
  %307 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %308 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %307, i32 0, i32 1
  %309 = load %struct.usb_interface*, %struct.usb_interface** %308, align 8
  %310 = icmp ne %struct.usb_interface* %309, null
  br i1 %310, label %311, label %316

311:                                              ; preds = %292
  %312 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %313 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %312, i32 0, i32 0
  %314 = load %struct.usb_interface*, %struct.usb_interface** %313, align 8
  %315 = icmp ne %struct.usb_interface* %314, null
  br i1 %315, label %326, label %316

316:                                              ; preds = %311, %292
  %317 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %318 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %317, i32 0, i32 0
  %319 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %320 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %319, i32 0, i32 1
  %321 = load %struct.usb_interface*, %struct.usb_interface** %320, align 8
  %322 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %323 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %322, i32 0, i32 0
  %324 = load %struct.usb_interface*, %struct.usb_interface** %323, align 8
  %325 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), %struct.usb_interface* %321, %struct.usb_interface* %324)
  br label %471

326:                                              ; preds = %311
  br label %368

327:                                              ; preds = %287, %284
  %328 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %329 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %328, i32 0, i32 4
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %329, align 8
  %331 = icmp ne %struct.TYPE_10__* %330, null
  br i1 %331, label %332, label %345

332:                                              ; preds = %327
  %333 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %334 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %333, i32 0, i32 3
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = icmp ne %struct.TYPE_11__* %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %332
  %338 = load i32, i32* %11, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %367, label %340

340:                                              ; preds = %337
  %341 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %342 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %341, i32 0, i32 2
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = icmp ne %struct.TYPE_7__* %343, null
  br i1 %344, label %367, label %345

345:                                              ; preds = %340, %332, %327
  %346 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %347 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %346, i32 0, i32 0
  %348 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %349 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %348, i32 0, i32 4
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  %351 = icmp ne %struct.TYPE_10__* %350, null
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)
  %354 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %355 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %354, i32 0, i32 3
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %355, align 8
  %357 = icmp ne %struct.TYPE_11__* %356, null
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0)
  %360 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %361 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %360, i32 0, i32 2
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %361, align 8
  %363 = icmp ne %struct.TYPE_7__* %362, null
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %366 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %347, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %353, i8* %359, i8* %365)
  br label %471

367:                                              ; preds = %340, %337
  br label %368

368:                                              ; preds = %367, %326
  %369 = load %struct.usb_driver*, %struct.usb_driver** %12, align 8
  %370 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %371 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %370, i32 0, i32 0
  %372 = load %struct.usb_interface*, %struct.usb_interface** %371, align 8
  %373 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %374 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %369, %struct.usb_interface* %372, %struct.usbnet* %373)
  store i32 %374, i32* %10, align 4
  %375 = load i32, i32* %10, align 4
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %368
  %378 = load i32, i32* %10, align 4
  store i32 %378, i32* %3, align 4
  br label %479

379:                                              ; preds = %368
  %380 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %381 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %382 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %381, i32 0, i32 0
  %383 = load %struct.usb_interface*, %struct.usb_interface** %382, align 8
  %384 = call i32 @usbnet_get_endpoints(%struct.usbnet* %380, %struct.usb_interface* %383)
  store i32 %384, i32* %10, align 4
  %385 = load i32, i32* %10, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %379
  %388 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %389 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %388, i32 0, i32 0
  %390 = load %struct.usb_interface*, %struct.usb_interface** %389, align 8
  %391 = call i32 @usb_set_intfdata(%struct.usb_interface* %390, i32* null)
  %392 = load %struct.usb_driver*, %struct.usb_driver** %12, align 8
  %393 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %394 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %393, i32 0, i32 0
  %395 = load %struct.usb_interface*, %struct.usb_interface** %394, align 8
  %396 = call i32 @usb_driver_release_interface(%struct.usb_driver* %392, %struct.usb_interface* %395)
  %397 = load i32, i32* %10, align 4
  store i32 %397, i32* %3, align 4
  br label %479

398:                                              ; preds = %379
  %399 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %400 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %399, i32 0, i32 2
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %400, align 8
  %401 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %402 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %401, i32 0, i32 1
  %403 = load %struct.usb_interface*, %struct.usb_interface** %402, align 8
  %404 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %403, i32 0, i32 1
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %447

410:                                              ; preds = %398
  %411 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %412 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %411, i32 0, i32 1
  %413 = load %struct.usb_interface*, %struct.usb_interface** %412, align 8
  %414 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %413, i32 0, i32 1
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 2
  %417 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %416, align 8
  %418 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %417, i64 0
  %419 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %420 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %419, i32 0, i32 2
  store %struct.usb_host_endpoint* %418, %struct.usb_host_endpoint** %420, align 8
  %421 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %422 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %421, i32 0, i32 2
  %423 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %422, align 8
  %424 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %423, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %424, %struct.usb_endpoint_descriptor** %14, align 8
  %425 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %426 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %440

428:                                              ; preds = %410
  %429 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %430 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @le16_to_cpu(i32 %431)
  %433 = sext i32 %432 to i64
  %434 = icmp ult i64 %433, 4
  br i1 %434, label %440, label %435

435:                                              ; preds = %428
  %436 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %437 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %435, %428, %410
  %441 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %442 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %441, i32 0, i32 0
  %443 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %442, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %444 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %445 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %444, i32 0, i32 2
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %445, align 8
  br label %446

446:                                              ; preds = %440, %435
  br label %447

447:                                              ; preds = %446, %398
  %448 = load i32, i32* %11, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %470

450:                                              ; preds = %447
  %451 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %452 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %451, i32 0, i32 2
  %453 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %452, align 8
  %454 = icmp ne %struct.usb_host_endpoint* %453, null
  br i1 %454, label %470, label %455

455:                                              ; preds = %450
  %456 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %457 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %456, i32 0, i32 0
  %458 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %457, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %459 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %460 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %459, i32 0, i32 0
  %461 = load %struct.usb_interface*, %struct.usb_interface** %460, align 8
  %462 = call i32 @usb_set_intfdata(%struct.usb_interface* %461, i32* null)
  %463 = load %struct.usb_driver*, %struct.usb_driver** %12, align 8
  %464 = load %struct.cdc_state*, %struct.cdc_state** %9, align 8
  %465 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %464, i32 0, i32 0
  %466 = load %struct.usb_interface*, %struct.usb_interface** %465, align 8
  %467 = call i32 @usb_driver_release_interface(%struct.usb_driver* %463, %struct.usb_interface* %466)
  %468 = load i32, i32* @ENODEV, align 4
  %469 = sub nsw i32 0, %468
  store i32 %469, i32* %3, align 4
  br label %479

470:                                              ; preds = %450, %447
  store i32 0, i32* %3, align 4
  br label %479

471:                                              ; preds = %345, %316, %253, %236, %223, %209, %165, %122, %105, %91, %70, %53
  %472 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %473 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %472, i32 0, i32 1
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 0
  %476 = call i32 @dev_info(i32* %475, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %477 = load i32, i32* @ENODEV, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %3, align 4
  br label %479

479:                                              ; preds = %471, %470, %455, %387, %377, %2
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i8* @usb_ifnum_to_if(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
