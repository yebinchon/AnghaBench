; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_merge_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_snapshot_merge_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, i32, i32 }
%union.map_info = type { i32* }
%struct.dm_exception = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @snapshot_merge_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_merge_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.dm_exception*, align 8
  %9 = alloca %struct.dm_snapshot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %13, align 8
  store %struct.dm_snapshot* %14, %struct.dm_snapshot** %9, align 8
  %15 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BIO_FLUSH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = load %union.map_info*, %union.map_info** %7, align 8
  %24 = bitcast %union.map_info* %23 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %29 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bio*, %struct.bio** %6, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %37 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %36, i32 0, i32 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %27
  %44 = load %union.map_info*, %union.map_info** %7, align 8
  %45 = bitcast %union.map_info* %44 to i32**
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %46, i32* %4, align 4
  br label %149

47:                                               ; preds = %3
  %48 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %49 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bio*, %struct.bio** %6, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @sector_to_chunk(i32 %50, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %56 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %55, i32 0, i32 2
  %57 = call i32 @down_write(i32* %56)
  %58 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %59 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %47
  br label %122

63:                                               ; preds = %47
  %64 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %65 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %64, i32 0, i32 5
  %66 = load i64, i64* %11, align 8
  %67 = call %struct.dm_exception* @dm_lookup_exception(i32* %65, i64 %66)
  store %struct.dm_exception* %67, %struct.dm_exception** %8, align 8
  %68 = load %struct.dm_exception*, %struct.dm_exception** %8, align 8
  %69 = icmp ne %struct.dm_exception* %68, null
  br i1 %69, label %70, label %121

70:                                               ; preds = %63
  %71 = load %struct.bio*, %struct.bio** %6, align 8
  %72 = call i64 @bio_rw(%struct.bio* %71)
  %73 = load i64, i64* @WRITE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %78 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %84 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %87 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = icmp slt i64 %82, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %81
  %92 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %93 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bio*, %struct.bio** %6, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %100 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %99, i32 0, i32 4
  %101 = load %struct.bio*, %struct.bio** %6, align 8
  %102 = call i32 @bio_list_add(i32* %100, %struct.bio* %101)
  %103 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %103, i32* %10, align 4
  br label %144

104:                                              ; preds = %81, %75, %70
  %105 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %106 = load %struct.dm_exception*, %struct.dm_exception** %8, align 8
  %107 = load %struct.bio*, %struct.bio** %6, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @remap_exception(%struct.dm_snapshot* %105, %struct.dm_exception* %106, %struct.bio* %107, i64 %108)
  %110 = load %struct.bio*, %struct.bio** %6, align 8
  %111 = call i64 @bio_rw(%struct.bio* %110)
  %112 = load i64, i64* @WRITE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i32* @track_chunk(%struct.dm_snapshot* %115, i64 %116)
  %118 = load %union.map_info*, %union.map_info** %7, align 8
  %119 = bitcast %union.map_info* %118 to i32**
  store i32* %117, i32** %119, align 8
  br label %120

120:                                              ; preds = %114, %104
  br label %144

121:                                              ; preds = %63
  br label %122

122:                                              ; preds = %121, %62
  %123 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %124 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %123, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.bio*, %struct.bio** %6, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.bio*, %struct.bio** %6, align 8
  %131 = call i64 @bio_rw(%struct.bio* %130)
  %132 = load i64, i64* @WRITE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %136 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %135, i32 0, i32 2
  %137 = call i32 @up_write(i32* %136)
  %138 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %139 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %138, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load %struct.bio*, %struct.bio** %6, align 8
  %142 = call i32 @do_origin(%struct.TYPE_4__* %140, %struct.bio* %141)
  store i32 %142, i32* %4, align 4
  br label %149

143:                                              ; preds = %122
  br label %144

144:                                              ; preds = %143, %120, %91
  %145 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  %146 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %145, i32 0, i32 2
  %147 = call i32 @up_write(i32* %146)
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %134, %43
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @sector_to_chunk(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.dm_exception* @dm_lookup_exception(i32*, i64) #1

declare dso_local i64 @bio_rw(%struct.bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @remap_exception(%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i64) #1

declare dso_local i32* @track_chunk(%struct.dm_snapshot*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @do_origin(%struct.TYPE_4__*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
