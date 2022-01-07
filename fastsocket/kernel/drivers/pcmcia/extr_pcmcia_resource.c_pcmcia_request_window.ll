; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.pcmcia_socket* }
%struct.pcmcia_socket = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 (%struct.pcmcia_socket*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__*, i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__, %struct.pcmcia_socket*, %struct.pcmcia_device*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WIN_PAGED = common dso_local global i32 0, align 4
@WIN_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad attribute setting for iomem region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SS_CAP_MEM_ALIGN = common dso_local global i32 0, align 4
@WIN_STRICT_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid map size\0A\00", align 1
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid base address\0A\00", align 1
@MAX_WIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"all windows are used already\0A\00", align 1
@WINDOW_MAGIC = common dso_local global i32 0, align 4
@WIN_MAP_BELOW_1MB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"allocating mem region failed\0A\00", align 1
@WIN_MEMORY_TYPE = common dso_local global i32 0, align 4
@MAP_ATTRIB = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@WIN_USE_WAIT = common dso_local global i32 0, align 4
@MAP_USE_WAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to set memory mapping\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_request_window(%struct.pcmcia_device** %0, %struct.TYPE_11__* %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_device**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcmcia_device** %0, %struct.pcmcia_device*** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %12 = load %struct.pcmcia_device**, %struct.pcmcia_device*** %5, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %12, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 1
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %14, align 8
  store %struct.pcmcia_socket* %15, %struct.pcmcia_socket** %8, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SOCKET_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %329

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WIN_PAGED, align 4
  %30 = load i32, i32* @WIN_SHARED, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %36 = call i32 @ds_dbg(%struct.pcmcia_socket* %35, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %329

39:                                               ; preds = %25
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %46 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %52 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SS_CAP_MEM_ALIGN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WIN_STRICT_ALIGN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57, %50
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %70 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %67, %64 ], [ %71, %68 ]
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %78 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = and i32 %76, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %85 = call i32 @ds_dbg(%struct.pcmcia_socket* %84, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %329

88:                                               ; preds = %72
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %95 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %100, %93
  %109 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %110 = call i32 @ds_dbg(%struct.pcmcia_socket* %109, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %329

113:                                              ; preds = %100
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %118, %113
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @MAX_WIN, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %126 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @SOCKET_WIN_REQ(i32 %128)
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  br label %137

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %120

137:                                              ; preds = %132, %120
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @MAX_WIN, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %143 = call i32 @ds_dbg(%struct.pcmcia_socket* %142, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %329

146:                                              ; preds = %137
  %147 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %148 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %147, i32 0, i32 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %9, align 8
  %153 = load i32, i32* @WINDOW_MAGIC, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.pcmcia_device**, %struct.pcmcia_device*** %5, align 8
  %160 = load %struct.pcmcia_device*, %struct.pcmcia_device** %159, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 3
  store %struct.pcmcia_device* %160, %struct.pcmcia_device** %162, align 8
  %163 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store %struct.pcmcia_socket* %163, %struct.pcmcia_socket** %165, align 8
  %166 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %167 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %201, label %172

172:                                              ; preds = %146
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @WIN_MAP_BELOW_1MB, align 4
  %184 = and i32 %182, %183
  %185 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %186 = call %struct.TYPE_13__* @pcmcia_find_mem_region(i32 %175, i32 %178, i32 %179, i32 %184, %struct.pcmcia_socket* %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %189, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = icmp ne %struct.TYPE_13__* %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %172
  %196 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %197 = call i32 @ds_dbg(%struct.pcmcia_socket* %196, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %4, align 4
  br label %329

200:                                              ; preds = %172
  br label %201

201:                                              ; preds = %200, %146
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @CLIENT_WIN_REQ(i32 %202)
  %204 = load %struct.pcmcia_device**, %struct.pcmcia_device*** %5, align 8
  %205 = load %struct.pcmcia_device*, %struct.pcmcia_device** %204, align 8
  %206 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 8
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 4
  store i32 0, i32* %216, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  store i32 %219, i32* %222, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @WIN_MEMORY_TYPE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %201
  %230 = load i32, i32* @MAP_ATTRIB, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %230
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %229, %201
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @WIN_ENABLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load i32, i32* @MAP_ACTIVE, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %243, %236
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load i32, i32* @MAP_16BIT, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %258
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @WIN_USE_WAIT, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %264
  %272 = load i32, i32* @MAP_USE_WAIT, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %271, %264
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 3
  store i64 0, i64* %281, align 8
  %282 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %283 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %282, i32 0, i32 3
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i64 (%struct.pcmcia_socket*, %struct.TYPE_12__*)*, i64 (%struct.pcmcia_socket*, %struct.TYPE_12__*)** %285, align 8
  %287 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = call i64 %286(%struct.pcmcia_socket* %287, %struct.TYPE_12__* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %278
  %293 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %294 = call i32 @ds_dbg(%struct.pcmcia_socket* %293, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %295 = load i32, i32* @EIO, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %4, align 4
  br label %329

297:                                              ; preds = %278
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @SOCKET_WIN_REQ(i32 %298)
  %300 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %301 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %305 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %297
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  store i32 %314, i32* %316, align 4
  br label %326

317:                                              ; preds = %297
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 2
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 4
  br label %326

326:                                              ; preds = %317, %310
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %328 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %327, %struct.TYPE_10__** %328, align 8
  store i32 0, i32* %4, align 4
  br label %329

329:                                              ; preds = %326, %292, %195, %141, %108, %83, %34, %22
  %330 = load i32, i32* %4, align 4
  ret i32 %330
}

declare dso_local i32 @ds_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @SOCKET_WIN_REQ(i32) #1

declare dso_local %struct.TYPE_13__* @pcmcia_find_mem_region(i32, i32, i32, i32, %struct.pcmcia_socket*) #1

declare dso_local i32 @CLIENT_WIN_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
