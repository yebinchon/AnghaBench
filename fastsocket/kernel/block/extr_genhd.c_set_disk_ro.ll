; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_set_disk_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_set_disk_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.disk_part_iter = type { i32 }
%struct.hd_struct = type { i32 }

@DISK_PITER_INCL_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_disk_ro(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_part_iter, align 4
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @set_disk_ro_uevent(%struct.gendisk* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %23 = load i32, i32* @DISK_PITER_INCL_EMPTY, align 4
  %24 = call i32 @disk_part_iter_init(%struct.disk_part_iter* %5, %struct.gendisk* %22, i32 %23)
  br label %25

25:                                               ; preds = %28, %21
  %26 = call %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %5)
  store %struct.hd_struct* %26, %struct.hd_struct** %6, align 8
  %27 = icmp ne %struct.hd_struct* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %31 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %25

32:                                               ; preds = %25
  %33 = call i32 @disk_part_iter_exit(%struct.disk_part_iter* %5)
  ret void
}

declare dso_local i32 @set_disk_ro_uevent(%struct.gendisk*, i32) #1

declare dso_local i32 @disk_part_iter_init(%struct.disk_part_iter*, %struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter*) #1

declare dso_local i32 @disk_part_iter_exit(%struct.disk_part_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
