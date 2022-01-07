; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_merge_next_chunks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_merge_next_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i64*, i64*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dm_io_region = type { i8*, i32, i32 }

@RUNNING_MERGE = common dso_local global i32 0, align 4
@SHUTDOWN_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Snapshot is invalid: can't merge\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Read error in exception store: shutting down merge\00", align 1
@_pending_exceptions_done = common dso_local global i32 0, align 4
@merge_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*)* @snapshot_merge_next_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_merge_next_chunks(%struct.dm_snapshot* %0) #0 {
  %2 = alloca %struct.dm_snapshot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dm_io_region, align 8
  %8 = alloca %struct.dm_io_region, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %2, align 8
  %11 = load i32, i32* @RUNNING_MERGE, align 4
  %12 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %13 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %12, i32 0, i32 9
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @SHUTDOWN_MERGE, align 4
  %20 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %21 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %20, i32 0, i32 9
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %168

26:                                               ; preds = %1
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %28 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %168

33:                                               ; preds = %26
  %34 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %35 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %34, i32 0, i32 5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_9__*, i64*, i64*)*, i32 (%struct.TYPE_9__*, i64*, i64*)** %39, align 8
  %41 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %42 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %41, i32 0, i32 5
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 %40(%struct.TYPE_9__* %43, i64* %5, i64* %6)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = call i32 @DMERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %53 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %52, i32 0, i32 3
  %54 = call i32 @down_write(i32* %53)
  %55 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %56 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %58 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %57, i32 0, i32 3
  %59 = call i32 @up_write(i32* %58)
  br label %60

60:                                               ; preds = %50, %47
  br label %168

61:                                               ; preds = %33
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %68, %70
  store i64 %71, i64* %6, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %74 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %73, i32 0, i32 5
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %72, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %80 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %79, i32 0, i32 7
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %86 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %85, i32 0, i32 5
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i8* @chunk_to_sector(%struct.TYPE_9__* %87, i64 %88)
  %90 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @get_dev_size(i32 %93)
  %95 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = ptrtoint i8* %94 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @min(i32 %91, i8* %100)
  %102 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 1
  store i32 %101, i32* %102, align 8
  %103 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %104 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %103, i32 0, i32 6
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %7, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %110 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %109, i32 0, i32 5
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i8* @chunk_to_sector(%struct.TYPE_9__* %111, i64 %112)
  %114 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %7, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %7, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  %118 = call i64 (...) @read_pending_exceptions_done_count()
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %126, %61
  %120 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %121 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @origin_write_extent(%struct.dm_snapshot* %120, i8* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load i32, i32* @_pending_exceptions_done, align 4
  %128 = call i64 (...) @read_pending_exceptions_done_count()
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @wait_event(i32 %127, i32 %131)
  %133 = call i64 (...) @read_pending_exceptions_done_count()
  store i64 %133, i64* %10, align 8
  br label %119

134:                                              ; preds = %119
  %135 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %136 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %135, i32 0, i32 3
  %137 = call i32 @down_write(i32* %136)
  %138 = load i64, i64* %5, align 8
  %139 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %140 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %143 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %145 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %144, i32 0, i32 3
  %146 = call i32 @up_write(i32* %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %158, %134
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = call i32 @__check_for_conflicting_io(%struct.dm_snapshot* %152, i64 %156)
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %147

161:                                              ; preds = %147
  %162 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %163 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @merge_callback, align 4
  %166 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %167 = call i32 @dm_kcopyd_copy(i32 %164, %struct.dm_io_region* %7, i32 1, %struct.dm_io_region* %8, i32 0, i32 %165, %struct.dm_snapshot* %166)
  br label %171

168:                                              ; preds = %60, %31, %25
  %169 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %170 = call i32 @merge_shutdown(%struct.dm_snapshot* %169)
  br label %171

171:                                              ; preds = %168, %161
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i8* @chunk_to_sector(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @min(i32, i8*) #1

declare dso_local i8* @get_dev_size(i32) #1

declare dso_local i64 @read_pending_exceptions_done_count(...) #1

declare dso_local i64 @origin_write_extent(%struct.dm_snapshot*, i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @__check_for_conflicting_io(%struct.dm_snapshot*, i64) #1

declare dso_local i32 @dm_kcopyd_copy(i32, %struct.dm_io_region*, i32, %struct.dm_io_region*, i32, i32, %struct.dm_snapshot*) #1

declare dso_local i32 @merge_shutdown(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
