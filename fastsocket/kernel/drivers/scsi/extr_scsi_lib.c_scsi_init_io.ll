; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_init_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_8__*, %struct.scsi_data_buffer*, %struct.scsi_data_buffer }
%struct.TYPE_8__ = type { %struct.scsi_data_buffer*, %struct.TYPE_8__* }
%struct.scsi_data_buffer = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@scsi_sdb_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_init_io(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_data_buffer*, align 8
  %8 = alloca %struct.scsi_data_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @scsi_init_sgtable(%struct.TYPE_8__* %13, %struct.scsi_data_buffer* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %106

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i64 @blk_bidi_rq(%struct.TYPE_8__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load i32, i32* @scsi_sdb_cache, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.scsi_data_buffer* @kmem_cache_zalloc(i32 %28, i32 %29)
  store %struct.scsi_data_buffer* %30, %struct.scsi_data_buffer** %7, align 8
  %31 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %7, align 8
  %32 = icmp ne %struct.scsi_data_buffer* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %34, i32* %6, align 4
  br label %106

35:                                               ; preds = %27
  %36 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %7, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.scsi_data_buffer* %36, %struct.scsi_data_buffer** %42, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %7, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @scsi_init_sgtable(%struct.TYPE_8__* %47, %struct.scsi_data_buffer* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %106

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i64 @blk_integrity_rq(%struct.TYPE_8__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %55
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %63, align 8
  store %struct.scsi_data_buffer* %64, %struct.scsi_data_buffer** %8, align 8
  %65 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %8, align 8
  %66 = icmp eq %struct.scsi_data_buffer* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call i32 @blk_rq_count_integrity_sg(%struct.TYPE_8__* %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @scsi_alloc_sgtable(%struct.scsi_data_buffer* %73, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %79, i32* %6, align 4
  br label %106

80:                                               ; preds = %61
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @blk_rq_map_integrity_sg(%struct.TYPE_8__* %83, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @unlikely(i32 %92)
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %8, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 1
  store %struct.scsi_data_buffer* %95, %struct.scsi_data_buffer** %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 1
  %101 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %100, align 8
  %102 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %80, %55
  %105 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %116

106:                                              ; preds = %78, %53, %33, %20
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = call i32 @scsi_release_buffers(%struct.scsi_cmnd* %107)
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store %struct.scsi_data_buffer* null, %struct.scsi_data_buffer** %112, align 8
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = call i32 @scsi_put_command(%struct.scsi_cmnd* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %106, %104
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @scsi_init_sgtable(%struct.TYPE_8__*, %struct.scsi_data_buffer*, i32) #1

declare dso_local i64 @blk_bidi_rq(%struct.TYPE_8__*) #1

declare dso_local %struct.scsi_data_buffer* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @blk_integrity_rq(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_rq_count_integrity_sg(%struct.TYPE_8__*) #1

declare dso_local i64 @scsi_alloc_sgtable(%struct.scsi_data_buffer*, i32, i32) #1

declare dso_local i32 @blk_rq_map_integrity_sg(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @scsi_release_buffers(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_put_command(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
