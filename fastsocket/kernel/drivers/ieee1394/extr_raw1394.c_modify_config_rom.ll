; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_modify_config_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_modify_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { %struct.csr1212_keyval**, %struct.TYPE_15__* }
%struct.csr1212_keyval = type { %struct.TYPE_11__, %struct.csr1212_keyval* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { i32, %struct.csr1212_dentry* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.pending_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.csr1212_csr_rom_cache = type { i64, %struct.TYPE_14__*, %struct.csr1212_keyval*, %struct.csr1212_keyval*, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RAW1394_MAX_USER_CSR_DIRS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_KV_ID_VENDOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*)* @modify_config_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_config_rom(%struct.file_info* %0, %struct.pending_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.pending_request*, align 8
  %6 = alloca %struct.csr1212_keyval*, align 8
  %7 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %8 = alloca %struct.csr1212_dentry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store %struct.pending_request* %1, %struct.pending_request** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %12 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %70

16:                                               ; preds = %2
  %17 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %18 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %394

25:                                               ; preds = %16
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @RAW1394_MAX_USER_CSR_DIRS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.file_info*, %struct.file_info** %4, align 8
  %32 = getelementptr inbounds %struct.file_info, %struct.file_info* %31, i32 0, i32 0
  %33 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %33, i64 %34
  %36 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %35, align 8
  %37 = icmp ne %struct.csr1212_keyval* %36, null
  br label %38

38:                                               ; preds = %30, %26
  %39 = phi i1 [ false, %26 ], [ %37, %30 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %26

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @RAW1394_MAX_USER_CSR_DIRS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %394

51:                                               ; preds = %44
  %52 = load i32, i32* @CSR1212_KV_ID_VENDOR, align 4
  %53 = call %struct.csr1212_keyval* @csr1212_new_directory(i32 %52)
  %54 = load %struct.file_info*, %struct.file_info** %4, align 8
  %55 = getelementptr inbounds %struct.file_info, %struct.file_info* %54, i32 0, i32 0
  %56 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %56, i64 %57
  store %struct.csr1212_keyval* %53, %struct.csr1212_keyval** %58, align 8
  %59 = load %struct.file_info*, %struct.file_info** %4, align 8
  %60 = getelementptr inbounds %struct.file_info, %struct.file_info* %59, i32 0, i32 0
  %61 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %61, i64 %62
  %64 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %63, align 8
  %65 = icmp ne %struct.csr1212_keyval* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %394

69:                                               ; preds = %51
  br label %142

70:                                               ; preds = %2
  %71 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %72 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load %struct.file_info*, %struct.file_info** %4, align 8
  %76 = getelementptr inbounds %struct.file_info, %struct.file_info* %75, i32 0, i32 0
  %77 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %77, i64 %78
  %80 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %79, align 8
  %81 = icmp ne %struct.csr1212_keyval* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %394

85:                                               ; preds = %70
  %86 = load %struct.file_info*, %struct.file_info** %4, align 8
  %87 = getelementptr inbounds %struct.file_info, %struct.file_info* %86, i32 0, i32 0
  %88 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %88, i64 %89
  %91 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %90, align 8
  %92 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %94, align 8
  store %struct.csr1212_dentry* %95, %struct.csr1212_dentry** %8, align 8
  br label %96

96:                                               ; preds = %112, %85
  %97 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %98 = icmp ne %struct.csr1212_dentry* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load %struct.file_info*, %struct.file_info** %4, align 8
  %101 = getelementptr inbounds %struct.file_info, %struct.file_info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %109 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @csr1212_detach_keyval_from_directory(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %99
  %113 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %114 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %113, i32 0, i32 1
  %115 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %114, align 8
  store %struct.csr1212_dentry* %115, %struct.csr1212_dentry** %8, align 8
  br label %96

116:                                              ; preds = %96
  %117 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %118 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load %struct.file_info*, %struct.file_info** %4, align 8
  %124 = getelementptr inbounds %struct.file_info, %struct.file_info* %123, i32 0, i32 0
  %125 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %125, i64 %126
  %128 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %127, align 8
  %129 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %128)
  %130 = load %struct.file_info*, %struct.file_info** %4, align 8
  %131 = getelementptr inbounds %struct.file_info, %struct.file_info* %130, i32 0, i32 0
  %132 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %132, i64 %133
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %134, align 8
  %135 = load %struct.file_info*, %struct.file_info** %4, align 8
  %136 = getelementptr inbounds %struct.file_info, %struct.file_info* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = call i32 @hpsb_update_config_rom_image(%struct.TYPE_15__* %137)
  %139 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %140 = call i32 @free_pending_request(%struct.pending_request* %139)
  store i32 0, i32* %3, align 4
  br label %394

141:                                              ; preds = %116
  br label %142

142:                                              ; preds = %141, %69
  %143 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %144 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i32 0, i64 %146)
  store %struct.csr1212_csr_rom_cache* %147, %struct.csr1212_csr_rom_cache** %7, align 8
  %148 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %149 = icmp ne %struct.csr1212_csr_rom_cache* %148, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %142
  %151 = load %struct.file_info*, %struct.file_info** %4, align 8
  %152 = getelementptr inbounds %struct.file_info, %struct.file_info* %151, i32 0, i32 0
  %153 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %153, i64 %154
  %156 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %155, align 8
  %157 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %156)
  %158 = load %struct.file_info*, %struct.file_info** %4, align 8
  %159 = getelementptr inbounds %struct.file_info, %struct.file_info* %158, i32 0, i32 0
  %160 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %160, i64 %161
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %162, align 8
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %394

165:                                              ; preds = %142
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call %struct.TYPE_14__* @kmalloc(i32 16, i32 %166)
  %168 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %169 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %168, i32 0, i32 1
  store %struct.TYPE_14__* %167, %struct.TYPE_14__** %169, align 8
  %170 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %171 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %170, i32 0, i32 1
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = icmp ne %struct.TYPE_14__* %172, null
  br i1 %173, label %191, label %174

174:                                              ; preds = %165
  %175 = load %struct.file_info*, %struct.file_info** %4, align 8
  %176 = getelementptr inbounds %struct.file_info, %struct.file_info* %175, i32 0, i32 0
  %177 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %176, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %177, i64 %178
  %180 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %179, align 8
  %181 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %180)
  %182 = load %struct.file_info*, %struct.file_info** %4, align 8
  %183 = getelementptr inbounds %struct.file_info, %struct.file_info* %182, i32 0, i32 0
  %184 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %184, i64 %185
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %186, align 8
  %187 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %188 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %187)
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %394

191:                                              ; preds = %165
  %192 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %193 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %196 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %195, i32 0, i32 6
  store %struct.TYPE_14__* %194, %struct.TYPE_14__** %196, align 8
  %197 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %198 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %201 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @int2ptr(i32 %203)
  %205 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %206 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @copy_from_user(i32 %199, i32 %204, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %191
  %212 = load %struct.file_info*, %struct.file_info** %4, align 8
  %213 = getelementptr inbounds %struct.file_info, %struct.file_info* %212, i32 0, i32 0
  %214 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %213, align 8
  %215 = load i64, i64* %9, align 8
  %216 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %214, i64 %215
  %217 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %216, align 8
  %218 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %217)
  %219 = load %struct.file_info*, %struct.file_info** %4, align 8
  %220 = getelementptr inbounds %struct.file_info, %struct.file_info* %219, i32 0, i32 0
  %221 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %220, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %221, i64 %222
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %223, align 8
  %224 = load i32, i32* @EFAULT, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %10, align 4
  br label %337

226:                                              ; preds = %191
  %227 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %228 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %232 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %234 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %233, i32 0, i32 1
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  store i64 0, i64* %236, align 8
  %237 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %238 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %239, 1
  %241 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %242 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %241, i32 0, i32 1
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  store i64 %240, i64* %244, align 8
  %245 = load %struct.file_info*, %struct.file_info** %4, align 8
  %246 = getelementptr inbounds %struct.file_info, %struct.file_info* %245, i32 0, i32 0
  %247 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %247, i64 %248
  %250 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %249, align 8
  %251 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %252 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %251, i32 0, i32 3
  store %struct.csr1212_keyval* %250, %struct.csr1212_keyval** %252, align 8
  %253 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %254 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %253, i32 0, i32 2
  store %struct.csr1212_keyval* %250, %struct.csr1212_keyval** %254, align 8
  %255 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %255, i32* %10, align 4
  %256 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %257 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %256, i32 0, i32 2
  %258 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %257, align 8
  store %struct.csr1212_keyval* %258, %struct.csr1212_keyval** %6, align 8
  br label %259

259:                                              ; preds = %272, %226
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* @CSR1212_SUCCESS, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %265 = icmp ne %struct.csr1212_keyval* %264, null
  br label %266

266:                                              ; preds = %263, %259
  %267 = phi i1 [ false, %259 ], [ %265, %263 ]
  br i1 %267, label %268, label %276

268:                                              ; preds = %266
  %269 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %270 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %271 = call i32 @csr1212_parse_keyval(%struct.csr1212_keyval* %269, %struct.csr1212_csr_rom_cache* %270)
  store i32 %271, i32* %10, align 4
  br label %272

272:                                              ; preds = %268
  %273 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %274 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %273, i32 0, i32 1
  %275 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %274, align 8
  store %struct.csr1212_keyval* %275, %struct.csr1212_keyval** %6, align 8
  br label %259

276:                                              ; preds = %266
  %277 = load %struct.file_info*, %struct.file_info** %4, align 8
  %278 = getelementptr inbounds %struct.file_info, %struct.file_info* %277, i32 0, i32 0
  %279 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %278, align 8
  %280 = load i64, i64* %9, align 8
  %281 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %279, i64 %280
  %282 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %281, align 8
  %283 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %285, align 8
  store %struct.csr1212_dentry* %286, %struct.csr1212_dentry** %8, align 8
  br label %287

287:                                              ; preds = %309, %276
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* @CSR1212_SUCCESS, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %293 = icmp ne %struct.csr1212_dentry* %292, null
  br label %294

294:                                              ; preds = %291, %287
  %295 = phi i1 [ false, %287 ], [ %293, %291 ]
  br i1 %295, label %296, label %313

296:                                              ; preds = %294
  %297 = load %struct.file_info*, %struct.file_info** %4, align 8
  %298 = getelementptr inbounds %struct.file_info, %struct.file_info* %297, i32 0, i32 1
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %306 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @csr1212_attach_keyval_to_directory(i32 %304, i32 %307)
  store i32 %308, i32* %10, align 4
  br label %309

309:                                              ; preds = %296
  %310 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %311 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %310, i32 0, i32 1
  %312 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %311, align 8
  store %struct.csr1212_dentry* %312, %struct.csr1212_dentry** %8, align 8
  br label %287

313:                                              ; preds = %294
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* @CSR1212_SUCCESS, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %336

317:                                              ; preds = %313
  %318 = load %struct.file_info*, %struct.file_info** %4, align 8
  %319 = getelementptr inbounds %struct.file_info, %struct.file_info* %318, i32 0, i32 1
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %319, align 8
  %321 = call i32 @hpsb_update_config_rom_image(%struct.TYPE_15__* %320)
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %335

324:                                              ; preds = %317
  %325 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %326 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @int2ptr(i32 %328)
  %330 = call i64 @copy_to_user(i32 %329, i64* %9, i32 8)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %324
  %333 = load i32, i32* @ENOMEM, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %332, %324, %317
  br label %336

336:                                              ; preds = %335, %313
  br label %337

337:                                              ; preds = %336, %211
  %338 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %339 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %338, i32 0, i32 1
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %339, align 8
  %341 = call i32 @kfree(%struct.TYPE_14__* %340)
  %342 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %7, align 8
  %343 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %342)
  %344 = load i32, i32* %10, align 4
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %337
  %347 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %348 = call i32 @free_pending_request(%struct.pending_request* %347)
  store i32 0, i32* %3, align 4
  br label %394

349:                                              ; preds = %337
  %350 = load %struct.file_info*, %struct.file_info** %4, align 8
  %351 = getelementptr inbounds %struct.file_info, %struct.file_info* %350, i32 0, i32 0
  %352 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %351, align 8
  %353 = load i64, i64* %9, align 8
  %354 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %352, i64 %353
  %355 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %354, align 8
  %356 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %358, align 8
  store %struct.csr1212_dentry* %359, %struct.csr1212_dentry** %8, align 8
  br label %360

360:                                              ; preds = %376, %349
  %361 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %362 = icmp ne %struct.csr1212_dentry* %361, null
  br i1 %362, label %363, label %380

363:                                              ; preds = %360
  %364 = load %struct.file_info*, %struct.file_info** %4, align 8
  %365 = getelementptr inbounds %struct.file_info, %struct.file_info* %364, i32 0, i32 1
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %373 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @csr1212_detach_keyval_from_directory(i32 %371, i32 %374)
  br label %376

376:                                              ; preds = %363
  %377 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %378 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %377, i32 0, i32 1
  %379 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %378, align 8
  store %struct.csr1212_dentry* %379, %struct.csr1212_dentry** %8, align 8
  br label %360

380:                                              ; preds = %360
  %381 = load %struct.file_info*, %struct.file_info** %4, align 8
  %382 = getelementptr inbounds %struct.file_info, %struct.file_info* %381, i32 0, i32 0
  %383 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %382, align 8
  %384 = load i64, i64* %9, align 8
  %385 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %383, i64 %384
  %386 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %385, align 8
  %387 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %386)
  %388 = load %struct.file_info*, %struct.file_info** %4, align 8
  %389 = getelementptr inbounds %struct.file_info, %struct.file_info* %388, i32 0, i32 0
  %390 = load %struct.csr1212_keyval**, %struct.csr1212_keyval*** %389, align 8
  %391 = load i64, i64* %9, align 8
  %392 = getelementptr inbounds %struct.csr1212_keyval*, %struct.csr1212_keyval** %390, i64 %391
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %392, align 8
  %393 = load i32, i32* %10, align 4
  store i32 %393, i32* %3, align 4
  br label %394

394:                                              ; preds = %380, %346, %174, %150, %122, %82, %66, %48, %22
  %395 = load i32, i32* %3, align 4
  ret i32 %395
}

declare dso_local %struct.csr1212_keyval* @csr1212_new_directory(i32) #1

declare dso_local i32 @csr1212_detach_keyval_from_directory(i32, i32) #1

declare dso_local i32 @csr1212_release_keyval(%struct.csr1212_keyval*) #1

declare dso_local i32 @hpsb_update_config_rom_image(%struct.TYPE_15__*) #1

declare dso_local i32 @free_pending_request(%struct.pending_request*) #1

declare dso_local %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i32, i64) #1

declare dso_local %struct.TYPE_14__* @kmalloc(i32, i32) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache*) #1

declare dso_local i64 @copy_from_user(i32, i32, i64) #1

declare dso_local i32 @int2ptr(i32) #1

declare dso_local i32 @csr1212_parse_keyval(%struct.csr1212_keyval*, %struct.csr1212_csr_rom_cache*) #1

declare dso_local i32 @csr1212_attach_keyval_to_directory(i32, i32) #1

declare dso_local i64 @copy_to_user(i32, i64*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
