; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_ib = type { i64, i8*, %struct.TYPE_2__*, i32, %struct.radeon_fence**, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"couldn't schedule ib\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"scheduling IB failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to emit fence for new IB (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ib_schedule(%struct.radeon_device* %0, %struct.radeon_ib* %1, %struct.radeon_ib* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ib*, align 8
  %7 = alloca %struct.radeon_ib*, align 8
  %8 = alloca %struct.radeon_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %6, align 8
  store %struct.radeon_ib* %2, %struct.radeon_ib** %7, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %14, align 8
  %16 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i64 %18
  store %struct.radeon_ring* %19, %struct.radeon_ring** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %189

36:                                               ; preds = %24
  %37 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %39 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %40 = mul nsw i32 %39, 8
  %41 = add nsw i32 64, %40
  %42 = call i32 @radeon_ring_lock(%struct.radeon_device* %37, %struct.radeon_ring* %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %189

52:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %89, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %58, i32 0, i32 4
  %60 = load %struct.radeon_fence**, %struct.radeon_fence*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %60, i64 %62
  %64 = load %struct.radeon_fence*, %struct.radeon_fence** %63, align 8
  store %struct.radeon_fence* %64, %struct.radeon_fence** %12, align 8
  %65 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %66 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %67 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @radeon_fence_need_sync(%struct.radeon_fence* %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  %72 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %73 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %77 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @radeon_semaphore_sync_rings(%struct.radeon_device* %72, i32 %75, i32 %78, i64 %81)
  %83 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %84 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %85 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @radeon_fence_note_sync(%struct.radeon_fence* %83, i64 %86)
  br label %88

88:                                               ; preds = %71, %57
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %53

92:                                               ; preds = %53
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %97 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %97, i32 0, i32 3
  %99 = call i32 @radeon_semaphore_free(%struct.radeon_device* %96, i32* %98, i32* null)
  br label %100

100:                                              ; preds = %95, %92
  %101 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %102 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = icmp ne %struct.TYPE_2__* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %108 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %111 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = call i32 @radeon_ring_vm_flush(%struct.radeon_device* %106, i64 %109, %struct.TYPE_2__* %112)
  br label %114

114:                                              ; preds = %105, %100
  %115 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %116 = icmp ne %struct.radeon_ib* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %119 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %120 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %123 = call i32 @radeon_ring_ib_execute(%struct.radeon_device* %118, i64 %121, %struct.radeon_ib* %122)
  %124 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %125 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %126 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %125, i32 0, i32 3
  %127 = call i32 @radeon_semaphore_free(%struct.radeon_device* %124, i32* %126, i32* null)
  br label %128

128:                                              ; preds = %117, %114
  %129 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %130 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %131 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %134 = call i32 @radeon_ring_ib_execute(%struct.radeon_device* %129, i64 %132, %struct.radeon_ib* %133)
  %135 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %136 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %137 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %136, i32 0, i32 1
  %138 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %139 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @radeon_fence_emit(%struct.radeon_device* %135, i8** %137, i64 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %128
  %145 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %151 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %152 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %150, %struct.radeon_ring* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %4, align 4
  br label %189

154:                                              ; preds = %128
  %155 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %156 = icmp ne %struct.radeon_ib* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %159 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @radeon_fence_ref(i8* %160)
  %162 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %163 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %157, %154
  %165 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %166 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = icmp ne %struct.TYPE_2__* %167, null
  br i1 %168, label %169, label %185

169:                                              ; preds = %164
  %170 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %171 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %170, i32 0, i32 2
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %185, label %176

176:                                              ; preds = %169
  %177 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %178 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @radeon_fence_ref(i8* %179)
  %181 = load %struct.radeon_ib*, %struct.radeon_ib** %6, align 8
  %182 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  store i8* %180, i8** %184, align 8
  br label %185

185:                                              ; preds = %176, %169, %164
  %186 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %187 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %188 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %186, %struct.radeon_ring* %187)
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %185, %144, %45, %29
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i64 @radeon_fence_need_sync(%struct.radeon_fence*, i64) #1

declare dso_local i32 @radeon_semaphore_sync_rings(%struct.radeon_device*, i32, i32, i64) #1

declare dso_local i32 @radeon_fence_note_sync(%struct.radeon_fence*, i64) #1

declare dso_local i32 @radeon_semaphore_free(%struct.radeon_device*, i32*, i32*) #1

declare dso_local i32 @radeon_ring_vm_flush(%struct.radeon_device*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @radeon_ring_ib_execute(%struct.radeon_device*, i64, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, i8**, i64) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i8* @radeon_fence_ref(i8*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
