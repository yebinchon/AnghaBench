; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_ubi_remove_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_ubi_remove_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i32, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, %struct.ubi_volume**, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"remove device %d, volume %d\00", align 1
@UBI_EXCLUSIVE = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"reserve more %d PEBs\00", align 1
@UBI_VOLUME_REMOVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"check failed while removing volume %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot remove volume %d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_remove_volume(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %12, i32 0, i32 1
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  store %struct.ubi_volume* %14, %struct.ubi_volume** %6, align 8
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 4
  %17 = load %struct.ubi_device*, %struct.ubi_device** %16, align 8
  store %struct.ubi_device* %17, %struct.ubi_device** %7, align 8
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dbg_gen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %30 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UBI_EXCLUSIVE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ubi_assert(i32 %34)
  %36 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %37 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 6
  %39 = load %struct.ubi_volume**, %struct.ubi_volume*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %39, i64 %41
  %43 = load %struct.ubi_volume*, %struct.ubi_volume** %42, align 8
  %44 = icmp eq %struct.ubi_volume* %36, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ubi_assert(i32 %45)
  %47 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %48 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EROFS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %209

54:                                               ; preds = %2
  %55 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %56 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %55, i32 0, i32 5
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %59 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %204

65:                                               ; preds = %54
  %66 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %67 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %66, i32 0, i32 6
  %68 = load %struct.ubi_volume**, %struct.ubi_volume*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %68, i64 %70
  store %struct.ubi_volume* null, %struct.ubi_volume** %71, align 8
  %72 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 5
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %65
  %78 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %78, i32 %79, i32* null)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %190

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %65
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %101, %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %89 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %94 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %93, %struct.ubi_volume* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %190

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %106 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %105, i32 0, i32 3
  %107 = call i32 @cdev_del(i32* %106)
  %108 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %109 = call i32 @volume_sysfs_close(%struct.ubi_volume* %108)
  %110 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 5
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %115 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %120 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %124 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %127 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %167

132:                                              ; preds = %104
  %133 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %134 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %8, align 4
  br label %144

140:                                              ; preds = %132
  %141 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %142 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  br label %144

144:                                              ; preds = %140, %138
  %145 = phi i32 [ %139, %138 ], [ %143, %140 ]
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %148 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %153 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %158 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %144
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ubi_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %144
  br label %167

167:                                              ; preds = %166, %104
  %168 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %169 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %173 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %172, i32 0, i32 5
  %174 = call i32 @spin_unlock(i32* %173)
  %175 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %176 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %177 = load i32, i32* @UBI_VOLUME_REMOVED, align 4
  %178 = call i32 @ubi_volume_notify(%struct.ubi_device* %175, %struct.ubi_volume* %176, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %167
  %182 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %183 = call i64 @paranoid_check_volumes(%struct.ubi_device* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @dbg_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %185, %181, %167
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %3, align 4
  br label %209

190:                                              ; preds = %99, %83
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @ubi_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %195 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %194, i32 0, i32 5
  %196 = call i32 @spin_lock(i32* %195)
  %197 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %198 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %199 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %198, i32 0, i32 6
  %200 = load %struct.ubi_volume**, %struct.ubi_volume*** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %200, i64 %202
  store %struct.ubi_volume* %197, %struct.ubi_volume** %203, align 8
  br label %204

204:                                              ; preds = %190, %62
  %205 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %206 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %205, i32 0, i32 5
  %207 = call i32 @spin_unlock(i32* %206)
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %188, %51
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i32, i32*) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @volume_sysfs_close(%struct.ubi_volume*) #1

declare dso_local i32 @ubi_msg(i8*, i32) #1

declare dso_local i32 @ubi_volume_notify(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i64 @paranoid_check_volumes(%struct.ubi_device*) #1

declare dso_local i32 @dbg_err(i8*, i32) #1

declare dso_local i32 @ubi_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
