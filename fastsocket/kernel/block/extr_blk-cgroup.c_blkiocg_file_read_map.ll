; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_file_read_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_file_read_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cgroup_map_cb = type { i32 }
%struct.blkio_cgroup = type { i32 }

@BLKIO_STAT_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_CPU_SECTORS = common dso_local global i32 0, align 4
@BLKIO_STAT_CPU_SERVICE_BYTES = common dso_local global i32 0, align 4
@BLKIO_STAT_CPU_SERVICED = common dso_local global i32 0, align 4
@BLKIO_STAT_SERVICE_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_WAIT_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_MERGED = common dso_local global i32 0, align 4
@BLKIO_STAT_QUEUED = common dso_local global i32 0, align 4
@BLKIO_STAT_AVG_QUEUE_SIZE = common dso_local global i32 0, align 4
@BLKIO_STAT_DEQUEUE = common dso_local global i32 0, align 4
@BLKIO_STAT_EMPTY_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_GROUP_WAIT_TIME = common dso_local global i32 0, align 4
@BLKIO_STAT_IDLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, %struct.cgroup_map_cb*)* @blkiocg_file_read_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkiocg_file_read_map(%struct.cgroup* %0, %struct.cftype* %1, %struct.cgroup_map_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca %struct.cgroup_map_cb*, align 8
  %8 = alloca %struct.blkio_cgroup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store %struct.cgroup_map_cb* %2, %struct.cgroup_map_cb** %7, align 8
  %11 = load %struct.cftype*, %struct.cftype** %6, align 8
  %12 = getelementptr inbounds %struct.cftype, %struct.cftype* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BLKIOFILE_POLICY(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.cftype*, %struct.cftype** %6, align 8
  %16 = getelementptr inbounds %struct.cftype, %struct.cftype* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BLKIOFILE_ATTR(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %20 = call %struct.blkio_cgroup* @cgroup_to_blkio_cgroup(%struct.cgroup* %19)
  store %struct.blkio_cgroup* %20, %struct.blkio_cgroup** %8, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %92 [
    i32 144, label %22
    i32 143, label %75
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %72 [
    i32 130, label %24
    i32 131, label %30
    i32 135, label %36
    i32 133, label %42
    i32 134, label %48
    i32 132, label %54
    i32 137, label %60
    i32 136, label %66
  ]

24:                                               ; preds = %22
  %25 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %26 = load %struct.cftype*, %struct.cftype** %6, align 8
  %27 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %28 = load i32, i32* @BLKIO_STAT_TIME, align 4
  %29 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %25, %struct.cftype* %26, %struct.cgroup_map_cb* %27, i32 %28, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  br label %95

30:                                               ; preds = %22
  %31 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %32 = load %struct.cftype*, %struct.cftype** %6, align 8
  %33 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %34 = load i32, i32* @BLKIO_STAT_CPU_SECTORS, align 4
  %35 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %31, %struct.cftype* %32, %struct.cgroup_map_cb* %33, i32 %34, i32 0, i32 1)
  store i32 %35, i32* %4, align 4
  br label %95

36:                                               ; preds = %22
  %37 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %38 = load %struct.cftype*, %struct.cftype** %6, align 8
  %39 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %40 = load i32, i32* @BLKIO_STAT_CPU_SERVICE_BYTES, align 4
  %41 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %37, %struct.cftype* %38, %struct.cgroup_map_cb* %39, i32 %40, i32 1, i32 1)
  store i32 %41, i32* %4, align 4
  br label %95

42:                                               ; preds = %22
  %43 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %44 = load %struct.cftype*, %struct.cftype** %6, align 8
  %45 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %46 = load i32, i32* @BLKIO_STAT_CPU_SERVICED, align 4
  %47 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %43, %struct.cftype* %44, %struct.cgroup_map_cb* %45, i32 %46, i32 1, i32 1)
  store i32 %47, i32* %4, align 4
  br label %95

48:                                               ; preds = %22
  %49 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %50 = load %struct.cftype*, %struct.cftype** %6, align 8
  %51 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %52 = load i32, i32* @BLKIO_STAT_SERVICE_TIME, align 4
  %53 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %49, %struct.cftype* %50, %struct.cgroup_map_cb* %51, i32 %52, i32 1, i32 0)
  store i32 %53, i32* %4, align 4
  br label %95

54:                                               ; preds = %22
  %55 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %56 = load %struct.cftype*, %struct.cftype** %6, align 8
  %57 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %58 = load i32, i32* @BLKIO_STAT_WAIT_TIME, align 4
  %59 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %55, %struct.cftype* %56, %struct.cgroup_map_cb* %57, i32 %58, i32 1, i32 0)
  store i32 %59, i32* %4, align 4
  br label %95

60:                                               ; preds = %22
  %61 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %62 = load %struct.cftype*, %struct.cftype** %6, align 8
  %63 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %64 = load i32, i32* @BLKIO_STAT_MERGED, align 4
  %65 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %61, %struct.cftype* %62, %struct.cgroup_map_cb* %63, i32 %64, i32 1, i32 0)
  store i32 %65, i32* %4, align 4
  br label %95

66:                                               ; preds = %22
  %67 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %68 = load %struct.cftype*, %struct.cftype** %6, align 8
  %69 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %70 = load i32, i32* @BLKIO_STAT_QUEUED, align 4
  %71 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %67, %struct.cftype* %68, %struct.cgroup_map_cb* %69, i32 %70, i32 1, i32 0)
  store i32 %71, i32* %4, align 4
  br label %95

72:                                               ; preds = %22
  %73 = call i32 (...) @BUG()
  br label %74

74:                                               ; preds = %72
  br label %94

75:                                               ; preds = %3
  %76 = load i32, i32* %10, align 4
  switch i32 %76, label %89 [
    i32 129, label %77
    i32 128, label %83
  ]

77:                                               ; preds = %75
  %78 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %79 = load %struct.cftype*, %struct.cftype** %6, align 8
  %80 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %81 = load i32, i32* @BLKIO_STAT_CPU_SERVICE_BYTES, align 4
  %82 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %78, %struct.cftype* %79, %struct.cgroup_map_cb* %80, i32 %81, i32 1, i32 1)
  store i32 %82, i32* %4, align 4
  br label %95

83:                                               ; preds = %75
  %84 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %8, align 8
  %85 = load %struct.cftype*, %struct.cftype** %6, align 8
  %86 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %7, align 8
  %87 = load i32, i32* @BLKIO_STAT_CPU_SERVICED, align 4
  %88 = call i32 @blkio_read_blkg_stats(%struct.blkio_cgroup* %84, %struct.cftype* %85, %struct.cgroup_map_cb* %86, i32 %87, i32 1, i32 1)
  store i32 %88, i32* %4, align 4
  br label %95

89:                                               ; preds = %75
  %90 = call i32 (...) @BUG()
  br label %91

91:                                               ; preds = %89
  br label %94

92:                                               ; preds = %3
  %93 = call i32 (...) @BUG()
  br label %94

94:                                               ; preds = %92, %91, %74
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %83, %77, %66, %60, %54, %48, %42, %36, %30, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @BLKIOFILE_POLICY(i32) #1

declare dso_local i32 @BLKIOFILE_ATTR(i32) #1

declare dso_local %struct.blkio_cgroup* @cgroup_to_blkio_cgroup(%struct.cgroup*) #1

declare dso_local i32 @blkio_read_blkg_stats(%struct.blkio_cgroup*, %struct.cftype*, %struct.cgroup_map_cb*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
