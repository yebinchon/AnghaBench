; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32, i32, i32, i32 }
%union.map_info = type { i32 }
%struct.dm_exception = type { i32 }
%struct.dm_snap_pending_exception = type { i32, i32, %struct.dm_exception }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @snapshot_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.dm_exception*, align 8
  %9 = alloca %struct.dm_snapshot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_snap_pending_exception*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.dm_snapshot*, %struct.dm_snapshot** %14, align 8
  store %struct.dm_snapshot* %15, %struct.dm_snapshot** %9, align 8
  %16 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %16, i32* %10, align 4
  store %struct.dm_snap_pending_exception* null, %struct.dm_snap_pending_exception** %12, align 8
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BIO_FLUSH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %25 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %24, i32 0, i32 5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bio*, %struct.bio** %6, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %31, i32* %4, align 4
  br label %201

32:                                               ; preds = %3
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %34 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sector_to_chunk(%struct.TYPE_6__* %35, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %41 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %201

47:                                               ; preds = %32
  %48 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %49 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %48, i32 0, i32 0
  %50 = call i32 @down_write(i32* %49)
  %51 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %52 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %195

58:                                               ; preds = %47
  %59 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %60 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %59, i32 0, i32 3
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.dm_exception* @dm_lookup_exception(i32* %60, i32 %61)
  store %struct.dm_exception* %62, %struct.dm_exception** %8, align 8
  %63 = load %struct.dm_exception*, %struct.dm_exception** %8, align 8
  %64 = icmp ne %struct.dm_exception* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %67 = load %struct.dm_exception*, %struct.dm_exception** %8, align 8
  %68 = load %struct.bio*, %struct.bio** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @remap_exception(%struct.dm_snapshot* %66, %struct.dm_exception* %67, %struct.bio* %68, i32 %69)
  br label %195

71:                                               ; preds = %58
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = call i64 @bio_rw(%struct.bio* %72)
  %74 = load i64, i64* @WRITE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %181

76:                                               ; preds = %71
  %77 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.dm_snap_pending_exception* @__lookup_pending_exception(%struct.dm_snapshot* %77, i32 %78)
  store %struct.dm_snap_pending_exception* %79, %struct.dm_snap_pending_exception** %12, align 8
  %80 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %81 = icmp ne %struct.dm_snap_pending_exception* %80, null
  br i1 %81, label %130, label %82

82:                                               ; preds = %76
  %83 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %84 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %83, i32 0, i32 0
  %85 = call i32 @up_write(i32* %84)
  %86 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %87 = call %struct.dm_snap_pending_exception* @alloc_pending_exception(%struct.dm_snapshot* %86)
  store %struct.dm_snap_pending_exception* %87, %struct.dm_snap_pending_exception** %12, align 8
  %88 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %89 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %88, i32 0, i32 0
  %90 = call i32 @down_write(i32* %89)
  %91 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %92 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %82
  %96 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %97 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %195

100:                                              ; preds = %82
  %101 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %102 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %101, i32 0, i32 3
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.dm_exception* @dm_lookup_exception(i32* %102, i32 %103)
  store %struct.dm_exception* %104, %struct.dm_exception** %8, align 8
  %105 = load %struct.dm_exception*, %struct.dm_exception** %8, align 8
  %106 = icmp ne %struct.dm_exception* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %109 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %108)
  %110 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %111 = load %struct.dm_exception*, %struct.dm_exception** %8, align 8
  %112 = load %struct.bio*, %struct.bio** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @remap_exception(%struct.dm_snapshot* %110, %struct.dm_exception* %111, %struct.bio* %112, i32 %113)
  br label %195

115:                                              ; preds = %100
  %116 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %117 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call %struct.dm_snap_pending_exception* @__find_pending_exception(%struct.dm_snapshot* %116, %struct.dm_snap_pending_exception* %117, i32 %118)
  store %struct.dm_snap_pending_exception* %119, %struct.dm_snap_pending_exception** %12, align 8
  %120 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %121 = icmp ne %struct.dm_snap_pending_exception* %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  %126 = call i32 @__invalidate_snapshot(%struct.dm_snapshot* %123, i32 %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %195

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %76
  %131 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %132 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %133 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %132, i32 0, i32 2
  %134 = load %struct.bio*, %struct.bio** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @remap_exception(%struct.dm_snapshot* %131, %struct.dm_exception* %133, %struct.bio* %134, i32 %135)
  %137 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %137, i32* %10, align 4
  %138 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %139 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %163, label %142

142:                                              ; preds = %130
  %143 = load %struct.bio*, %struct.bio** %6, align 8
  %144 = getelementptr inbounds %struct.bio, %struct.bio* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %147 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %146, i32 0, i32 2
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SECTOR_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = icmp eq i32 %145, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %142
  %155 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %156 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %155, i32 0, i32 0
  store i32 1, i32* %156, align 4
  %157 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %158 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %157, i32 0, i32 0
  %159 = call i32 @up_write(i32* %158)
  %160 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %161 = load %struct.bio*, %struct.bio** %6, align 8
  %162 = call i32 @start_full_bio(%struct.dm_snap_pending_exception* %160, %struct.bio* %161)
  br label %199

163:                                              ; preds = %142, %130
  %164 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %165 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %164, i32 0, i32 1
  %166 = load %struct.bio*, %struct.bio** %6, align 8
  %167 = call i32 @bio_list_add(i32* %165, %struct.bio* %166)
  %168 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %169 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %163
  %173 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %174 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %173, i32 0, i32 0
  store i32 1, i32* %174, align 4
  %175 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %176 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %175, i32 0, i32 0
  %177 = call i32 @up_write(i32* %176)
  %178 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %12, align 8
  %179 = call i32 @start_copy(%struct.dm_snap_pending_exception* %178)
  br label %199

180:                                              ; preds = %163
  br label %194

181:                                              ; preds = %71
  %182 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %183 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %182, i32 0, i32 1
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.bio*, %struct.bio** %6, align 8
  %188 = getelementptr inbounds %struct.bio, %struct.bio* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @track_chunk(%struct.dm_snapshot* %189, i32 %190)
  %192 = load %union.map_info*, %union.map_info** %7, align 8
  %193 = bitcast %union.map_info* %192 to i32*
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %181, %180
  br label %195

195:                                              ; preds = %194, %122, %107, %95, %65, %55
  %196 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %197 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %196, i32 0, i32 0
  %198 = call i32 @up_write(i32* %197)
  br label %199

199:                                              ; preds = %195, %172, %154
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %44, %23
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @sector_to_chunk(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.dm_exception* @dm_lookup_exception(i32*, i32) #1

declare dso_local i32 @remap_exception(%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i32) #1

declare dso_local i64 @bio_rw(%struct.bio*) #1

declare dso_local %struct.dm_snap_pending_exception* @__lookup_pending_exception(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.dm_snap_pending_exception* @alloc_pending_exception(%struct.dm_snapshot*) #1

declare dso_local i32 @free_pending_exception(%struct.dm_snap_pending_exception*) #1

declare dso_local %struct.dm_snap_pending_exception* @__find_pending_exception(%struct.dm_snapshot*, %struct.dm_snap_pending_exception*, i32) #1

declare dso_local i32 @__invalidate_snapshot(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @start_full_bio(%struct.dm_snap_pending_exception*, %struct.bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @start_copy(%struct.dm_snap_pending_exception*) #1

declare dso_local i32 @track_chunk(%struct.dm_snapshot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
