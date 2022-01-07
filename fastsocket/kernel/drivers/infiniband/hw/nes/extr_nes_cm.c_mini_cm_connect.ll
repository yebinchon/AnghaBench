; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_2__, %struct.nes_cm_node* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.nes_cm_core = type { i32 }
%struct.nes_vnic = type { i32 }
%struct.nes_cm_info = type { i64, i64, i32, i32, i32 }
%struct.nes_cm_listener = type { i32 }

@NES_CM_DEFAULT_RCV_WND_SCALE = common dso_local global i8* null, align 8
@NES_CM_LISTENER_ACTIVE_STATE = common dso_local global i32 0, align 4
@NES_CM_EVENT_ABORTED = common dso_local global i32 0, align 4
@cm_loopbacks = common dso_local global i32 0, align 4
@NES_CM_STATE_TSA = common dso_local global i32 0, align 4
@NES_CM_STATE_MPAREQ_RCVD = common dso_local global i32 0, align 4
@NES_CM_EVENT_MPA_REQ = common dso_local global i32 0, align 4
@NES_CM_STATE_SYN_SENT = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Api - connect() FAILED: dest addr=0x%08X, port=0x%04x, cm_node=%p, cm_id = %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Api - connect(): dest addr=0x%08X,port=0x%04x, cm_node=%p, cm_id = %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nes_cm_node* (%struct.nes_cm_core*, %struct.nes_vnic*, i8*, i8*, %struct.nes_cm_info*)* @mini_cm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nes_cm_node* @mini_cm_connect(%struct.nes_cm_core* %0, %struct.nes_vnic* %1, i8* %2, i8* %3, %struct.nes_cm_info* %4) #0 {
  %6 = alloca %struct.nes_cm_node*, align 8
  %7 = alloca %struct.nes_cm_core*, align 8
  %8 = alloca %struct.nes_vnic*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nes_cm_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nes_cm_node*, align 8
  %14 = alloca %struct.nes_cm_listener*, align 8
  %15 = alloca %struct.nes_cm_node*, align 8
  %16 = alloca %struct.nes_cm_info, align 8
  %17 = alloca i32*, align 8
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %7, align 8
  store %struct.nes_vnic* %1, %struct.nes_vnic** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.nes_cm_info* %4, %struct.nes_cm_info** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.nes_cm_core*, %struct.nes_cm_core** %7, align 8
  %19 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %20 = load %struct.nes_cm_info*, %struct.nes_cm_info** %11, align 8
  %21 = call %struct.nes_cm_node* @make_cm_node(%struct.nes_cm_core* %18, %struct.nes_vnic* %19, %struct.nes_cm_info* %20, %struct.nes_cm_listener* null)
  store %struct.nes_cm_node* %21, %struct.nes_cm_node** %13, align 8
  %22 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %23 = icmp ne %struct.nes_cm_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store %struct.nes_cm_node* null, %struct.nes_cm_node** %6, align 8
  br label %229

25:                                               ; preds = %5
  %26 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %27 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** @NES_CM_DEFAULT_RCV_WND_SCALE, align 8
  %30 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %31 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.nes_cm_info*, %struct.nes_cm_info** %11, align 8
  %34 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nes_cm_info*, %struct.nes_cm_info** %11, align 8
  %37 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %173

40:                                               ; preds = %25
  %41 = load %struct.nes_cm_core*, %struct.nes_cm_core** %7, align 8
  %42 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %43 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %47 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NES_CM_LISTENER_ACTIVE_STATE, align 4
  %50 = call %struct.nes_cm_listener* @find_listener(%struct.nes_cm_core* %41, i32 %45, i32 %48, i32 %49)
  store %struct.nes_cm_listener* %50, %struct.nes_cm_listener** %14, align 8
  %51 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %14, align 8
  %52 = icmp eq %struct.nes_cm_listener* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %55 = load i32, i32* @NES_CM_EVENT_ABORTED, align 4
  %56 = call i32 @create_event(%struct.nes_cm_node* %54, i32 %55)
  br label %171

57:                                               ; preds = %40
  %58 = load %struct.nes_cm_info*, %struct.nes_cm_info** %11, align 8
  %59 = bitcast %struct.nes_cm_info* %16 to i8*
  %60 = bitcast %struct.nes_cm_info* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false)
  %61 = load %struct.nes_cm_info*, %struct.nes_cm_info** %11, align 8
  %62 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %16, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load %struct.nes_cm_info*, %struct.nes_cm_info** %11, align 8
  %66 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %16, i32 0, i32 4
  store i32 %67, i32* %68, align 8
  %69 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %14, align 8
  %70 = getelementptr inbounds %struct.nes_cm_listener, %struct.nes_cm_listener* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.nes_cm_info, %struct.nes_cm_info* %16, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.nes_cm_core*, %struct.nes_cm_core** %7, align 8
  %74 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %75 = load %struct.nes_cm_listener*, %struct.nes_cm_listener** %14, align 8
  %76 = call %struct.nes_cm_node* @make_cm_node(%struct.nes_cm_core* %73, %struct.nes_vnic* %74, %struct.nes_cm_info* %16, %struct.nes_cm_listener* %75)
  store %struct.nes_cm_node* %76, %struct.nes_cm_node** %15, align 8
  %77 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %78 = icmp ne %struct.nes_cm_node* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %57
  %80 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %81 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %84 = call i32 @rem_ref_cm_node(i32 %82, %struct.nes_cm_node* %83)
  store %struct.nes_cm_node* null, %struct.nes_cm_node** %6, align 8
  br label %229

85:                                               ; preds = %57
  %86 = call i32 @atomic_inc(i32* @cm_loopbacks)
  %87 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %88 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %89 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %88, i32 0, i32 8
  store %struct.nes_cm_node* %87, %struct.nes_cm_node** %89, align 8
  %90 = load i8*, i8** @NES_CM_DEFAULT_RCV_WND_SCALE, align 8
  %91 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %92 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %95 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %96 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %95, i32 0, i32 8
  store %struct.nes_cm_node* %94, %struct.nes_cm_node** %96, align 8
  %97 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %98 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @memcpy(i32* %99, i8* %100, i8* %101)
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %105 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @NES_CM_STATE_TSA, align 4
  %107 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %108 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %110 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %114 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 7
  store i32 %112, i32* %115, align 8
  %116 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %117 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %121 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 7
  store i32 %119, i32* %122, align 8
  %123 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %124 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %128 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 5
  store i32 %126, i32* %129, align 8
  %130 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %131 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %135 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  store i32 %133, i32* %136, align 8
  %137 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %138 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %142 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 4
  %144 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %145 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %149 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  store i32 %147, i32* %150, align 4
  %151 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %152 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %156 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  store i8* %154, i8** %157, align 8
  %158 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %159 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %163 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  store i8* %161, i8** %164, align 8
  %165 = load i32, i32* @NES_CM_STATE_MPAREQ_RCVD, align 4
  %166 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %167 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load %struct.nes_cm_node*, %struct.nes_cm_node** %15, align 8
  %169 = load i32, i32* @NES_CM_EVENT_MPA_REQ, align 4
  %170 = call i32 @create_event(%struct.nes_cm_node* %168, i32 %169)
  br label %171

171:                                              ; preds = %85, %53
  %172 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  store %struct.nes_cm_node* %172, %struct.nes_cm_node** %6, align 8
  br label %229

173:                                              ; preds = %25
  %174 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %175 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %17, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %181 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 @memcpy(i32* %182, i8* %183, i8* %184)
  %186 = load i32, i32* @NES_CM_STATE_SYN_SENT, align 4
  %187 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %188 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  %189 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %190 = call i32 @send_syn(%struct.nes_cm_node* %189, i32 0, i32* null)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %173
  %194 = load i32, i32* @NES_DBG_CM, align 4
  %195 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %196 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %199 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %202 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %203 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @nes_debug(i32 %194, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %197, i32 %200, %struct.nes_cm_node* %201, i32 %204)
  %206 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %207 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %210 = call i32 @rem_ref_cm_node(i32 %208, %struct.nes_cm_node* %209)
  store %struct.nes_cm_node* null, %struct.nes_cm_node** %13, align 8
  br label %211

211:                                              ; preds = %193, %173
  %212 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %213 = icmp ne %struct.nes_cm_node* %212, null
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  %215 = load i32, i32* @NES_DBG_CM, align 4
  %216 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %217 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %220 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %223 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  %224 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @nes_debug(i32 %215, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %218, i32 %221, %struct.nes_cm_node* %222, i32 %225)
  br label %227

227:                                              ; preds = %214, %211
  %228 = load %struct.nes_cm_node*, %struct.nes_cm_node** %13, align 8
  store %struct.nes_cm_node* %228, %struct.nes_cm_node** %6, align 8
  br label %229

229:                                              ; preds = %227, %171, %79, %24
  %230 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  ret %struct.nes_cm_node* %230
}

declare dso_local %struct.nes_cm_node* @make_cm_node(%struct.nes_cm_core*, %struct.nes_vnic*, %struct.nes_cm_info*, %struct.nes_cm_listener*) #1

declare dso_local %struct.nes_cm_listener* @find_listener(%struct.nes_cm_core*, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @create_event(%struct.nes_cm_node*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rem_ref_cm_node(i32, %struct.nes_cm_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i8*) #1

declare dso_local i32 @send_syn(%struct.nes_cm_node*, i32, i32*) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, i32, %struct.nes_cm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
