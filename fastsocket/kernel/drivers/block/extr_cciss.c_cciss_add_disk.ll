; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_add_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__**, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.gendisk = type { i32, %struct.TYPE_16__*, i32*, %struct.TYPE_14__*, i32*, i32, i32 }

@do_cciss_request = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cciss/c%dd%d\00", align 1
@NWD_SHIFT = common dso_local global i32 0, align 4
@cciss_fops = common dso_local global i32 0, align 4
@cciss_softirq_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.gendisk*, i32)* @cciss_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cciss_add_disk(%struct.TYPE_15__* %0, %struct.gendisk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.gendisk* %1, %struct.gendisk** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @do_cciss_request, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 6
  %11 = call %struct.TYPE_16__* @blk_init_queue(i32 %8, i32* %10)
  %12 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 1
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %13, align 8
  %14 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %15 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %132

19:                                               ; preds = %3
  %20 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %21 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sprintf(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %32 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NWD_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %37 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 4
  store i32* @cciss_fops, i32** %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @cciss_create_ld_sysfs_entry(%struct.TYPE_15__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %19
  br label %125

45:                                               ; preds = %19
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %48, i64 %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %54 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %53, i32 0, i32 3
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %57, i64 %59
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %64 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %66 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @blk_queue_bounce_limit(%struct.TYPE_16__* %67, i32 %72)
  %74 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %75 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @blk_queue_max_segments(%struct.TYPE_16__* %76, i32 %79)
  %81 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_16__* %83, i32 %86)
  %88 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %89 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load i32, i32* @cciss_softirq_done, align 4
  %92 = call i32 @blk_queue_softirq_done(%struct.TYPE_16__* %90, i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %95 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %97, align 8
  %98 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %99 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %98, i32 0, i32 1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %103, i64 %105
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @blk_queue_logical_block_size(%struct.TYPE_16__* %100, i32 %109)
  %111 = call i32 (...) @wmb()
  %112 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %113 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %117, i64 %119
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store %struct.TYPE_16__* %114, %struct.TYPE_16__** %122, align 8
  %123 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %124 = call i32 @add_disk(%struct.gendisk* %123)
  store i32 0, i32* %4, align 4
  br label %133

125:                                              ; preds = %44
  %126 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %127 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = call i32 @blk_cleanup_queue(%struct.TYPE_16__* %128)
  %130 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %131 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %130, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %131, align 8
  br label %132

132:                                              ; preds = %125, %18
  store i32 -1, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %45
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_16__* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @cciss_create_ld_sysfs_entry(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @blk_queue_softirq_done(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
