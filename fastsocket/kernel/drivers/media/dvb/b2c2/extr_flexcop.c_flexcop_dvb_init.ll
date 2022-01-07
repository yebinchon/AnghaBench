; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_dvb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_dvb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.TYPE_20__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_24__, %struct.TYPE_24__, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.flexcop_device* }
%struct.TYPE_22__ = type { %struct.TYPE_23__, i32, i32*, i32, i32, i32, %struct.flexcop_device* }
%struct.TYPE_23__ = type { i32, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_23__*, i32 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"FlexCop Digital TV device\00", align 1
@adapter_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error registering DVB adapter\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@FC_MAX_FEED = common dso_local global i32 0, align 4
@flexcop_dvb_start_feed = common dso_local global i32 0, align 4
@flexcop_dvb_stop_feed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dvb_dmx failed: error %d\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dvb_dmxdev_init failed: error %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"adding hw_frontend to dmx failed: error %d\00", align 1
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"adding mem_frontend to dmx failed: error %d\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"connect frontend failed: error %d\00", align 1
@FC_STATE_DVB_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*)* @flexcop_dvb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_dvb_init(%struct.flexcop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  %5 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %6 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %5, i32 0, i32 0
  %7 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %8 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %11 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @adapter_nr, align 4
  %14 = call i32 @dvb_register_adapter(%struct.TYPE_20__* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %196

20:                                               ; preds = %1
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %23 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  store %struct.flexcop_device* %21, %struct.flexcop_device** %24, align 8
  %25 = load i32, i32* @DMX_TS_FILTERING, align 4
  %26 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %31 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %35 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %36 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 6
  store %struct.flexcop_device* %34, %struct.flexcop_device** %37, align 8
  %38 = load i32, i32* @FC_MAX_FEED, align 4
  %39 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %40 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %43 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 5
  store i32 %38, i32* %44, align 8
  %45 = load i32, i32* @flexcop_dvb_start_feed, align 4
  %46 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %47 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @flexcop_dvb_stop_feed, align 4
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %54 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %57 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %56, i32 0, i32 1
  %58 = call i32 @dvb_dmx_init(%struct.TYPE_22__* %57)
  store i32 %58, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %20
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %191

63:                                               ; preds = %20
  %64 = load i32, i32* @DMX_FRONTEND_0, align 4
  %65 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %66 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %69 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %73 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %76 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %79 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %80, align 8
  %81 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %82 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %85 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %84, i32 0, i32 2
  %86 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %87 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %86, i32 0, i32 0
  %88 = call i32 @dvb_dmxdev_init(%struct.TYPE_21__* %85, %struct.TYPE_20__* %87)
  store i32 %88, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %63
  %91 = load i32, i32* %4, align 4
  %92 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %187

93:                                               ; preds = %63
  %94 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %95 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)** %97, align 8
  %99 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %100 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %103 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %102, i32 0, i32 3
  %104 = call i32 %98(%struct.TYPE_23__* %101, %struct.TYPE_24__* %103)
  store i32 %104, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %183

109:                                              ; preds = %93
  %110 = load i32, i32* @DMX_MEMORY_FE, align 4
  %111 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %112 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %115 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)** %117, align 8
  %119 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %120 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %123 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %122, i32 0, i32 4
  %124 = call i32 %118(%struct.TYPE_23__* %121, %struct.TYPE_24__* %123)
  store i32 %124, i32* %4, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %109
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  br label %171

129:                                              ; preds = %109
  %130 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %131 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 2
  %134 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)** %133, align 8
  %135 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %136 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %139 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %138, i32 0, i32 3
  %140 = call i32 %134(%struct.TYPE_23__* %137, %struct.TYPE_24__* %139)
  store i32 %140, i32* %4, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %129
  %143 = load i32, i32* %4, align 4
  %144 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  br label %159

145:                                              ; preds = %129
  %146 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %147 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %146, i32 0, i32 0
  %148 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %149 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %148, i32 0, i32 6
  %150 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %151 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = call i32 @dvb_net_init(%struct.TYPE_20__* %147, i32* %149, %struct.TYPE_23__* %152)
  %154 = load i32, i32* @FC_STATE_DVB_INIT, align 4
  %155 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %156 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  store i32 0, i32* %2, align 4
  br label %196

159:                                              ; preds = %142
  %160 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %161 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)** %163, align 8
  %165 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %166 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %169 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %168, i32 0, i32 4
  %170 = call i32 %164(%struct.TYPE_23__* %167, %struct.TYPE_24__* %169)
  br label %171

171:                                              ; preds = %159, %126
  %172 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %173 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 3
  %176 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*)** %175, align 8
  %177 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %178 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %181 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %180, i32 0, i32 3
  %182 = call i32 %176(%struct.TYPE_23__* %179, %struct.TYPE_24__* %181)
  br label %183

183:                                              ; preds = %171, %106
  %184 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %185 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %184, i32 0, i32 2
  %186 = call i32 @dvb_dmxdev_release(%struct.TYPE_21__* %185)
  br label %187

187:                                              ; preds = %183, %90
  %188 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %189 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %188, i32 0, i32 1
  %190 = call i32 @dvb_dmx_release(%struct.TYPE_22__* %189)
  br label %191

191:                                              ; preds = %187, %60
  %192 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %193 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %192, i32 0, i32 0
  %194 = call i32 @dvb_unregister_adapter(%struct.TYPE_20__* %193)
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %191, %145, %17
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_20__*, i8*, i32, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_22__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_20__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_21__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_22__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
