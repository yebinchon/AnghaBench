; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_get_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64**, i64, i64, i64, i64, i64, i64, i64 }
%struct.cgroup_map_cb = type { i32 (%struct.cgroup_map_cb*, i8*, i64)* }

@MAX_KEY_LEN = common dso_local global i32 0, align 4
@BLKIO_STAT_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_READ = common dso_local global i64 0, align 8
@BLKIO_STAT_TOTAL = common dso_local global i32 0, align 4
@BLKIO_STAT_WRITE = common dso_local global i64 0, align 8
@BLKIO_STAT_AVG_QUEUE_SIZE = common dso_local global i32 0, align 4
@BLKIO_STAT_DEQUEUE = common dso_local global i32 0, align 4
@BLKIO_STAT_EMPTY_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_GROUP_WAIT_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_IDLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blkio_group*, %struct.cgroup_map_cb*, i32, i32)* @blkio_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @blkio_get_stat(%struct.blkio_group* %0, %struct.cgroup_map_cb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.blkio_group*, align 8
  %7 = alloca %struct.cgroup_map_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blkio_group* %0, %struct.blkio_group** %6, align 8
  store %struct.cgroup_map_cb* %1, %struct.cgroup_map_cb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_KEY_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BLKIO_STAT_TIME, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32, i32* @MAX_KEY_LEN, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %26 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @blkio_fill_stat(i8* %18, i32 %24, i64 %28, %struct.cgroup_map_cb* %29, i32 %30)
  store i64 %31, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %99

32:                                               ; preds = %4
  %33 = load i64, i64* @BLKIO_STAT_READ, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %61, %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @BLKIO_STAT_TOTAL, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MAX_KEY_LEN, align 4
  %43 = call i32 @blkio_get_key_name(i32 %40, i32 %41, i8* %18, i32 %42, i32 0)
  %44 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %45 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %44, i32 0, i32 0
  %46 = load i32 (%struct.cgroup_map_cb*, i8*, i64)*, i32 (%struct.cgroup_map_cb*, i8*, i64)** %45, align 8
  %47 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %48 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %49 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64**, i64*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 %46(%struct.cgroup_map_cb* %47, i8* %18, i64 %59)
  br label %61

61:                                               ; preds = %39
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %66 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64**, i64*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @BLKIO_STAT_READ, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %77 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @BLKIO_STAT_WRITE, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %75, %86
  store i64 %87, i64* %10, align 8
  %88 = load i32, i32* @BLKIO_STAT_TOTAL, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @MAX_KEY_LEN, align 4
  %91 = call i32 @blkio_get_key_name(i32 %88, i32 %89, i8* %18, i32 %90, i32 0)
  %92 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %93 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %92, i32 0, i32 0
  %94 = load i32 (%struct.cgroup_map_cb*, i8*, i64)*, i32 (%struct.cgroup_map_cb*, i8*, i64)** %93, align 8
  %95 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 %94(%struct.cgroup_map_cb* %95, i8* %18, i64 %96)
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %64, %22
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @blkio_fill_stat(i8*, i32, i64, %struct.cgroup_map_cb*, i32) #2

declare dso_local i32 @blkio_get_key_name(i32, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
