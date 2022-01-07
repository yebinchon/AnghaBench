; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vf_info*, %struct.qlcnic_vport*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.qlcnic_adapter*, %struct.qlcnic_back_channel }
%struct.qlcnic_vport = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qlcnic_back_channel = type { %struct.workqueue_struct*, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_sriov*, %struct.qlcnic_vport*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.qlcnic_adapter*, %struct.qlcnic_back_channel }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bc-trans\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot create bc-trans workqueue\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot create async workqueue\0A\00", align 1
@qlcnic_sriov_process_bc_cmd = common dso_local global i32 0, align 4
@MAX_BW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"MAC Address %pM is configured for VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_init(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_sriov*, align 8
  %7 = alloca %struct.qlcnic_back_channel*, align 8
  %8 = alloca %struct.workqueue_struct*, align 8
  %9 = alloca %struct.qlcnic_vport*, align 8
  %10 = alloca %struct.qlcnic_vf_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %14 = call i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 88, i32 %20)
  %22 = bitcast i8* %21 to %struct.qlcnic_sriov*
  store %struct.qlcnic_sriov* %22, %struct.qlcnic_sriov** %6, align 8
  %23 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %24 = icmp ne %struct.qlcnic_sriov* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %19
  %29 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %30 = bitcast %struct.qlcnic_sriov* %29 to %struct.qlcnic_vf_info*
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.qlcnic_vf_info* %30, %struct.qlcnic_vf_info** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %38, i32 0, i32 10
  store %struct.qlcnic_back_channel* %39, %struct.qlcnic_back_channel** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 88, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.qlcnic_sriov*
  %47 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %47, i32 0, i32 1
  store %struct.qlcnic_sriov* %46, %struct.qlcnic_sriov** %48, align 8
  %49 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %50 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %49, i32 0, i32 1
  %51 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %50, align 8
  %52 = icmp ne %struct.qlcnic_sriov* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %28
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %196

56:                                               ; preds = %28
  %57 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %57, %struct.workqueue_struct** %8, align 8
  %58 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %59 = icmp eq %struct.workqueue_struct* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %190

68:                                               ; preds = %56
  %69 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %70 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %71 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %70, i32 0, i32 0
  store %struct.workqueue_struct* %69, %struct.workqueue_struct** %71, align 8
  %72 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.workqueue_struct* %72, %struct.workqueue_struct** %8, align 8
  %73 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %74 = icmp eq %struct.workqueue_struct* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %185

83:                                               ; preds = %68
  %84 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %85 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %86 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %85, i32 0, i32 1
  store %struct.workqueue_struct* %84, %struct.workqueue_struct** %86, align 8
  %87 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %88 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %87, i32 0, i32 2
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %176, %83
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %179

94:                                               ; preds = %90
  %95 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %96 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %95, i32 0, i32 1
  %97 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %97, i64 %99
  %101 = bitcast %struct.qlcnic_sriov* %100 to %struct.qlcnic_vf_info*
  store %struct.qlcnic_vf_info* %101, %struct.qlcnic_vf_info** %10, align 8
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %103 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %104 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %103, i32 0, i32 9
  store %struct.qlcnic_adapter* %102, %struct.qlcnic_adapter** %104, align 8
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @qlcnic_sriov_virtid_fn(%struct.qlcnic_adapter* %105, i32 %106)
  %108 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %109 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %111 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %110, i32 0, i32 7
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %114 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %118 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %122 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @spin_lock_init(i32* %123)
  %125 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %126 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %130 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %129, i32 0, i32 4
  %131 = call i32 @init_completion(i32* %130)
  %132 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %133 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %132, i32 0, i32 3
  %134 = load i32, i32* @qlcnic_sriov_process_bc_cmd, align 4
  %135 = call i32 @INIT_WORK(i32* %133, i32 %134)
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %137 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %175

139:                                              ; preds = %94
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i8* @kzalloc(i32 12, i32 %140)
  %142 = bitcast i8* %141 to %struct.qlcnic_vport*
  store %struct.qlcnic_vport* %142, %struct.qlcnic_vport** %9, align 8
  %143 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %144 = icmp ne %struct.qlcnic_vport* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %11, align 4
  br label %180

148:                                              ; preds = %139
  %149 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %150 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %151 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %150, i32 0, i32 1
  %152 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %152, i64 %154
  %156 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %155, i32 0, i32 2
  store %struct.qlcnic_vport* %149, %struct.qlcnic_vport** %156, align 8
  %157 = load i32, i32* @MAX_BW, align 4
  %158 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %159 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %161 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %163 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @random_ether_addr(i32 %164)
  %166 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %167 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %171 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @dev_info(i32* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %148, %94
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %90

179:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %204

180:                                              ; preds = %145
  %181 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %182 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %181, i32 0, i32 1
  %183 = load %struct.workqueue_struct*, %struct.workqueue_struct** %182, align 8
  %184 = call i32 @destroy_workqueue(%struct.workqueue_struct* %183)
  br label %185

185:                                              ; preds = %180, %75
  %186 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %187 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %186, i32 0, i32 0
  %188 = load %struct.workqueue_struct*, %struct.workqueue_struct** %187, align 8
  %189 = call i32 @destroy_workqueue(%struct.workqueue_struct* %188)
  br label %190

190:                                              ; preds = %185, %60
  %191 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %192 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %191, i32 0, i32 1
  %193 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %192, align 8
  %194 = bitcast %struct.qlcnic_sriov* %193 to %struct.qlcnic_vf_info*
  %195 = call i32 @kfree(%struct.qlcnic_vf_info* %194)
  br label %196

196:                                              ; preds = %190, %53
  %197 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %198 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %200, align 8
  %202 = call i32 @kfree(%struct.qlcnic_vf_info* %201)
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %196, %179, %25, %16
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qlcnic_sriov_virtid_fn(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @random_ether_addr(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @kfree(%struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
