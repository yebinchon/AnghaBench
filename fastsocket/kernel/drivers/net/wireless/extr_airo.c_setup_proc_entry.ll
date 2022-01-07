; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_setup_proc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_setup_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.net_device = type { i32 }
%struct.airo_info = type { i8*, %struct.TYPE_6__* }
%struct.proc_dir_entry = type { i8*, i8* }

@S_IFDIR = common dso_local global i32 0, align 4
@airo_perm = common dso_local global i32 0, align 4
@airo_entry = common dso_local global %struct.TYPE_6__* null, align 8
@proc_uid = common dso_local global i8* null, align 8
@proc_gid = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"StatsDelta\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@proc_perm = common dso_local global i32 0, align 4
@proc_statsdelta_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Stats\00", align 1
@proc_stats_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@proc_status_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@proc_config_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@proc_SSID_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"APList\00", align 1
@proc_APList_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"BSSList\00", align 1
@proc_BSSList_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"WepKey\00", align 1
@proc_wepkey_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.airo_info*)* @setup_proc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_proc_entry(%struct.net_device* %0, %struct.airo_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.airo_info* %1, %struct.airo_info** %5, align 8
  %7 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %8 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcpy(i8* %9, i32 %12)
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = load i32, i32* @airo_perm, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @airo_entry, align 8
  %21 = call %struct.TYPE_6__* @create_proc_entry(i8* %16, i32 %19, %struct.TYPE_6__* %20)
  %22 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %25 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %231

29:                                               ; preds = %2
  %30 = load i8*, i8** @proc_uid, align 8
  %31 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %32 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** @proc_gid, align 8
  %36 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* @S_IFREG, align 4
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load i32, i32* @proc_perm, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %44, %struct.TYPE_6__* %47, i32* @proc_statsdelta_ops, %struct.net_device* %48)
  store %struct.proc_dir_entry* %49, %struct.proc_dir_entry** %6, align 8
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %51 = icmp ne %struct.proc_dir_entry* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %29
  br label %225

53:                                               ; preds = %29
  %54 = load i8*, i8** @proc_uid, align 8
  %55 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %56 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @proc_gid, align 8
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %59 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @S_IFREG, align 4
  %61 = load i32, i32* @S_IRUGO, align 4
  %62 = load i32, i32* @proc_perm, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %66 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64, %struct.TYPE_6__* %67, i32* @proc_stats_ops, %struct.net_device* %68)
  store %struct.proc_dir_entry* %69, %struct.proc_dir_entry** %6, align 8
  %70 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %71 = icmp ne %struct.proc_dir_entry* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %53
  br label %220

73:                                               ; preds = %53
  %74 = load i8*, i8** @proc_uid, align 8
  %75 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %76 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @proc_gid, align 8
  %78 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %79 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @S_IFREG, align 4
  %81 = load i32, i32* @S_IRUGO, align 4
  %82 = load i32, i32* @proc_perm, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %80, %83
  %85 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %86 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %84, %struct.TYPE_6__* %87, i32* @proc_status_ops, %struct.net_device* %88)
  store %struct.proc_dir_entry* %89, %struct.proc_dir_entry** %6, align 8
  %90 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %91 = icmp ne %struct.proc_dir_entry* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %73
  br label %215

93:                                               ; preds = %73
  %94 = load i8*, i8** @proc_uid, align 8
  %95 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %96 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @proc_gid, align 8
  %98 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %99 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @S_IFREG, align 4
  %101 = load i32, i32* @proc_perm, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %104 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %102, %struct.TYPE_6__* %105, i32* @proc_config_ops, %struct.net_device* %106)
  store %struct.proc_dir_entry* %107, %struct.proc_dir_entry** %6, align 8
  %108 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %109 = icmp ne %struct.proc_dir_entry* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %93
  br label %210

111:                                              ; preds = %93
  %112 = load i8*, i8** @proc_uid, align 8
  %113 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %114 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @proc_gid, align 8
  %116 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %117 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @S_IFREG, align 4
  %119 = load i32, i32* @proc_perm, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %122 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %120, %struct.TYPE_6__* %123, i32* @proc_SSID_ops, %struct.net_device* %124)
  store %struct.proc_dir_entry* %125, %struct.proc_dir_entry** %6, align 8
  %126 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %127 = icmp ne %struct.proc_dir_entry* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %111
  br label %205

129:                                              ; preds = %111
  %130 = load i8*, i8** @proc_uid, align 8
  %131 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %132 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @proc_gid, align 8
  %134 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %135 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @S_IFREG, align 4
  %137 = load i32, i32* @proc_perm, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %140 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %138, %struct.TYPE_6__* %141, i32* @proc_APList_ops, %struct.net_device* %142)
  store %struct.proc_dir_entry* %143, %struct.proc_dir_entry** %6, align 8
  %144 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %145 = icmp ne %struct.proc_dir_entry* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %129
  br label %200

147:                                              ; preds = %129
  %148 = load i8*, i8** @proc_uid, align 8
  %149 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %150 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** @proc_gid, align 8
  %152 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %153 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* @S_IFREG, align 4
  %155 = load i32, i32* @proc_perm, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %158 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %156, %struct.TYPE_6__* %159, i32* @proc_BSSList_ops, %struct.net_device* %160)
  store %struct.proc_dir_entry* %161, %struct.proc_dir_entry** %6, align 8
  %162 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %163 = icmp ne %struct.proc_dir_entry* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %147
  br label %195

165:                                              ; preds = %147
  %166 = load i8*, i8** @proc_uid, align 8
  %167 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %168 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** @proc_gid, align 8
  %170 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %171 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* @S_IFREG, align 4
  %173 = load i32, i32* @proc_perm, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %176 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %174, %struct.TYPE_6__* %177, i32* @proc_wepkey_ops, %struct.net_device* %178)
  store %struct.proc_dir_entry* %179, %struct.proc_dir_entry** %6, align 8
  %180 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %181 = icmp ne %struct.proc_dir_entry* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %165
  br label %190

183:                                              ; preds = %165
  %184 = load i8*, i8** @proc_uid, align 8
  %185 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %186 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @proc_gid, align 8
  %188 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %189 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  store i32 0, i32* %3, align 4
  br label %234

190:                                              ; preds = %182
  %191 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %192 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %191, i32 0, i32 1
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_6__* %193)
  br label %195

195:                                              ; preds = %190, %164
  %196 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %197 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_6__* %198)
  br label %200

200:                                              ; preds = %195, %146
  %201 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %202 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %203)
  br label %205

205:                                              ; preds = %200, %128
  %206 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %207 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %206, i32 0, i32 1
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %208)
  br label %210

210:                                              ; preds = %205, %110
  %211 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %212 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %211, i32 0, i32 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %213)
  br label %215

215:                                              ; preds = %210, %92
  %216 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %217 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %218)
  br label %220

220:                                              ; preds = %215, %72
  %221 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %222 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %221, i32 0, i32 1
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %223)
  br label %225

225:                                              ; preds = %220, %52
  %226 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %227 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** @airo_entry, align 8
  %230 = call i32 @remove_proc_entry(i8* %228, %struct.TYPE_6__* %229)
  br label %231

231:                                              ; preds = %225, %28
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %231, %183
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @create_proc_entry(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, %struct.TYPE_6__*, i32*, %struct.net_device*) #1

declare dso_local i32 @remove_proc_entry(i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
