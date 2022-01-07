; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_modify_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_modify_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_20__*, %struct.pcmcia_socket* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.pcmcia_socket = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_18__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_13__*)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64, i64 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CONF_IRQ_CHANGE_VALID = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_VCC_CHANGE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"changing Vcc is not allowed at this time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONF_VPP1_CHANGE_VALID = common dso_local global i32 0, align 4
@CONF_VPP2_CHANGE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Vpp1 and Vpp2 must be the same\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Unable to set VPP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CONF_IO_CHANGE_WIDTH = common dso_local global i32 0, align 4
@io_speed = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_modify_configuration(%struct.pcmcia_device* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %12, align 8
  store %struct.pcmcia_socket* %13, %struct.pcmcia_socket** %6, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SOCKET_PRESENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %246

26:                                               ; preds = %2
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CONFIG_LOCKED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %246

36:                                               ; preds = %26
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CONF_IRQ_CHANGE_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %36
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %57 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %61 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  br label %73

63:                                               ; preds = %43
  %64 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %71 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %50
  %74 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %75 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %74, i32 0, i32 1
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_13__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_13__*)** %77, align 8
  %79 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %80 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %81 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %80, i32 0, i32 4
  %82 = call i64 %78(%struct.pcmcia_socket* %79, %struct.TYPE_13__* %81)
  br label %83

83:                                               ; preds = %73, %36
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CONF_VCC_CHANGE_VALID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %92 = call i32 @ds_dbg(%struct.pcmcia_socket* %91, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %246

95:                                               ; preds = %83
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CONF_VPP1_CHANGE_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %95
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CONF_VPP2_CHANGE_VALID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %102
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %119 = call i32 @ds_dbg(%struct.pcmcia_socket* %118, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %246

122:                                              ; preds = %109
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %127 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %130 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %129, i32 0, i32 1
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_13__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_13__*)** %132, align 8
  %134 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %135 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %136 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %135, i32 0, i32 4
  %137 = call i64 %133(%struct.pcmcia_socket* %134, %struct.TYPE_13__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %122
  %140 = load i32, i32* @KERN_WARNING, align 4
  %141 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %142 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %141, i32 0, i32 3
  %143 = call i32 @dev_printk(i32 %140, i32* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %246

146:                                              ; preds = %122
  br label %167

147:                                              ; preds = %102, %95
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CONF_VPP1_CHANGE_VALID, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CONF_VPP2_CHANGE_VALID, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154, %147
  %162 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %163 = call i32 @ds_dbg(%struct.pcmcia_socket* %162, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %246

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %146
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CONF_IO_CHANGE_WIDTH, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %245

174:                                              ; preds = %167
  %175 = bitcast %struct.TYPE_18__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %175, i8 0, i64 40, i1 false)
  %176 = bitcast i8* %175 to %struct.TYPE_18__*
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 4
  store i32 1, i32* %177, align 4
  %178 = load i32, i32* @io_speed, align 4
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i32 %178, i32* %179, align 4
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %241, %174
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @MAX_IO_WIN, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %244

184:                                              ; preds = %180
  %185 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %186 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %185, i32 0, i32 2
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = icmp ne %struct.TYPE_15__* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %184
  br label %241

195:                                              ; preds = %184
  %196 = load i32, i32* %10, align 4
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* %10, align 4
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* @MAP_ACTIVE, align 4
  %201 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %202 = or i32 %200, %201
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %202, i32* %203, align 4
  %204 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %205 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %204, i32 0, i32 2
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 %213, i32* %214, align 4
  %215 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %216 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %215, i32 0, i32 2
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 %224, i32* %225, align 4
  %226 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %227 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %226, i32 0, i32 1
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_18__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_18__*)** %229, align 8
  %231 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %232 = call i32 %230(%struct.pcmcia_socket* %231, %struct.TYPE_18__* %8)
  %233 = call i32 @mdelay(i32 40)
  %234 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %235 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %234, i32 0, i32 1
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_18__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_18__*)** %237, align 8
  %239 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %240 = call i32 %238(%struct.pcmcia_socket* %239, %struct.TYPE_18__* %9)
  br label %241

241:                                              ; preds = %195, %194
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %180

244:                                              ; preds = %180
  br label %245

245:                                              ; preds = %244, %167
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %245, %161, %139, %117, %90, %33, %23
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @ds_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
