; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_geometry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.dasd_eckd_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*, %struct.hd_geometry*)* @dasd_eckd_fill_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_fill_geometry(%struct.dasd_block* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %5, align 8
  %12 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @dasd_check_blocksize(i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %19 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %18, i32 0, i32 0
  %20 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @recs_per_track(%struct.TYPE_4__* %19, i32 0, i32 %22)
  %24 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %25 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %28 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %32 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %34 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %38 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

declare dso_local i64 @dasd_check_blocksize(i32) #1

declare dso_local i32 @recs_per_track(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
