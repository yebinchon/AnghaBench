; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_mlx4_ib_init_alias_guid_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_mlx4_ib_init_alias_guid_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*, i32, i32, %union.ib_gid*)* }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_REC_IN_PORT = common dso_local global i32 0, align 4
@mlx4_ib_sm_guid_assign = common dso_local global i64 0, align 8
@MLX4_GUID_DRIVER_ASSIGN = common dso_local global i32 0, align 4
@MLX4_GUID_NONE_ASSIGN = common dso_local global i32 0, align 4
@NUM_ALIAS_GUID_IN_REC = common dso_local global i32 0, align 4
@MLX4_GUID_FOR_DELETE_VAL = common dso_local global i32 0, align 4
@GUID_REC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"alias_guid%d\00", align 1
@alias_guid_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"init_alias_guid_service: Failed. (ret:%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_init_alias_guid_service(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca [15 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mlx4_is_master(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %306

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 4, i32 %17)
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32* %18, i32** %22, align 8
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %306

32:                                               ; preds = %16
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ib_sa_register_client(i32* %37)
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = call i32 @spin_lock_init(i32* %42)
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %64, %32
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64 (%struct.TYPE_9__*, i32, i32, %union.ib_gid*)*, i64 (%struct.TYPE_9__*, i32, i32, %union.ib_gid*)** %53, align 8
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %6, align 4
  %58 = call i64 %54(%struct.TYPE_9__* %56, i32 %57, i32 0, %union.ib_gid* %9)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %286

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %44

67:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %251, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %254

74:                                               ; preds = %68
  %75 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = call i32 @memset(%struct.TYPE_10__* %82, i32 0, i32 4)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %154, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %157

88:                                               ; preds = %84
  %89 = load i64, i64* @mlx4_ib_sm_guid_assign, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32, i32* @MLX4_GUID_DRIVER_ASSIGN, align 4
  %93 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %92, i32* %106, align 8
  br label %154

107:                                              ; preds = %88
  %108 = load i32, i32* @MLX4_GUID_NONE_ASSIGN, align 4
  %109 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i32 %108, i32* %122, align 8
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %150, %107
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @NUM_ALIAS_GUID_IN_REC, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %123
  %128 = load i32, i32* @MLX4_GUID_FOR_DELETE_VAL, align 4
  %129 = call i32 @cpu_to_be64(i32 %128)
  %130 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @GUID_REC_SIZE, align 4
  %146 = load i32, i32* %8, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  store i32 %129, i32* %149, align 4
  br label %150

150:                                              ; preds = %127
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %123

153:                                              ; preds = %123
  br label %154

154:                                              ; preds = %153, %91
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %84

157:                                              ; preds = %84
  %158 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %159 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 4
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %178, %157
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @invalidate_guid_record(%struct.mlx4_ib_dev* %173, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %168

181:                                              ; preds = %168
  %182 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %183 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  store %struct.TYPE_7__* %184, %struct.TYPE_7__** %193, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  store i32 %194, i32* %203, align 8
  %204 = load i64, i64* @mlx4_ib_sm_guid_assign, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %181
  %207 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @set_all_slaves_guids(%struct.mlx4_ib_dev* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %181
  %211 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @snprintf(i8* %211, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %212)
  %214 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %215 = call i32* @create_singlethread_workqueue(i8* %214)
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store i32* %215, i32** %224, align 8
  %225 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %210
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %5, align 4
  br label %255

239:                                              ; preds = %210
  %240 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %241 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load i32, i32* @alias_guid_work, align 4
  %250 = call i32 @INIT_DELAYED_WORK(i32* %248, i32 %249)
  br label %251

251:                                              ; preds = %239
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %68

254:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %306

255:                                              ; preds = %236
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %6, align 4
  br label %258

258:                                              ; preds = %282, %255
  %259 = load i32, i32* %6, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %285

261:                                              ; preds = %258
  %262 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %263 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @destroy_workqueue(i32* %271)
  %273 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %274 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  store i32* null, i32** %281, align 8
  br label %282

282:                                              ; preds = %261
  %283 = load i32, i32* %6, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %6, align 4
  br label %258

285:                                              ; preds = %258
  br label %286

286:                                              ; preds = %285, %60
  %287 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %288 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @ib_sa_unregister_client(i32* %291)
  %293 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %294 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 @kfree(i32* %297)
  %299 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %300 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  store i32* null, i32** %302, align 8
  %303 = load i32, i32* %5, align 4
  %304 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %5, align 4
  store i32 %305, i32* %2, align 4
  br label %306

306:                                              ; preds = %286, %254, %29, %15
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_sa_register_client(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @invalidate_guid_record(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @set_all_slaves_guids(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @ib_sa_unregister_client(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
