; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_cs.c_serial_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_cs.c_serial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 (%struct.pcmcia_device*)*, i32, i32 }
%struct.pcmcia_device = type { i64, i32*, i64, i32, i32, %struct.TYPE_12__, %struct.serial_info* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.serial_info = type { i32, i64, i32*, %struct.TYPE_19__*, i32, i32 }
%struct.serial_cfg_mem = type { i32*, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_13__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [21 x i8] c"serial_config(0x%p)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@CISTPL_CONFIG = common dso_local global i32 0, align 4
@ParseTuple = common dso_local global i32 0, align 4
@CISTPL_LONGLINK_MFC = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i32 0, align 4
@TUPLE_RETURN_LINK = common dso_local global i32 0, align 4
@CISTPL_MANFID = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_19__* null, align 8
@CISTPL_FUNCID = common dso_local global i32 0, align 4
@CISTPL_FUNCID_MULTI = common dso_local global i64 0, align 8
@CISTPL_FUNCID_SERIAL = common dso_local global i64 0, align 8
@CISTPL_CFTABLE_ENTRY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @serial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.serial_info*, align 8
  %5 = alloca %struct.serial_cfg_mem*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 6
  %15 = load %struct.serial_info*, %struct.serial_info** %14, align 8
  store %struct.serial_info* %15, %struct.serial_info** %4, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.serial_cfg_mem* @kmalloc(i32 72, i32 %18)
  store %struct.serial_cfg_mem* %19, %struct.serial_cfg_mem** %5, align 8
  %20 = load %struct.serial_cfg_mem*, %struct.serial_cfg_mem** %5, align 8
  %21 = icmp ne %struct.serial_cfg_mem* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %317

23:                                               ; preds = %1
  %24 = load %struct.serial_cfg_mem*, %struct.serial_cfg_mem** %5, align 8
  %25 = getelementptr inbounds %struct.serial_cfg_mem, %struct.serial_cfg_mem* %24, i32 0, i32 2
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %6, align 8
  %26 = load %struct.serial_cfg_mem*, %struct.serial_cfg_mem** %5, align 8
  %27 = getelementptr inbounds %struct.serial_cfg_mem, %struct.serial_cfg_mem* %26, i32 0, i32 1
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %8, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %9, align 8
  %30 = load %struct.serial_cfg_mem*, %struct.serial_cfg_mem** %5, align 8
  %31 = getelementptr inbounds %struct.serial_cfg_mem, %struct.serial_cfg_mem* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store i32 255, i32* %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @CISTPL_CONFIG, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = call i32 @first_tuple(%struct.pcmcia_device* %45, %struct.TYPE_16__* %46, %struct.TYPE_18__* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %23
  %52 = load i32, i32* @ParseTuple, align 4
  store i32 %52, i32* %12, align 4
  br label %312

53:                                               ; preds = %23
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %68 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @CISTPL_LONGLINK_MFC, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @TUPLE_RETURN_COMMON, align 4
  %74 = load i32, i32* @TUPLE_RETURN_LINK, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = call i32 @first_tuple(%struct.pcmcia_device* %78, %struct.TYPE_16__* %79, %struct.TYPE_18__* %80)
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %85 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @CISTPL_MANFID, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %90 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %93 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %95 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %98 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %150, %53
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** @quirks, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.TYPE_19__* %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %153

104:                                              ; preds = %99
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** @quirks, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %123, label %112

112:                                              ; preds = %104
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** @quirks, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %120 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %112, %104
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** @quirks, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %142, label %131

131:                                              ; preds = %123
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** @quirks, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %139 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %131, %123
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** @quirks, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %148 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %147, i32 0, i32 3
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %148, align 8
  br label %153

149:                                              ; preds = %131, %112
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %99

153:                                              ; preds = %142, %99
  %154 = load i32, i32* @CISTPL_FUNCID, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %158 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %243

161:                                              ; preds = %153
  %162 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %163 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %243

166:                                              ; preds = %161
  %167 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %168 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @CISTPL_FUNCID_MULTI, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %174 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @CISTPL_FUNCID_SERIAL, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %243

178:                                              ; preds = %172, %166
  %179 = load i32, i32* @CISTPL_CFTABLE_ENTRY, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = call i32 @first_tuple(%struct.pcmcia_device* %182, %struct.TYPE_16__* %183, %struct.TYPE_18__* %184)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %242

187:                                              ; preds = %178
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = srem i32 %200, 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %193
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 3
  %212 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %213 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %203, %193, %187
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %241

220:                                              ; preds = %214
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 8
  br i1 %228, label %229, label %241

229:                                              ; preds = %220
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 8
  br i1 %237, label %238, label %241

238:                                              ; preds = %229
  %239 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %240 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %239, i32 0, i32 0
  store i32 2, i32* %240, align 8
  br label %241

241:                                              ; preds = %238, %229, %220, %214
  br label %242

242:                                              ; preds = %241, %178
  br label %243

243:                                              ; preds = %242, %172, %161, %153
  %244 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %245 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %244, i32 0, i32 3
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  %247 = icmp ne %struct.TYPE_19__* %246, null
  br i1 %247, label %248, label %263

248:                                              ; preds = %243
  %249 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %250 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %249, i32 0, i32 3
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, -1
  br i1 %254, label %255, label %263

255:                                              ; preds = %248
  %256 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %257 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %256, i32 0, i32 3
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %262 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  br label %263

263:                                              ; preds = %255, %248, %243
  %264 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %265 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %270 = call i32 @multi_config(%struct.pcmcia_device* %269)
  br label %274

271:                                              ; preds = %263
  %272 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %273 = call i32 @simple_config(%struct.pcmcia_device* %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %276 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %317

280:                                              ; preds = %274
  %281 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %282 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %281, i32 0, i32 3
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  %284 = icmp ne %struct.TYPE_19__* %283, null
  br i1 %284, label %285, label %303

285:                                              ; preds = %280
  %286 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %287 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %286, i32 0, i32 3
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 1
  %290 = load i64 (%struct.pcmcia_device*)*, i64 (%struct.pcmcia_device*)** %289, align 8
  %291 = icmp ne i64 (%struct.pcmcia_device*)* %290, null
  br i1 %291, label %292, label %303

292:                                              ; preds = %285
  %293 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %294 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %293, i32 0, i32 3
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 1
  %297 = load i64 (%struct.pcmcia_device*)*, i64 (%struct.pcmcia_device*)** %296, align 8
  %298 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %299 = call i64 %297(%struct.pcmcia_device* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  br label %317

302:                                              ; preds = %292
  br label %303

303:                                              ; preds = %302, %285, %280
  %304 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %305 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %309 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %308, i32 0, i32 1
  store i32* %307, i32** %309, align 8
  %310 = load %struct.serial_cfg_mem*, %struct.serial_cfg_mem** %5, align 8
  %311 = call i32 @kfree(%struct.serial_cfg_mem* %310)
  store i32 0, i32* %2, align 4
  br label %324

312:                                              ; preds = %51
  %313 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @cs_error(%struct.pcmcia_device* %313, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %312, %301, %279, %22
  %318 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %319 = call i32 @serial_remove(%struct.pcmcia_device* %318)
  %320 = load %struct.serial_cfg_mem*, %struct.serial_cfg_mem** %5, align 8
  %321 = call i32 @kfree(%struct.serial_cfg_mem* %320)
  %322 = load i32, i32* @ENODEV, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %317, %303
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local %struct.serial_cfg_mem* @kmalloc(i32, i32) #1

declare dso_local i32 @first_tuple(%struct.pcmcia_device*, %struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_19__*) #1

declare dso_local i32 @multi_config(%struct.pcmcia_device*) #1

declare dso_local i32 @simple_config(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.serial_cfg_mem*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @serial_remove(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
