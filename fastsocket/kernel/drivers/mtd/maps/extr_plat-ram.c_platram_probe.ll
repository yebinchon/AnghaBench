; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_plat-ram.c_platram_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_plat-ram.c_platram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { %struct.platdata_mtd_ram* }
%struct.platdata_mtd_ram = type { i8**, i32, i32, i64, i32, i32* }
%struct.platram_info = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__, i32*, %struct.platdata_mtd_ram*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i8*, i32*, i32, i32, i64 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"probe entered\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"no memory for flash info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"no memory resource specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"got platform resource %p (0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to request memory region\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"virt %p, %lu bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to ioremap() region\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"initialised map, probing for mtd\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"map_ram\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"failed to probe for map_ram\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@PLATRAM_RW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"add_mtd_device() failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"registered mtd device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @platram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platram_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platdata_mtd_ram*, align 8
  %5 = alloca %struct.platram_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %14, align 8
  %16 = icmp eq %struct.platdata_mtd_ram* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_13__* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %257

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %26, align 8
  store %struct.platdata_mtd_ram* %27, %struct.platdata_mtd_ram** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.platram_info* @kzalloc(i32 80, i32 %28)
  store %struct.platram_info* %29, %struct.platram_info** %5, align 8
  %30 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %31 = icmp eq %struct.platram_info* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %257

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.platram_info* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %45 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %44, i32 0, i32 6
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %45, align 8
  %46 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %47 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %48 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %47, i32 0, i32 5
  store %struct.platdata_mtd_ram* %46, %struct.platdata_mtd_ram** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %6, align 8
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = icmp eq %struct.resource* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %254

60:                                               ; preds = %38
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = load %struct.resource*, %struct.resource** %6, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %63, i64 %66)
  %68 = load %struct.resource*, %struct.resource** %6, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %72 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  store i64 %70, i64* %73, align 8
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = call i32 @resource_size(%struct.resource* %74)
  %76 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %77 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %80 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %60
  %84 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %85 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast i32* %86 to i8*
  br label %93

88:                                               ; preds = %60
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i8* [ %87, %83 ], [ %92, %88 ]
  %95 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %96 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %99 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %102 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.resource*, %struct.resource** %6, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %108 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32* @request_mem_region(i64 %106, i32 %110, i64 %113)
  %115 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %116 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %115, i32 0, i32 4
  store i32* %114, i32** %116, align 8
  %117 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %118 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %93
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_err(%struct.TYPE_13__* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %254

127:                                              ; preds = %93
  %128 = load %struct.resource*, %struct.resource** %6, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %132 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32* @ioremap(i64 %130, i32 %134)
  %136 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %137 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32* %135, i32** %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %142 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %146 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %144, i32 %148)
  %150 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %151 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %127
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_err(%struct.TYPE_13__* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %7, align 4
  br label %254

161:                                              ; preds = %127
  %162 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %163 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %162, i32 0, i32 3
  %164 = call i32 @simple_map_init(%struct.TYPE_11__* %163)
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %168 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %169 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  %171 = icmp ne i8** %170, null
  br i1 %171, label %172, label %200

172:                                              ; preds = %161
  %173 = load %struct.platdata_mtd_ram*, %struct.platdata_mtd_ram** %4, align 8
  %174 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %173, i32 0, i32 0
  %175 = load i8**, i8*** %174, align 8
  store i8** %175, i8*** %8, align 8
  br label %176

176:                                              ; preds = %196, %172
  %177 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %178 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %177, i32 0, i32 1
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = icmp ne %struct.TYPE_12__* %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load i8**, i8*** %8, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br label %185

185:                                              ; preds = %181, %176
  %186 = phi i1 [ false, %176 ], [ %184, %181 ]
  br i1 %186, label %187, label %199

187:                                              ; preds = %185
  %188 = load i8**, i8*** %8, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %191 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %190, i32 0, i32 3
  %192 = call i8* @do_map_probe(i8* %189, %struct.TYPE_11__* %191)
  %193 = bitcast i8* %192 to %struct.TYPE_12__*
  %194 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %195 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %194, i32 0, i32 1
  store %struct.TYPE_12__* %193, %struct.TYPE_12__** %195, align 8
  br label %196

196:                                              ; preds = %187
  %197 = load i8**, i8*** %8, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i32 1
  store i8** %198, i8*** %8, align 8
  br label %176

199:                                              ; preds = %185
  br label %207

200:                                              ; preds = %161
  %201 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %202 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %201, i32 0, i32 3
  %203 = call i8* @do_map_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_11__* %202)
  %204 = bitcast i8* %203 to %struct.TYPE_12__*
  %205 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %206 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %205, i32 0, i32 1
  store %struct.TYPE_12__* %204, %struct.TYPE_12__** %206, align 8
  br label %207

207:                                              ; preds = %200, %199
  %208 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %209 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %208, i32 0, i32 1
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = icmp eq %struct.TYPE_12__* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = call i32 @dev_err(%struct.TYPE_13__* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %7, align 4
  br label %254

218:                                              ; preds = %207
  %219 = load i32, i32* @THIS_MODULE, align 4
  %220 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %221 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %220, i32 0, i32 1
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  store i32 %219, i32* %223, align 8
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %227 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %226, i32 0, i32 1
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  store %struct.TYPE_13__* %225, %struct.TYPE_13__** %230, align 8
  %231 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %232 = load i32, i32* @PLATRAM_RW, align 4
  %233 = call i32 @platram_setrw(%struct.platram_info* %231, i32 %232)
  %234 = load %struct.platram_info*, %struct.platram_info** %5, align 8
  %235 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %234, i32 0, i32 1
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = call i64 @add_mtd_device(%struct.TYPE_12__* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %218
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = call i32 @dev_err(%struct.TYPE_13__* %241, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %239, %218
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i32 @dev_info(%struct.TYPE_13__* %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %252

252:                                              ; preds = %248, %245
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %2, align 4
  br label %259

254:                                              ; preds = %212, %155, %121, %54
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = call i32 @platram_remove(%struct.platform_device* %255)
  br label %257

257:                                              ; preds = %254, %32, %17
  %258 = load i32, i32* %7, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %257, %252
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.platram_info* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.platram_info*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @request_mem_region(i64, i32, i64) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @simple_map_init(%struct.TYPE_11__*) #1

declare dso_local i8* @do_map_probe(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @platram_setrw(%struct.platram_info*, i32) #1

declare dso_local i64 @add_mtd_device(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @platram_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
