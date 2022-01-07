; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_probe_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_probe_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.TYPE_7__, i64, %struct.efx_nic* }
%struct.TYPE_7__ = type { i64 }
%struct.efx_nic = type { %struct.efx_ptp_data*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.efx_ptp_data = type { i32, i32, i8*, i32, i8*, i32, %struct.TYPE_12__, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__, i32, i32, i32, %struct.efx_channel* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sfc_ptp\00", align 1
@efx_ptp_worker = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@MAX_RECEIVE_EVENTS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@MAX_PPB = common dso_local global i32 0, align 4
@efx_phc_adjfreq = common dso_local global i32 0, align 4
@efx_phc_adjtime = common dso_local global i32 0, align 4
@efx_phc_gettime = common dso_local global i32 0, align 4
@efx_phc_settime = common dso_local global i32 0, align 4
@efx_phc_enable = common dso_local global i32 0, align 4
@efx_ptp_pps_worker = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sfc_pps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*)* @efx_ptp_probe_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_probe_channel(%struct.efx_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 2
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %12 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.efx_ptp_data* @kzalloc(i32 168, i32 %16)
  store %struct.efx_ptp_data* %17, %struct.efx_ptp_data** %5, align 8
  %18 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 0
  store %struct.efx_ptp_data* %18, %struct.efx_ptp_data** %20, align 8
  %21 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %22, align 8
  %24 = icmp ne %struct.efx_ptp_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %214

28:                                               ; preds = %1
  %29 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %30 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %31 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %30, i32 0, i32 1
  %32 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %29, i32* %31, i32 4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %206

36:                                               ; preds = %28
  %37 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %38 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %39 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %38, i32 0, i32 15
  store %struct.efx_channel* %37, %struct.efx_channel** %39, align 8
  %40 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %41 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %40, i32 0, i32 14
  %42 = call i32 @skb_queue_head_init(i32* %41)
  %43 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %44 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %43, i32 0, i32 13
  %45 = call i32 @skb_queue_head_init(i32* %44)
  %46 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %48 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %50 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %201

56:                                               ; preds = %36
  %57 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %58 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %57, i32 0, i32 12
  %59 = load i32, i32* @efx_ptp_worker, align 4
  %60 = call i32 @INIT_WORK(i32* %58, i32 %59)
  %61 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %62 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %65 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %66 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %65, i32 0, i32 11
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %69 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %70 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %69, i32 0, i32 11
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %73 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %72, i32 0, i32 10
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %76 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %75, i32 0, i32 7
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %79 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %78, i32 0, i32 9
  %80 = call i32 @spin_lock_init(i32* %79)
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %96, %56
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @MAX_RECEIVE_EVENTS, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %87 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %86, i32 0, i32 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %94 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %93, i32 0, i32 7
  %95 = call i32 @list_add(i32* %92, i32* %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %81

99:                                               ; preds = %81
  %100 = load i32, i32* @THIS_MODULE, align 4
  %101 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %102 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 11
  store i32 %100, i32* %103, align 8
  %104 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %105 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %109 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @snprintf(i32 %107, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @MAX_PPB, align 4
  %115 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %116 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 9
  store i32 %114, i32* %117, align 8
  %118 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %119 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 8
  store i64 0, i64* %120, align 8
  %121 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %122 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 7
  store i64 0, i64* %123, align 8
  %124 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %125 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 6
  store i64 0, i64* %126, align 8
  %127 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %128 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load i32, i32* @efx_phc_adjfreq, align 4
  %131 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %132 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 5
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @efx_phc_adjtime, align 4
  %135 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %136 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @efx_phc_gettime, align 4
  %139 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %140 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @efx_phc_settime, align 4
  %143 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %144 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @efx_phc_enable, align 4
  %147 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %148 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %151 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %150, i32 0, i32 6
  %152 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %153 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = call i32 @ptp_clock_register(%struct.TYPE_12__* %151, i32* %155)
  %157 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %158 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %160 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @IS_ERR(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %99
  %165 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %166 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %6, align 4
  br label %194

169:                                              ; preds = %99
  %170 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %171 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %170, i32 0, i32 5
  %172 = load i32, i32* @efx_ptp_pps_worker, align 4
  %173 = call i32 @INIT_WORK(i32* %171, i32 %172)
  %174 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %175 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %176 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  %177 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %178 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %169
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  br label %187

184:                                              ; preds = %169
  %185 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %186 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  store i32 0, i32* %2, align 4
  br label %214

187:                                              ; preds = %181
  %188 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %189 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %188, i32 0, i32 0
  %190 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %189, align 8
  %191 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ptp_clock_unregister(i32 %192)
  br label %194

194:                                              ; preds = %187, %164
  %195 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %196 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %195, i32 0, i32 0
  %197 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %196, align 8
  %198 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @destroy_workqueue(i8* %199)
  br label %201

201:                                              ; preds = %194, %53
  %202 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %203 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %204 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %203, i32 0, i32 1
  %205 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %202, i32* %204)
  br label %206

206:                                              ; preds = %201, %35
  %207 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %208 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %207, i32 0, i32 0
  %209 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %208, align 8
  %210 = call i32 @kfree(%struct.efx_ptp_data* %209)
  %211 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %212 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %211, i32 0, i32 0
  store %struct.efx_ptp_data* null, %struct.efx_ptp_data** %212, align 8
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %206, %184, %25
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.efx_ptp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @ptp_clock_register(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @kfree(%struct.efx_ptp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
