; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.ixp2000_flash_data* }
%struct.ixp2000_flash_data = type { i64, i64, %struct.flash_platform_data* }
%struct.flash_platform_data = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ixp2000_flash_info = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@ixp2000_flash_probe.probes = internal global [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"RedBoot\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cmdlinepart\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Probe of IXP2000 flash(%d banks x %dMiB)\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"IXP2000 MTD map only supports 8-bit mode, asking for %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NO_XIP = common dso_local global i32 0, align 4
@ixp2000_flash_read8 = common dso_local global i32 0, align 4
@ixp2000_flash_write8 = common dso_local global i32 0, align 4
@ixp2000_flash_copy_from = common dso_local global i32 0, align 4
@ixp2000_flash_copy_to = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not reserve memory region\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to ioremap flash region\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"map_probe failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not parse partitions\0A\00", align 1
@erratum44_workaround = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp2000_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp2000_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ixp2000_flash_data*, align 8
  %5 = alloca %struct.flash_platform_data*, align 8
  %6 = alloca %struct.ixp2000_flash_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.ixp2000_flash_data*, %struct.ixp2000_flash_data** %11, align 8
  store %struct.ixp2000_flash_data* %12, %struct.ixp2000_flash_data** %4, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.ixp2000_flash_data*, %struct.ixp2000_flash_data** %4, align 8
  %14 = icmp ne %struct.ixp2000_flash_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %245

18:                                               ; preds = %1
  %19 = load %struct.ixp2000_flash_data*, %struct.ixp2000_flash_data** %4, align 8
  %20 = getelementptr inbounds %struct.ixp2000_flash_data, %struct.ixp2000_flash_data* %19, i32 0, i32 2
  %21 = load %struct.flash_platform_data*, %struct.flash_platform_data** %20, align 8
  store %struct.flash_platform_data* %21, %struct.flash_platform_data** %5, align 8
  %22 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %23 = icmp ne %struct.flash_platform_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %245

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %32, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.ixp2000_flash_data*, %struct.ixp2000_flash_data** %4, align 8
  %44 = getelementptr inbounds %struct.ixp2000_flash_data, %struct.ixp2000_flash_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = ashr i32 %47, 20
  %49 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %45, i32 %48)
  %50 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %51 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %27
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %58 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 8
  %61 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %245

64:                                               ; preds = %27
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.ixp2000_flash_info* @kmalloc(i32 80, i32 %65)
  store %struct.ixp2000_flash_info* %66, %struct.ixp2000_flash_info** %6, align 8
  %67 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %68 = icmp ne %struct.ixp2000_flash_info* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %241

72:                                               ; preds = %64
  %73 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %74 = call i32 @memset(%struct.ixp2000_flash_info* %73, i32 0, i32 80)
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.ixp2000_flash_info* %76)
  %78 = load i32, i32* @NO_XIP, align 4
  %79 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %80 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 9
  store i32 %78, i32* %81, align 4
  %82 = load %struct.ixp2000_flash_data*, %struct.ixp2000_flash_data** %4, align 8
  %83 = getelementptr inbounds %struct.ixp2000_flash_data, %struct.ixp2000_flash_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = mul i64 %84, %85
  %87 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %88 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %91 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  %93 = load %struct.ixp2000_flash_data*, %struct.ixp2000_flash_data** %4, align 8
  %94 = getelementptr inbounds %struct.ixp2000_flash_data, %struct.ixp2000_flash_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %97 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store i64 %95, i64* %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_name(%struct.TYPE_12__* %100)
  %102 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %103 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 8
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @ixp2000_flash_read8, align 4
  %106 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %107 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @ixp2000_flash_write8, align 4
  %110 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %111 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 6
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @ixp2000_flash_copy_from, align 4
  %114 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %115 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @ixp2000_flash_copy_to, align 4
  %118 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %119 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  store i32 %117, i32* %120, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %130, %135
  %137 = add nsw i32 %136, 1
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_name(%struct.TYPE_12__* %139)
  %141 = call i32 @request_mem_region(i32 %125, i32 %137, i32 %140)
  %142 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %143 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %145 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %72
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  br label %241

154:                                              ; preds = %72
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %164, %169
  %171 = add nsw i32 %170, 1
  %172 = call i64 @ioremap(i32 %159, i32 %171)
  %173 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %174 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  store i64 %172, i64* %175, align 8
  %176 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %177 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %154
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %8, align 4
  br label %241

187:                                              ; preds = %154
  %188 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %189 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %192 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %191, i32 0, i32 2
  %193 = call %struct.TYPE_10__* @do_map_probe(i32 %190, %struct.TYPE_11__* %192)
  %194 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %195 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %194, i32 0, i32 1
  store %struct.TYPE_10__* %193, %struct.TYPE_10__** %195, align 8
  %196 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %197 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = icmp ne %struct.TYPE_10__* %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %187
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %204 = load i32, i32* @ENXIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %8, align 4
  br label %241

206:                                              ; preds = %187
  %207 = load i32, i32* @THIS_MODULE, align 4
  %208 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %209 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 4
  %212 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %213 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %216 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %215, i32 0, i32 0
  %217 = call i32 @parse_mtd_partitions(%struct.TYPE_10__* %214, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @ixp2000_flash_probe.probes, i64 0, i64 0), i32* %216, i32 0)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %206
  %221 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %222 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %221, i32 0, i32 1
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %6, align 8
  %225 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @add_mtd_partitions(%struct.TYPE_10__* %223, i32 %226, i32 %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %220
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %233, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %235

235:                                              ; preds = %231, %220
  br label %236

236:                                              ; preds = %235, %206
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %241

240:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %245

241:                                              ; preds = %239, %200, %181, %148, %69
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = call i32 @ixp2000_flash_remove(%struct.platform_device* %242)
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %241, %240, %54, %24, %15
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.ixp2000_flash_info* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ixp2000_flash_info*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ixp2000_flash_info*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local %struct.TYPE_10__* @do_map_probe(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @parse_mtd_partitions(%struct.TYPE_10__*, i8**, i32*, i32) #1

declare dso_local i32 @add_mtd_partitions(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ixp2000_flash_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
