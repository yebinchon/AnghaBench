; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.of_device = type { %struct.device_node*, %struct.device }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.of_device_id = type { i32 }
%struct.talitos_private = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.of_device* }
%struct.TYPE_6__ = type { i32, i8*, i32, i32 }
%struct.talitos_crypto_alg = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@talitos_done = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"failed to map irq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@talitos_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to of_iomap\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl,num-channels\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fsl,channel-fifo-len\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"fsl,exec-units-mask\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"fsl,descriptor-types-mask\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"invalid property data in device tree node\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"fsl,sec3.0\00", align 1
@TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"fsl,sec2.1\00", align 1
@TALITOS_FTR_HW_AUTH_CHECK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"failed to allocate channel management space\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to allocate request fifo %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to initialize device\0A\00", align 1
@DESC_HDR_SEL0_RNG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to register hwrng: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"hwrng\0A\00", align 1
@driver_algs = common dso_local global %struct.TYPE_7__* null, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*, %struct.of_device_id*)* @talitos_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_probe(%struct.of_device* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.talitos_private*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.talitos_crypto_alg*, align 8
  store %struct.of_device* %0, %struct.of_device** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  %13 = load %struct.of_device*, %struct.of_device** %4, align 8
  %14 = getelementptr inbounds %struct.of_device, %struct.of_device* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.of_device*, %struct.of_device** %4, align 8
  %16 = getelementptr inbounds %struct.of_device, %struct.of_device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 64, i32 %18)
  %20 = bitcast i8* %19 to %struct.talitos_private*
  store %struct.talitos_private* %20, %struct.talitos_private** %8, align 8
  %21 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %22 = icmp ne %struct.talitos_private* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %396

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %29 = call i32 @dev_set_drvdata(%struct.device* %27, %struct.talitos_private* %28)
  %30 = load %struct.of_device*, %struct.of_device** %4, align 8
  %31 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %32 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %31, i32 0, i32 11
  store %struct.of_device* %30, %struct.of_device** %32, align 8
  %33 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %34 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %33, i32 0, i32 10
  %35 = load i32, i32* @talitos_done, align 4
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = ptrtoint %struct.device* %36 to i64
  %38 = call i32 @tasklet_init(i32* %34, i32 %35, i64 %37)
  %39 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %40 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.device_node*, %struct.device_node** %7, align 8
  %43 = call i64 @irq_of_parse_and_map(%struct.device_node* %42, i32 0)
  %44 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %45 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %47 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NO_IRQ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %26
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %392

56:                                               ; preds = %26
  %57 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %58 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @talitos_interrupt, align 4
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_driver_string(%struct.device* %61)
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @request_irq(i64 %59, i32 %60, i32 0, i32 %62, %struct.device* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %56
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %70 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %74 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @irq_dispose_mapping(i32 %76)
  %78 = load i64, i64* @NO_IRQ, align 8
  %79 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %80 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %392

81:                                               ; preds = %56
  %82 = load %struct.device_node*, %struct.device_node** %7, align 8
  %83 = call i32 @of_iomap(%struct.device_node* %82, i32 0)
  %84 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %85 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 4
  %86 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %87 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %81
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %392

95:                                               ; preds = %81
  %96 = load %struct.device_node*, %struct.device_node** %7, align 8
  %97 = call i32* @of_get_property(%struct.device_node* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %104 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.device_node*, %struct.device_node** %7, align 8
  %107 = call i32* @of_get_property(%struct.device_node* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %107, i32** %9, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %114 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.device_node*, %struct.device_node** %7, align 8
  %117 = call i32* @of_get_property(%struct.device_node* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %124 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.device_node*, %struct.device_node** %7, align 8
  %127 = call i32* @of_get_property(%struct.device_node* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i32* %127, i32** %9, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %134 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %137 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @is_power_of_2(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %143 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %148 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %153 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151, %146, %141, %135
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %11, align 4
  br label %392

161:                                              ; preds = %151
  %162 = load %struct.device_node*, %struct.device_node** %7, align 8
  %163 = call i64 @of_device_is_compatible(%struct.device_node* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i32, i32* @TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT, align 4
  %167 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %168 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %161
  %172 = load %struct.device_node*, %struct.device_node** %7, align 8
  %173 = call i64 @of_device_is_compatible(%struct.device_node* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* @TALITOS_FTR_HW_AUTH_CHECK, align 4
  %177 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %178 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %171
  %182 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %183 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = zext i32 %184 to i64
  %186 = mul i64 4, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i8* @kzalloc(i32 %187, i32 %188)
  %190 = bitcast i8* %189 to %struct.TYPE_6__*
  %191 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %192 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %191, i32 0, i32 7
  store %struct.TYPE_6__* %190, %struct.TYPE_6__** %192, align 8
  %193 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %194 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %193, i32 0, i32 7
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = icmp ne %struct.TYPE_6__* %195, null
  br i1 %196, label %202, label %197

197:                                              ; preds = %181
  %198 = load %struct.device*, %struct.device** %6, align 8
  %199 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %11, align 4
  br label %392

202:                                              ; preds = %181
  store i32 0, i32* %10, align 4
  br label %203

203:                                              ; preds = %226, %202
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %206 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp ult i32 %204, %207
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %211 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %210, i32 0, i32 7
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = call i32 @spin_lock_init(i32* %216)
  %218 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %219 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %218, i32 0, i32 7
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  %225 = call i32 @spin_lock_init(i32* %224)
  br label %226

226:                                              ; preds = %209
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %203

229:                                              ; preds = %203
  %230 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %231 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @roundup_pow_of_two(i32 %232)
  %234 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %235 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 8
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %274, %229
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %239 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp ult i32 %237, %240
  br i1 %241, label %242, label %277

242:                                              ; preds = %236
  %243 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %244 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = mul i64 4, %246
  %248 = trunc i64 %247 to i32
  %249 = load i32, i32* @GFP_KERNEL, align 4
  %250 = call i8* @kzalloc(i32 %248, i32 %249)
  %251 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %252 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %251, i32 0, i32 7
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  store i8* %250, i8** %257, align 8
  %258 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %259 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %258, i32 0, i32 7
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %273, label %267

267:                                              ; preds = %242
  %268 = load %struct.device*, %struct.device** %6, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %268, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* @ENOMEM, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %11, align 4
  br label %392

273:                                              ; preds = %242
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %236

277:                                              ; preds = %236
  store i32 0, i32* %10, align 4
  br label %278

278:                                              ; preds = %298, %277
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %281 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp ult i32 %279, %282
  br i1 %283, label %284, label %301

284:                                              ; preds = %278
  %285 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %286 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %285, i32 0, i32 7
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %293 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = sub i32 %294, 1
  %296 = sub i32 0, %295
  %297 = call i32 @atomic_set(i32* %291, i32 %296)
  br label %298

298:                                              ; preds = %284
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  br label %278

301:                                              ; preds = %278
  %302 = load %struct.device*, %struct.device** %6, align 8
  %303 = call i32 @DMA_BIT_MASK(i32 36)
  %304 = call i32 @dma_set_mask(%struct.device* %302, i32 %303)
  %305 = load %struct.device*, %struct.device** %6, align 8
  %306 = call i32 @init_device(%struct.device* %305)
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %301
  %310 = load %struct.device*, %struct.device** %6, align 8
  %311 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %310, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %392

312:                                              ; preds = %301
  %313 = load %struct.device*, %struct.device** %6, align 8
  %314 = load i32, i32* @DESC_HDR_SEL0_RNG, align 4
  %315 = call i64 @hw_supports(%struct.device* %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %312
  %318 = load %struct.device*, %struct.device** %6, align 8
  %319 = call i32 @talitos_register_rng(%struct.device* %318)
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %11, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load %struct.device*, %struct.device** %6, align 8
  %324 = load i32, i32* %11, align 4
  %325 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %323, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %324)
  br label %392

326:                                              ; preds = %317
  %327 = load %struct.device*, %struct.device** %6, align 8
  %328 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %329

329:                                              ; preds = %326
  br label %330

330:                                              ; preds = %329, %312
  store i32 0, i32* %10, align 4
  br label %331

331:                                              ; preds = %388, %330
  %332 = load i32, i32* %10, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** @driver_algs, align 8
  %334 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %333)
  %335 = icmp slt i32 %332, %334
  br i1 %335, label %336, label %391

336:                                              ; preds = %331
  %337 = load %struct.device*, %struct.device** %6, align 8
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** @driver_algs, align 8
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i64 @hw_supports(%struct.device* %337, i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %387

346:                                              ; preds = %336
  %347 = load %struct.device*, %struct.device** %6, align 8
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** @driver_algs, align 8
  %349 = load i32, i32* %10, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 %350
  %352 = call %struct.talitos_crypto_alg* @talitos_alg_alloc(%struct.device* %347, %struct.TYPE_7__* %351)
  store %struct.talitos_crypto_alg* %352, %struct.talitos_crypto_alg** %12, align 8
  %353 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %354 = call i64 @IS_ERR(%struct.talitos_crypto_alg* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %346
  %357 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %358 = call i32 @PTR_ERR(%struct.talitos_crypto_alg* %357)
  store i32 %358, i32* %11, align 4
  br label %392

359:                                              ; preds = %346
  %360 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %361 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %360, i32 0, i32 0
  %362 = call i32 @crypto_register_alg(%struct.TYPE_8__* %361)
  store i32 %362, i32* %11, align 4
  %363 = load i32, i32* %11, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %374

365:                                              ; preds = %359
  %366 = load %struct.device*, %struct.device** %6, align 8
  %367 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %368 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %366, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %370)
  %372 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %373 = call i32 @kfree(%struct.talitos_crypto_alg* %372)
  br label %386

374:                                              ; preds = %359
  %375 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %376 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %375, i32 0, i32 1
  %377 = load %struct.talitos_private*, %struct.talitos_private** %8, align 8
  %378 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %377, i32 0, i32 6
  %379 = call i32 @list_add_tail(i32* %376, i32* %378)
  %380 = load %struct.device*, %struct.device** %6, align 8
  %381 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %12, align 8
  %382 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %380, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %374, %365
  br label %387

387:                                              ; preds = %386, %336
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %10, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %10, align 4
  br label %331

391:                                              ; preds = %331
  store i32 0, i32* %3, align 4
  br label %396

392:                                              ; preds = %356, %322, %309, %267, %197, %156, %90, %67, %51
  %393 = load %struct.of_device*, %struct.of_device** %4, align 8
  %394 = call i32 @talitos_remove(%struct.of_device* %393)
  %395 = load i32, i32* %11, align 4
  store i32 %395, i32* %3, align 4
  br label %396

396:                                              ; preds = %392, %391, %23
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.talitos_private*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @dev_driver_string(%struct.device*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @init_device(%struct.device*) #1

declare dso_local i64 @hw_supports(%struct.device*, i32) #1

declare dso_local i32 @talitos_register_rng(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local %struct.talitos_crypto_alg* @talitos_alg_alloc(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.talitos_crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.talitos_crypto_alg*) #1

declare dso_local i32 @crypto_register_alg(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.talitos_crypto_alg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @talitos_remove(%struct.of_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
