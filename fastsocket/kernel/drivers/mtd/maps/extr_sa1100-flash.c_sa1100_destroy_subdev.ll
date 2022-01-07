; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_destroy_subdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_destroy_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_subdev_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa_subdev_info*)* @sa1100_destroy_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_destroy_subdev(%struct.sa_subdev_info* %0) #0 {
  %2 = alloca %struct.sa_subdev_info*, align 8
  store %struct.sa_subdev_info* %0, %struct.sa_subdev_info** %2, align 8
  %3 = load %struct.sa_subdev_info*, %struct.sa_subdev_info** %2, align 8
  %4 = getelementptr inbounds %struct.sa_subdev_info, %struct.sa_subdev_info* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.sa_subdev_info*, %struct.sa_subdev_info** %2, align 8
  %9 = getelementptr inbounds %struct.sa_subdev_info, %struct.sa_subdev_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @map_destroy(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.sa_subdev_info*, %struct.sa_subdev_info** %2, align 8
  %14 = getelementptr inbounds %struct.sa_subdev_info, %struct.sa_subdev_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.sa_subdev_info*, %struct.sa_subdev_info** %2, align 8
  %20 = getelementptr inbounds %struct.sa_subdev_info, %struct.sa_subdev_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @iounmap(i64 %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.sa_subdev_info*, %struct.sa_subdev_info** %2, align 8
  %26 = getelementptr inbounds %struct.sa_subdev_info, %struct.sa_subdev_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sa_subdev_info*, %struct.sa_subdev_info** %2, align 8
  %30 = getelementptr inbounds %struct.sa_subdev_info, %struct.sa_subdev_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @release_mem_region(i32 %28, i32 %32)
  ret void
}

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
