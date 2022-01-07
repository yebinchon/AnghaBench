; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c___choose_path_in_pg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c___choose_path_in_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32, %struct.priority_group*, i32 }
%struct.priority_group = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dm_path* (%struct.TYPE_4__*, i32*, i64)* }
%struct.dm_path = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, %struct.priority_group*, i64)* @__choose_path_in_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__choose_path_in_pg(%struct.multipath* %0, %struct.priority_group* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca %struct.priority_group*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dm_path*, align 8
  store %struct.multipath* %0, %struct.multipath** %5, align 8
  store %struct.priority_group* %1, %struct.priority_group** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %10 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.dm_path* (%struct.TYPE_4__*, i32*, i64)*, %struct.dm_path* (%struct.TYPE_4__*, i32*, i64)** %13, align 8
  %15 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %16 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %15, i32 0, i32 0
  %17 = load %struct.multipath*, %struct.multipath** %5, align 8
  %18 = getelementptr inbounds %struct.multipath, %struct.multipath* %17, i32 0, i32 2
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.dm_path* %14(%struct.TYPE_4__* %16, i32* %18, i64 %19)
  store %struct.dm_path* %20, %struct.dm_path** %8, align 8
  %21 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %22 = icmp ne %struct.dm_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %28 = call i32 @path_to_pgpath(%struct.dm_path* %27)
  %29 = load %struct.multipath*, %struct.multipath** %5, align 8
  %30 = getelementptr inbounds %struct.multipath, %struct.multipath* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.multipath*, %struct.multipath** %5, align 8
  %32 = getelementptr inbounds %struct.multipath, %struct.multipath* %31, i32 0, i32 1
  %33 = load %struct.priority_group*, %struct.priority_group** %32, align 8
  %34 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %35 = icmp ne %struct.priority_group* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.multipath*, %struct.multipath** %5, align 8
  %38 = load %struct.multipath*, %struct.multipath** %5, align 8
  %39 = getelementptr inbounds %struct.multipath, %struct.multipath* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @__switch_pg(%struct.multipath* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %26
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @path_to_pgpath(%struct.dm_path*) #1

declare dso_local i32 @__switch_pg(%struct.multipath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
