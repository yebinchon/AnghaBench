; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_free_disks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_free_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gendisk* }
%struct.gendisk = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@CARM_MAX_PORTS = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carm_host*)* @carm_free_disks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carm_free_disks(%struct.carm_host* %0) #0 {
  %2 = alloca %struct.carm_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.carm_host* %0, %struct.carm_host** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CARM_MAX_PORTS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  %11 = load %struct.carm_host*, %struct.carm_host** %2, align 8
  %12 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.gendisk*, %struct.gendisk** %17, align 8
  store %struct.gendisk* %18, %struct.gendisk** %4, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %20 = icmp ne %struct.gendisk* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %10
  %22 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 1
  %24 = load %struct.request_queue*, %struct.request_queue** %23, align 8
  store %struct.request_queue* %24, %struct.request_queue** %5, align 8
  %25 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %26 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GENHD_FL_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %33 = call i32 @del_gendisk(%struct.gendisk* %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = icmp ne %struct.request_queue* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %39 = call i32 @blk_cleanup_queue(%struct.request_queue* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %42 = call i32 @put_disk(%struct.gendisk* %41)
  br label %43

43:                                               ; preds = %40, %10
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %6

47:                                               ; preds = %6
  ret void
}

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
