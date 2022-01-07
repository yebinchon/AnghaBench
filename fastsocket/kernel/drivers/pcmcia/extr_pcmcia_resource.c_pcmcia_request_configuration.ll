; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_22__*, %struct.pcmcia_socket* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_19__*, i32, %struct.TYPE_14__, %struct.TYPE_18__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_21__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_14__*)* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@INT_CARDBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IntType may not be INT_CARDBUS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to set socket state\0A\00", align 1
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@SS_IOCARD = common dso_local global i32 0, align 4
@INT_ZOOMED_VIDEO = common dso_local global i32 0, align 4
@SS_ZVCARD = common dso_local global i32 0, align 4
@CONF_ENABLE_DMA = common dso_local global i32 0, align 4
@SS_DMA_MODE = common dso_local global i32 0, align 4
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@SS_SPKR_ENA = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@PRESENT_COPY = common dso_local global i32 0, align 4
@CISREG_SCR = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@COR_CONFIG_MASK = common dso_local global i32 0, align 4
@COR_MFC_CONFIG_MASK = common dso_local global i32 0, align 4
@COR_FUNC_ENA = common dso_local global i32 0, align 4
@COR_IREQ_ENA = common dso_local global i32 0, align 4
@PRESENT_IOBASE_0 = common dso_local global i32 0, align 4
@COR_ADDR_DECODE = common dso_local global i32 0, align 4
@CONFIG_IRQ_REQ = common dso_local global i32 0, align 4
@IRQ_FORCED_PULSE = common dso_local global i32 0, align 4
@COR_LEVEL_REQ = common dso_local global i32 0, align 4
@CISREG_COR = common dso_local global i32 0, align 4
@PRESENT_STATUS = common dso_local global i32 0, align 4
@CISREG_CCSR = common dso_local global i32 0, align 4
@PRESENT_PIN_REPLACE = common dso_local global i32 0, align 4
@CISREG_PRR = common dso_local global i32 0, align 4
@PRESENT_EXT_STATUS = common dso_local global i32 0, align 4
@CISREG_ESR = common dso_local global i32 0, align 4
@CISREG_IOBASE_0 = common dso_local global i32 0, align 4
@CISREG_IOBASE_1 = common dso_local global i32 0, align 4
@PRESENT_IOSIZE = common dso_local global i32 0, align 4
@CISREG_IOSIZE = common dso_local global i32 0, align 4
@CONFIG_IO_REQ = common dso_local global i32 0, align 4
@io_speed = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@MAP_AUTOSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 2
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %14, align 8
  store %struct.pcmcia_socket* %15, %struct.pcmcia_socket** %8, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SOCKET_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %509

25:                                               ; preds = %2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @INT_CARDBUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 2
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %34, align 8
  %36 = call i32 @ds_dbg(%struct.pcmcia_socket* %35, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %509

39:                                               ; preds = %25
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %9, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CONFIG_LOCKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %509

52:                                               ; preds = %39
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %57 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %59, i32 0, i32 3
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_14__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_14__*)** %62, align 8
  %64 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %65 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %66 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %65, i32 0, i32 5
  %67 = call i64 %63(%struct.pcmcia_socket* %64, %struct.TYPE_14__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %52
  %70 = load i32, i32* @KERN_WARNING, align 4
  %71 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %72 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %71, i32 0, i32 7
  %73 = call i32 @dev_printk(i32 %70, i32* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %509

76:                                               ; preds = %52
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %76
  %94 = load i32, i32* @SS_IOCARD, align 4
  %95 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %96 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %76
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @INT_ZOOMED_VIDEO, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i32, i32* @SS_ZVCARD, align 4
  %109 = load i32, i32* @SS_IOCARD, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %112 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %107, %100
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @CONF_ENABLE_DMA, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load i32, i32* @SS_DMA_MODE, align 4
  %125 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %126 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %123, %116
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i32, i32* @SS_SPKR_ENA, align 4
  %139 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %140 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %153 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %157 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  store i64 %155, i64* %158, align 8
  br label %163

159:                                              ; preds = %144
  %160 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %161 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %159, %151
  %164 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %165 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %164, i32 0, i32 3
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_14__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_14__*)** %167, align 8
  %169 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %170 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %171 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %170, i32 0, i32 5
  %172 = call i64 %168(%struct.pcmcia_socket* %169, %struct.TYPE_14__* %171)
  %173 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %174 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  store i32 %179, i32* %7, align 4
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @PRESENT_COPY, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %163
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  %199 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @CISREG_SCR, align 4
  %202 = add nsw i32 %200, %201
  %203 = ashr i32 %202, 1
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 5
  %206 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %199, i32 1, i32 %203, i32 1, i32* %205)
  br label %207

207:                                              ; preds = %193, %163
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @PRESENT_OPTION, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %287

214:                                              ; preds = %207
  %215 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %216 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @COR_CONFIG_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 4
  br label %255

227:                                              ; preds = %214
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @COR_MFC_CONFIG_MASK, align 4
  %232 = and i32 %230, %231
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @COR_FUNC_ENA, align 4
  %236 = load i32, i32* @COR_IREQ_ENA, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @PRESENT_IOBASE_0, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %227
  %249 = load i32, i32* @COR_ADDR_DECODE, align 4
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %248, %227
  br label %255

255:                                              ; preds = %254, %219
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @CONFIG_IRQ_REQ, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %255
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 11
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @IRQ_FORCED_PULSE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %262
  %271 = load i32, i32* @COR_LEVEL_REQ, align 4
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %270, %262
  br label %277

277:                                              ; preds = %276, %255
  %278 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @CISREG_COR, align 4
  %281 = add nsw i32 %279, %280
  %282 = ashr i32 %281, 1
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 6
  %285 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %278, i32 1, i32 %282, i32 1, i32* %284)
  %286 = call i32 @mdelay(i32 40)
  br label %287

287:                                              ; preds = %277, %207
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @PRESENT_STATUS, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %308

294:                                              ; preds = %287
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 7
  store i32 %297, i32* %299, align 4
  %300 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @CISREG_CCSR, align 4
  %303 = add nsw i32 %301, %302
  %304 = ashr i32 %303, 1
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 7
  %307 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %300, i32 1, i32 %304, i32 1, i32* %306)
  br label %308

308:                                              ; preds = %294, %287
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @PRESENT_PIN_REPLACE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %308
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 8
  store i32 %318, i32* %320, align 4
  %321 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @CISREG_PRR, align 4
  %324 = add nsw i32 %322, %323
  %325 = ashr i32 %324, 1
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 8
  %328 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %321, i32 1, i32 %325, i32 1, i32* %327)
  br label %329

329:                                              ; preds = %315, %308
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @PRESENT_EXT_STATUS, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %350

336:                                              ; preds = %329
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 8
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 9
  store i32 %339, i32* %341, align 4
  %342 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @CISREG_ESR, align 4
  %345 = add nsw i32 %343, %344
  %346 = ashr i32 %345, 1
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 9
  %349 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %342, i32 1, i32 %346, i32 1, i32* %348)
  br label %350

350:                                              ; preds = %336, %329
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @PRESENT_IOBASE_0, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %381

357:                                              ; preds = %350
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 10
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 255
  store i32 %362, i32* %11, align 4
  %363 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* @CISREG_IOBASE_0, align 4
  %366 = add nsw i32 %364, %365
  %367 = ashr i32 %366, 1
  %368 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %363, i32 1, i32 %367, i32 1, i32* %11)
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 10
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = ashr i32 %372, 8
  %374 = and i32 %373, 255
  store i32 %374, i32* %11, align 4
  %375 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* @CISREG_IOBASE_1, align 4
  %378 = add nsw i32 %376, %377
  %379 = ashr i32 %378, 1
  %380 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %375, i32 1, i32 %379, i32 1, i32* %11)
  br label %381

381:                                              ; preds = %357, %350
  %382 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @PRESENT_IOSIZE, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %405

388:                                              ; preds = %381
  %389 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 10
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 10
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %392, %396
  %398 = sub nsw i32 %397, 1
  store i32 %398, i32* %12, align 4
  %399 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* @CISREG_IOSIZE, align 4
  %402 = add nsw i32 %400, %401
  %403 = ashr i32 %402, 1
  %404 = call i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket* %399, i32 1, i32 %403, i32 1, i32* %12)
  br label %405

405:                                              ; preds = %388, %381
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @CONFIG_IO_REQ, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %501

412:                                              ; preds = %405
  %413 = load i32, i32* @io_speed, align 4
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  store i32 %413, i32* %414, align 4
  store i32 0, i32* %6, align 4
  br label %415

415:                                              ; preds = %497, %412
  %416 = load i32, i32* %6, align 4
  %417 = load i32, i32* @MAX_IO_WIN, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %500

419:                                              ; preds = %415
  %420 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %421 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %420, i32 0, i32 2
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %421, align 8
  %423 = load i32, i32* %6, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %426, align 8
  %428 = icmp ne %struct.TYPE_16__* %427, null
  br i1 %428, label %429, label %496

429:                                              ; preds = %419
  %430 = load i32, i32* %6, align 4
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 %430, i32* %431, align 4
  %432 = load i32, i32* @MAP_ACTIVE, align 4
  %433 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i32 %432, i32* %433, align 4
  %434 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %435 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %434, i32 0, i32 2
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %435, align 8
  %437 = load i32, i32* %6, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %445 = and i32 %443, %444
  switch i32 %445, label %456 [
    i32 129, label %446
    i32 128, label %451
  ]

446:                                              ; preds = %429
  %447 = load i32, i32* @MAP_16BIT, align 4
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  %449 = load i32, i32* %448, align 4
  %450 = or i32 %449, %447
  store i32 %450, i32* %448, align 4
  br label %457

451:                                              ; preds = %429
  %452 = load i32, i32* @MAP_AUTOSZ, align 4
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %452
  store i32 %455, i32* %453, align 4
  br label %457

456:                                              ; preds = %429
  br label %457

457:                                              ; preds = %456, %451, %446
  %458 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %459 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %458, i32 0, i32 2
  %460 = load %struct.TYPE_17__*, %struct.TYPE_17__** %459, align 8
  %461 = load i32, i32* %6, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_16__*, %struct.TYPE_16__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32 %467, i32* %468, align 4
  %469 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %470 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %469, i32 0, i32 2
  %471 = load %struct.TYPE_17__*, %struct.TYPE_17__** %470, align 8
  %472 = load i32, i32* %6, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i32 0, i32 1
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %478, i32* %479, align 4
  %480 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %481 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %480, i32 0, i32 3
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 0
  %484 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_21__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_21__*)** %483, align 8
  %485 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %486 = call i32 %484(%struct.pcmcia_socket* %485, %struct.TYPE_21__* %10)
  %487 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %488 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %487, i32 0, i32 2
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %488, align 8
  %490 = load i32, i32* %6, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 8
  br label %496

496:                                              ; preds = %457, %419
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %6, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %6, align 4
  br label %415

500:                                              ; preds = %415
  br label %501

501:                                              ; preds = %500, %405
  %502 = load i32, i32* @CONFIG_LOCKED, align 4
  %503 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = or i32 %505, %502
  store i32 %506, i32* %504, align 4
  %507 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %508 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %507, i32 0, i32 0
  store i32 1, i32* %508, align 8
  store i32 0, i32* %3, align 4
  br label %509

509:                                              ; preds = %501, %69, %49, %32, %22
  %510 = load i32, i32* %3, align 4
  ret i32 %510
}

declare dso_local i32 @ds_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @pcmcia_write_cis_mem(%struct.pcmcia_socket*, i32, i32, i32, i32*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
