; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_erase_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_erase_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_work = type { i32, %struct.ubi_wl_entry* }
%struct.ubi_wl_entry = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"cancel erasure of PEB %d EC %d\00", align 1
@ubi_wl_entry_slab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"erase PEB %d EC %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to erase PEB %d, error %d\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"bad physical eraseblock %d detected\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"reserve more %d PEBs\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"no reserved physical eraseblocks\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"mark PEB %d as bad\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%d PEBs left in the reserve\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"last PEB from the reserved pool was used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_work*, i32)* @erase_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_worker(%struct.ubi_device* %0, %struct.ubi_work* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_wl_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_work* %1, %struct.ubi_work** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %14 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %13, i32 0, i32 1
  %15 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %14, align 8
  store %struct.ubi_wl_entry* %15, %struct.ubi_wl_entry** %8, align 8
  %16 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %17 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %24 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dbg_wl(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %28 = call i32 @kfree(%struct.ubi_work* %27)
  %29 = load i32, i32* @ubi_wl_entry_slab, align 4
  %30 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %31 = call i32 @kmem_cache_free(i32 %29, %struct.ubi_wl_entry* %30)
  store i32 0, i32* %4, align 4
  br label %226

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dbg_wl(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %39 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %40 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %41 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sync_erase(%struct.ubi_device* %38, %struct.ubi_wl_entry* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %32
  %47 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %48 = call i32 @kfree(%struct.ubi_work* %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 8
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %53 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %54 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %53, i32 0, i32 9
  %55 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %52, i32* %54)
  %56 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %57 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %56, i32 0, i32 8
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %60 = call i32 @serve_prot_queue(%struct.ubi_device* %59)
  %61 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %62 = call i32 @ensure_wear_leveling(%struct.ubi_device* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %226

64:                                               ; preds = %32
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %69 = call i32 @kfree(%struct.ubi_work* %68)
  %70 = load i32, i32* @ubi_wl_entry_slab, align 4
  %71 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %72 = call i32 @kmem_cache_free(i32 %70, %struct.ubi_wl_entry* %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @EINTR, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %92, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %87, %82, %77, %64
  %93 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %94 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %95 = call i32 @schedule_erase(%struct.ubi_device* %93, %struct.ubi_wl_entry* %94, i32 0)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %10, align 4
  br label %222

100:                                              ; preds = %92
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %226

102:                                              ; preds = %87
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %222

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %222

117:                                              ; preds = %109
  %118 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %119 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %118, i32 0, i32 6
  %120 = call i32 @spin_lock(i32* %119)
  %121 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %122 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %125 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %117
  %132 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %133 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %11, align 4
  br label %143

139:                                              ; preds = %131
  %140 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %141 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  br label %143

143:                                              ; preds = %139, %137
  %144 = phi i32 [ %138, %137 ], [ %142, %139 ]
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %147 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %152 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %157 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %143
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @ubi_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %162, %143
  br label %166

166:                                              ; preds = %165, %117
  %167 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %168 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %173 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %172, i32 0, i32 6
  %174 = call i32 @spin_unlock(i32* %173)
  %175 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %222

176:                                              ; preds = %166
  %177 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %178 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %177, i32 0, i32 6
  %179 = call i32 @spin_unlock(i32* %178)
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @ubi_msg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  %182 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @ubi_io_mark_bad(%struct.ubi_device* %182, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %222

188:                                              ; preds = %176
  %189 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %190 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %189, i32 0, i32 6
  %191 = call i32 @spin_lock(i32* %190)
  %192 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %193 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %197 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  %200 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %201 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  %204 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %205 = call i32 @ubi_calculate_reserved(%struct.ubi_device* %204)
  %206 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %207 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %188
  %211 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %212 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ubi_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %213)
  br label %217

215:                                              ; preds = %188
  %216 = call i32 @ubi_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %210
  %218 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %219 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %218, i32 0, i32 6
  %220 = call i32 @spin_unlock(i32* %219)
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %4, align 4
  br label %226

222:                                              ; preds = %187, %171, %114, %107, %98
  %223 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %224 = call i32 @ubi_ro_mode(%struct.ubi_device* %223)
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %222, %217, %100, %46, %21
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @dbg_wl(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubi_work*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ubi_wl_entry*) #1

declare dso_local i32 @sync_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @serve_prot_queue(%struct.ubi_device*) #1

declare dso_local i32 @ensure_wear_leveling(%struct.ubi_device*) #1

declare dso_local i32 @ubi_err(i8*, ...) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32) #1

declare dso_local i32 @ubi_msg(i8*, i32) #1

declare dso_local i32 @ubi_io_mark_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_calculate_reserved(%struct.ubi_device*) #1

declare dso_local i32 @ubi_warn(i8*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
