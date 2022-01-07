; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc_device = type { %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_6__, %struct.TYPE_9__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@device_id_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"provides_device_sdrs\00", align 1
@provides_dev_sdrs_show = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@revision_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"firmware_revision\00", align 1
@firmware_rev_show = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ipmi_version\00", align 1
@ipmi_version_show = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"additional_device_support\00", align 1
@add_dev_support_show = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"manufacturer_id\00", align 1
@manufacturer_id_show = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"product_id\00", align 1
@product_id_show = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"guid\00", align 1
@guid_show = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"aux_firmware_revision\00", align 1
@aux_firmware_rev_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc_device*)* @create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_files(%struct.bmc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.bmc_device* %0, %struct.bmc_device** %3, align 8
  %5 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %6 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i8*, i8** @S_IRUGO, align 8
  %10 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %11 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %9, i8** %13, align 8
  %14 = load i32, i32* @device_id_show, align 4
  %15 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %16 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %19 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %20)
  %22 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %23 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load i8*, i8** @S_IRUGO, align 8
  %27 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %28 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i8* %26, i8** %30, align 8
  %31 = load i32, i32* @provides_dev_sdrs_show, align 4
  %32 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %33 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %36 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %37)
  %39 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %40 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = load i8*, i8** @S_IRUGO, align 8
  %44 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %45 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* @revision_show, align 4
  %49 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %50 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %53 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %54)
  %56 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %57 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %59, align 8
  %60 = load i8*, i8** @S_IRUGO, align 8
  %61 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %62 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  %65 = load i32, i32* @firmware_rev_show, align 4
  %66 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %67 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %70 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %71)
  %73 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %74 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %76, align 8
  %77 = load i8*, i8** @S_IRUGO, align 8
  %78 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %79 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i8* %77, i8** %81, align 8
  %82 = load i32, i32* @ipmi_version_show, align 4
  %83 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %84 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  %86 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %87 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %88)
  %90 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %91 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %93, align 8
  %94 = load i8*, i8** @S_IRUGO, align 8
  %95 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %96 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* @add_dev_support_show, align 4
  %100 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %101 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %104 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %105)
  %107 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %108 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %110, align 8
  %111 = load i8*, i8** @S_IRUGO, align 8
  %112 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %113 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i8* %111, i8** %115, align 8
  %116 = load i32, i32* @manufacturer_id_show, align 4
  %117 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %118 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 8
  %120 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %121 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %122)
  %124 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %125 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %127, align 8
  %128 = load i8*, i8** @S_IRUGO, align 8
  %129 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %130 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i8* %128, i8** %132, align 8
  %133 = load i32, i32* @product_id_show, align 4
  %134 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %135 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %138 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %139)
  %141 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %142 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %141, i32 0, i32 11
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %144, align 8
  %145 = load i8*, i8** @S_IRUGO, align 8
  %146 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %147 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %146, i32 0, i32 11
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i8* %145, i8** %149, align 8
  %150 = load i32, i32* @guid_show, align 4
  %151 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %152 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %155 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %154, i32 0, i32 11
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %156)
  %158 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %159 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %161, align 8
  %162 = load i8*, i8** @S_IRUGO, align 8
  %163 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %164 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i8* %162, i8** %166, align 8
  %167 = load i32, i32* @aux_firmware_rev_show, align 4
  %168 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %169 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 8
  %171 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %172 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %173)
  %175 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %176 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %175, i32 0, i32 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %180 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %179, i32 0, i32 0
  %181 = call i32 @device_create_file(i32* %178, %struct.TYPE_9__* %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %1
  br label %377

185:                                              ; preds = %1
  %186 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %187 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %191 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %190, i32 0, i32 2
  %192 = call i32 @device_create_file(i32* %189, %struct.TYPE_9__* %191)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  br label %369

196:                                              ; preds = %185
  %197 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %198 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %197, i32 0, i32 1
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %202 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %201, i32 0, i32 3
  %203 = call i32 @device_create_file(i32* %200, %struct.TYPE_9__* %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  br label %361

207:                                              ; preds = %196
  %208 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %209 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %208, i32 0, i32 1
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %213 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %212, i32 0, i32 4
  %214 = call i32 @device_create_file(i32* %211, %struct.TYPE_9__* %213)
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  br label %353

218:                                              ; preds = %207
  %219 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %220 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %219, i32 0, i32 1
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %224 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %223, i32 0, i32 5
  %225 = call i32 @device_create_file(i32* %222, %struct.TYPE_9__* %224)
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* %4, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %345

229:                                              ; preds = %218
  %230 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %231 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %230, i32 0, i32 1
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %235 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %234, i32 0, i32 6
  %236 = call i32 @device_create_file(i32* %233, %struct.TYPE_9__* %235)
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  br label %337

240:                                              ; preds = %229
  %241 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %242 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %241, i32 0, i32 1
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %246 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %245, i32 0, i32 7
  %247 = call i32 @device_create_file(i32* %244, %struct.TYPE_9__* %246)
  store i32 %247, i32* %4, align 4
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %329

251:                                              ; preds = %240
  %252 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %253 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %252, i32 0, i32 1
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %257 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %256, i32 0, i32 8
  %258 = call i32 @device_create_file(i32* %255, %struct.TYPE_9__* %257)
  store i32 %258, i32* %4, align 4
  %259 = load i32, i32* %4, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  br label %321

262:                                              ; preds = %251
  %263 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %264 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %263, i32 0, i32 10
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %262
  %269 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %270 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %269, i32 0, i32 1
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %274 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %273, i32 0, i32 9
  %275 = call i32 @device_create_file(i32* %272, %struct.TYPE_9__* %274)
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* %4, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %268
  br label %313

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %262
  %281 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %282 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %281, i32 0, i32 12
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %280
  %286 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %287 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %286, i32 0, i32 1
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %291 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %290, i32 0, i32 11
  %292 = call i32 @device_create_file(i32* %289, %struct.TYPE_9__* %291)
  store i32 %292, i32* %4, align 4
  %293 = load i32, i32* %4, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %285
  br label %298

296:                                              ; preds = %285
  br label %297

297:                                              ; preds = %296, %280
  store i32 0, i32* %2, align 4
  br label %379

298:                                              ; preds = %295
  %299 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %300 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %299, i32 0, i32 10
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %298
  %305 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %306 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %305, i32 0, i32 1
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 0
  %309 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %310 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %309, i32 0, i32 9
  %311 = call i32 @device_remove_file(i32* %308, %struct.TYPE_9__* %310)
  br label %312

312:                                              ; preds = %304, %298
  br label %313

313:                                              ; preds = %312, %278
  %314 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %315 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %314, i32 0, i32 1
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %319 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %318, i32 0, i32 8
  %320 = call i32 @device_remove_file(i32* %317, %struct.TYPE_9__* %319)
  br label %321

321:                                              ; preds = %313, %261
  %322 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %323 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %322, i32 0, i32 1
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %327 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %326, i32 0, i32 7
  %328 = call i32 @device_remove_file(i32* %325, %struct.TYPE_9__* %327)
  br label %329

329:                                              ; preds = %321, %250
  %330 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %331 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %330, i32 0, i32 1
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %335 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %334, i32 0, i32 6
  %336 = call i32 @device_remove_file(i32* %333, %struct.TYPE_9__* %335)
  br label %337

337:                                              ; preds = %329, %239
  %338 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %339 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %338, i32 0, i32 1
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  %342 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %343 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %342, i32 0, i32 5
  %344 = call i32 @device_remove_file(i32* %341, %struct.TYPE_9__* %343)
  br label %345

345:                                              ; preds = %337, %228
  %346 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %347 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %346, i32 0, i32 1
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %351 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %350, i32 0, i32 4
  %352 = call i32 @device_remove_file(i32* %349, %struct.TYPE_9__* %351)
  br label %353

353:                                              ; preds = %345, %217
  %354 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %355 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %354, i32 0, i32 1
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %359 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %358, i32 0, i32 3
  %360 = call i32 @device_remove_file(i32* %357, %struct.TYPE_9__* %359)
  br label %361

361:                                              ; preds = %353, %206
  %362 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %363 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %362, i32 0, i32 1
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 0
  %366 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %367 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %366, i32 0, i32 2
  %368 = call i32 @device_remove_file(i32* %365, %struct.TYPE_9__* %367)
  br label %369

369:                                              ; preds = %361, %195
  %370 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %371 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %370, i32 0, i32 1
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 0
  %374 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %375 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %374, i32 0, i32 0
  %376 = call i32 @device_remove_file(i32* %373, %struct.TYPE_9__* %375)
  br label %377

377:                                              ; preds = %369, %184
  %378 = load i32, i32* %4, align 4
  store i32 %378, i32* %2, align 4
  br label %379

379:                                              ; preds = %377, %297
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
