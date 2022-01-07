; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gendisk = type { i64, i32, %struct.gendisk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @disk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.gendisk* @dev_to_disk(%struct.device* %4)
  store %struct.gendisk* %5, %struct.gendisk** %3, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 2
  %8 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %9 = call i32 @kfree(%struct.gendisk* %8)
  %10 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %11 = call i32 @disk_replace_part_tbl(%struct.gendisk* %10, i32* null)
  %12 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 1
  %14 = call i32 @free_part_stats(i32* %13)
  %15 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %16 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %21 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @blk_put_queue(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %26 = call i32 @kfree(%struct.gendisk* %25)
  ret void
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i32 @kfree(%struct.gendisk*) #1

declare dso_local i32 @disk_replace_part_tbl(%struct.gendisk*, i32*) #1

declare dso_local i32 @free_part_stats(i32*) #1

declare dso_local i32 @blk_put_queue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
