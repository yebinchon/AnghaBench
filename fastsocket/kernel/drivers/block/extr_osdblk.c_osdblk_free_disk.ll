; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_osdblk.c_osdblk_free_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_osdblk.c_osdblk_free_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osdblk_device = type { %struct.gendisk* }
%struct.gendisk = type { i32, i64 }

@GENHD_FL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osdblk_device*)* @osdblk_free_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osdblk_free_disk(%struct.osdblk_device* %0) #0 {
  %2 = alloca %struct.osdblk_device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.osdblk_device* %0, %struct.osdblk_device** %2, align 8
  %4 = load %struct.osdblk_device*, %struct.osdblk_device** %2, align 8
  %5 = getelementptr inbounds %struct.osdblk_device, %struct.osdblk_device* %4, i32 0, i32 0
  %6 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  store %struct.gendisk* %6, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = icmp ne %struct.gendisk* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GENHD_FL_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %19 = call i32 @del_gendisk(%struct.gendisk* %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %27 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @blk_cleanup_queue(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %32 = call i32 @put_disk(%struct.gendisk* %31)
  br label %33

33:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
