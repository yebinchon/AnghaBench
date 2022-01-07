; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_pending_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_pending_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_pending_exception = type { i32, i32, %struct.bio*, i32, i32, %struct.dm_exception, %struct.dm_snapshot* }
%struct.bio = type { i32, i32 }
%struct.dm_exception = type { i32 }
%struct.dm_snapshot = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snap_pending_exception*, i32)* @pending_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pending_complete(%struct.dm_snap_pending_exception* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_snap_pending_exception*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_exception*, align 8
  %6 = alloca %struct.dm_snapshot*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_snap_pending_exception* %0, %struct.dm_snap_pending_exception** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %12 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %11, i32 0, i32 6
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  store %struct.dm_snapshot* %13, %struct.dm_snapshot** %6, align 8
  store %struct.bio* null, %struct.bio** %7, align 8
  store %struct.bio* null, %struct.bio** %8, align 8
  store %struct.bio* null, %struct.bio** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %18 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @__invalidate_snapshot(%struct.dm_snapshot* %20, i32 %22)
  store i32 1, i32* %10, align 4
  br label %63

24:                                               ; preds = %2
  %25 = call %struct.dm_exception* (...) @alloc_completed_exception()
  store %struct.dm_exception* %25, %struct.dm_exception** %5, align 8
  %26 = load %struct.dm_exception*, %struct.dm_exception** %5, align 8
  %27 = icmp ne %struct.dm_exception* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %30 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %29, i32 0, i32 0
  %31 = call i32 @down_write(i32* %30)
  %32 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @__invalidate_snapshot(%struct.dm_snapshot* %32, i32 %34)
  store i32 1, i32* %10, align 4
  br label %63

36:                                               ; preds = %24
  %37 = load %struct.dm_exception*, %struct.dm_exception** %5, align 8
  %38 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %39 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %38, i32 0, i32 5
  %40 = bitcast %struct.dm_exception* %37 to i8*
  %41 = bitcast %struct.dm_exception* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %41, i64 4, i1 false)
  %42 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %43 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %42, i32 0, i32 0
  %44 = call i32 @down_write(i32* %43)
  %45 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %46 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load %struct.dm_exception*, %struct.dm_exception** %5, align 8
  %51 = call i32 @free_completed_exception(%struct.dm_exception* %50)
  store i32 1, i32* %10, align 4
  br label %63

52:                                               ; preds = %36
  %53 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %54 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %55 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__check_for_conflicting_io(%struct.dm_snapshot* %53, i32 %57)
  %59 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %60 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %59, i32 0, i32 1
  %61 = load %struct.dm_exception*, %struct.dm_exception** %5, align 8
  %62 = call i32 @dm_insert_exception(i32* %60, %struct.dm_exception* %61)
  br label %63

63:                                               ; preds = %52, %49, %28, %16
  %64 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %65 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %64, i32 0, i32 5
  %66 = call i32 @dm_remove_exception(%struct.dm_exception* %65)
  %67 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %68 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %67, i32 0, i32 4
  %69 = call %struct.bio* @bio_list_get(i32* %68)
  store %struct.bio* %69, %struct.bio** %8, align 8
  %70 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %71 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %70, i32 0, i32 3
  %72 = call %struct.bio* @bio_list_get(i32* %71)
  store %struct.bio* %72, %struct.bio** %7, align 8
  %73 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %74 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %73, i32 0, i32 2
  %75 = load %struct.bio*, %struct.bio** %74, align 8
  store %struct.bio* %75, %struct.bio** %9, align 8
  %76 = load %struct.bio*, %struct.bio** %9, align 8
  %77 = icmp ne %struct.bio* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %63
  %79 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %80 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bio*, %struct.bio** %9, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %85 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.bio*, %struct.bio** %9, align 8
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %78, %63
  %90 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %3, align 8
  %91 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %90)
  %92 = call i32 (...) @increment_pending_exceptions_done_count()
  %93 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %94 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %93, i32 0, i32 0
  %95 = call i32 @up_write(i32* %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load %struct.bio*, %struct.bio** %9, align 8
  %100 = icmp ne %struct.bio* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.bio*, %struct.bio** %9, align 8
  %103 = call i32 @bio_io_error(%struct.bio* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.bio*, %struct.bio** %8, align 8
  %106 = call i32 @error_bios(%struct.bio* %105)
  br label %116

107:                                              ; preds = %89
  %108 = load %struct.bio*, %struct.bio** %9, align 8
  %109 = icmp ne %struct.bio* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.bio*, %struct.bio** %9, align 8
  %112 = call i32 @bio_endio(%struct.bio* %111, i32 0)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.bio*, %struct.bio** %8, align 8
  %115 = call i32 @flush_bios(%struct.bio* %114)
  br label %116

116:                                              ; preds = %113, %104
  %117 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %118 = load %struct.bio*, %struct.bio** %7, align 8
  %119 = call i32 @retry_origin_bios(%struct.dm_snapshot* %117, %struct.bio* %118)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__invalidate_snapshot(%struct.dm_snapshot*, i32) #1

declare dso_local %struct.dm_exception* @alloc_completed_exception(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free_completed_exception(%struct.dm_exception*) #1

declare dso_local i32 @__check_for_conflicting_io(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @dm_insert_exception(i32*, %struct.dm_exception*) #1

declare dso_local i32 @dm_remove_exception(%struct.dm_exception*) #1

declare dso_local %struct.bio* @bio_list_get(i32*) #1

declare dso_local i32 @free_pending_exception(%struct.dm_snap_pending_exception*) #1

declare dso_local i32 @increment_pending_exceptions_done_count(...) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @error_bios(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @flush_bios(%struct.bio*) #1

declare dso_local i32 @retry_origin_bios(%struct.dm_snapshot*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
