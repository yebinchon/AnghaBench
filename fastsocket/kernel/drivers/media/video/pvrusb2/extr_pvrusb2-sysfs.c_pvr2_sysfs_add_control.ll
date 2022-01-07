; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_add_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { %struct.TYPE_18__*, %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item*, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32 }
%struct.pvr2_sysfs_ctl_item = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_15__**, i64*, %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_23__, %struct.TYPE_25__, %struct.TYPE_16__, %struct.TYPE_22__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs*, %struct.pvr2_ctrl* }
%struct.TYPE_17__ = type { %struct.TYPE_15__**, i64* }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_15__, i32 }
%struct.pvr2_ctrl = type { i32 }
%struct.TYPE_19__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Creating pvr2_sysfs_ctl_item id=%p\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@show_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@show_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@show_min = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@show_max = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"def_val\00", align 1
@show_def = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"cur_val\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"custom_val\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"enum_val\00", align 1
@show_enum = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"bit_val\00", align 1
@show_bits = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@show_val_norm = common dso_local global i32 0, align 4
@store_val_norm = common dso_local global i32 0, align 4
@show_val_custom = common dso_local global i32 0, align 4
@store_val_custom = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"ctl_%s\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"sysfs_create_group error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_sysfs*, i32)* @pvr2_sysfs_add_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_sysfs_add_control(%struct.pvr2_sysfs* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_sysfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_sysfs_ctl_item*, align 8
  %6 = alloca %struct.pvr2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvr2_sysfs* %0, %struct.pvr2_sysfs** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_index(i32 %13, i32 %14)
  store %struct.pvr2_ctrl* %15, %struct.pvr2_ctrl** %6, align 8
  %16 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %17 = icmp ne %struct.pvr2_ctrl* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %356

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pvr2_sysfs_ctl_item* @kzalloc(i32 280, i32 %20)
  store %struct.pvr2_sysfs_ctl_item* %21, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %22 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %23 = icmp ne %struct.pvr2_sysfs_ctl_item* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %356

25:                                               ; preds = %19
  %26 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %27 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.pvr2_sysfs_ctl_item* %26)
  %28 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %29 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %30 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %29, i32 0, i32 16
  store %struct.pvr2_ctrl* %28, %struct.pvr2_ctrl** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %33 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %35 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %36 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %35, i32 0, i32 15
  store %struct.pvr2_sysfs* %34, %struct.pvr2_sysfs** %36, align 8
  %37 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %38 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %37, i32 0, i32 14
  store %struct.pvr2_sysfs_ctl_item* null, %struct.pvr2_sysfs_ctl_item** %38, align 8
  %39 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %39, i32 0, i32 1
  %41 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %40, align 8
  %42 = icmp ne %struct.pvr2_sysfs_ctl_item* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %25
  %44 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %45 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %46 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %45, i32 0, i32 1
  %47 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %46, align 8
  %48 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %47, i32 0, i32 14
  store %struct.pvr2_sysfs_ctl_item* %44, %struct.pvr2_sysfs_ctl_item** %48, align 8
  br label %53

49:                                               ; preds = %25
  %50 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %51 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %52 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %51, i32 0, i32 2
  store %struct.pvr2_sysfs_ctl_item* %50, %struct.pvr2_sysfs_ctl_item** %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %55 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %55, i32 0, i32 1
  store %struct.pvr2_sysfs_ctl_item* %54, %struct.pvr2_sysfs_ctl_item** %56, align 8
  %57 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %58 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %60, align 8
  %61 = load i8*, i8** @S_IRUGO, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %64 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %63, i32 0, i32 13
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 8
  %67 = load i32, i32* @show_name, align 4
  %68 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %69 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %68, i32 0, i32 13
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %72 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load i8*, i8** @S_IRUGO, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %78 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %77, i32 0, i32 12
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  %81 = load i32, i32* @show_type, align 4
  %82 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %83 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %82, i32 0, i32 12
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %86 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %88, align 8
  %89 = load i8*, i8** @S_IRUGO, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %92 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* @show_min, align 4
  %96 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %97 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 8
  %99 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %100 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %102, align 8
  %103 = load i8*, i8** @S_IRUGO, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %106 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load i32, i32* @show_max, align 4
  %110 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %111 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %114 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %116, align 8
  %117 = load i8*, i8** @S_IRUGO, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %120 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 8
  %123 = load i32, i32* @show_def, align 4
  %124 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %125 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 8
  %127 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %128 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %127, i32 0, i32 10
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %130, align 8
  %131 = load i8*, i8** @S_IRUGO, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %134 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %133, i32 0, i32 10
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 8
  %137 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %138 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %140, align 8
  %141 = load i8*, i8** @S_IRUGO, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %144 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 8
  %147 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %148 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %150, align 8
  %151 = load i8*, i8** @S_IRUGO, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %154 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store i32 %152, i32* %156, align 8
  %157 = load i32, i32* @show_enum, align 4
  %158 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %159 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %162 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %164, align 8
  %165 = load i8*, i8** @S_IRUGO, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %168 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 8
  %171 = load i32, i32* @show_bits, align 4
  %172 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %173 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  %175 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %176 = call i64 @pvr2_ctrl_is_writable(%struct.pvr2_ctrl* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %53
  %179 = load i32, i32* @S_IWUSR, align 4
  %180 = load i32, i32* @S_IWGRP, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %183 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %182, i32 0, i32 10
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %181
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @S_IWUSR, align 4
  %189 = load i32, i32* @S_IWGRP, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %192 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %190
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %178, %53
  store i32 0, i32* %8, align 4
  %198 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %199 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %198, i32 0, i32 13
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %202 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %201, i32 0, i32 3
  %203 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %8, align 4
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %203, i64 %206
  store %struct.TYPE_15__* %200, %struct.TYPE_15__** %207, align 8
  %208 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %209 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %208, i32 0, i32 12
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %212 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %211, i32 0, i32 3
  %213 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %8, align 4
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %213, i64 %216
  store %struct.TYPE_15__* %210, %struct.TYPE_15__** %217, align 8
  %218 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %219 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %222 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %221, i32 0, i32 3
  %223 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %223, i64 %226
  store %struct.TYPE_15__* %220, %struct.TYPE_15__** %227, align 8
  %228 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %229 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  %231 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %232 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %231, i32 0, i32 3
  %233 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %8, align 4
  %236 = zext i32 %234 to i64
  %237 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %233, i64 %236
  store %struct.TYPE_15__* %230, %struct.TYPE_15__** %237, align 8
  %238 = load i32, i32* @show_val_norm, align 4
  %239 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %240 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %239, i32 0, i32 10
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* @store_val_norm, align 4
  %243 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %244 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  %246 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %247 = call i64 @pvr2_ctrl_has_custom_symbols(%struct.pvr2_ctrl* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %197
  %250 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %251 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %250, i32 0, i32 9
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 2
  %253 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %254 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %253, i32 0, i32 3
  %255 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %8, align 4
  %258 = zext i32 %256 to i64
  %259 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %255, i64 %258
  store %struct.TYPE_15__* %252, %struct.TYPE_15__** %259, align 8
  %260 = load i32, i32* @show_val_custom, align 4
  %261 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %262 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  %264 = load i32, i32* @store_val_custom, align 4
  %265 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %266 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  br label %268

268:                                              ; preds = %249, %197
  %269 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %270 = call i32 @pvr2_ctrl_get_type(%struct.pvr2_ctrl* %269)
  switch i32 %270, label %314 [
    i32 129, label %271
    i32 128, label %282
    i32 130, label %303
  ]

271:                                              ; preds = %268
  %272 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %273 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %272, i32 0, i32 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  %275 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %276 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %275, i32 0, i32 3
  %277 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %8, align 4
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %277, i64 %280
  store %struct.TYPE_15__* %274, %struct.TYPE_15__** %281, align 8
  br label %315

282:                                              ; preds = %268
  %283 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %284 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 0
  %286 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %287 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %286, i32 0, i32 3
  %288 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %287, align 8
  %289 = load i32, i32* %8, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %8, align 4
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %288, i64 %291
  store %struct.TYPE_15__* %285, %struct.TYPE_15__** %292, align 8
  %293 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %294 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %297 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %296, i32 0, i32 3
  %298 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %8, align 4
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %298, i64 %301
  store %struct.TYPE_15__* %295, %struct.TYPE_15__** %302, align 8
  br label %315

303:                                              ; preds = %268
  %304 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %305 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 0
  %307 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %308 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %307, i32 0, i32 3
  %309 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %8, align 4
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %309, i64 %312
  store %struct.TYPE_15__* %306, %struct.TYPE_15__** %313, align 8
  br label %315

314:                                              ; preds = %268
  br label %315

315:                                              ; preds = %314, %303, %282, %271
  %316 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %317 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %316, i32 0, i32 4
  %318 = load i64*, i64** %317, align 8
  %319 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %320 = call i32 @pvr2_ctrl_get_name(%struct.pvr2_ctrl* %319)
  %321 = call i32 @scnprintf(i64* %318, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %320)
  store i32 %321, i32* %7, align 4
  %322 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %323 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %322, i32 0, i32 4
  %324 = load i64*, i64** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %324, i64 %326
  store i64 0, i64* %327, align 8
  %328 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %329 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %328, i32 0, i32 4
  %330 = load i64*, i64** %329, align 8
  %331 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %332 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 1
  store i64* %330, i64** %333, align 8
  %334 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %335 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %334, i32 0, i32 3
  %336 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %335, align 8
  %337 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %338 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 0
  store %struct.TYPE_15__** %336, %struct.TYPE_15__*** %339, align 8
  %340 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %341 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %340, i32 0, i32 0
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %345 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %344, i32 0, i32 2
  %346 = call i32 @sysfs_create_group(i32* %343, %struct.TYPE_17__* %345)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %315
  %350 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @pvr2_trace(i32 %350, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %351)
  br label %356

353:                                              ; preds = %315
  %354 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %355 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %354, i32 0, i32 1
  store i32 1, i32* %355, align 4
  br label %356

356:                                              ; preds = %353, %349, %24, %18
  ret void
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_index(i32, i32) #1

declare dso_local %struct.pvr2_sysfs_ctl_item* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.pvr2_sysfs_ctl_item*) #1

declare dso_local i64 @pvr2_ctrl_is_writable(%struct.pvr2_ctrl*) #1

declare dso_local i64 @pvr2_ctrl_has_custom_symbols(%struct.pvr2_ctrl*) #1

declare dso_local i32 @pvr2_ctrl_get_type(%struct.pvr2_ctrl*) #1

declare dso_local i32 @scnprintf(i64*, i32, i8*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_name(%struct.pvr2_ctrl*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
