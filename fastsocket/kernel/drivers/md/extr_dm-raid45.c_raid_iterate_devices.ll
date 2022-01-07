; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_2__, %struct.raid_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.raid_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i8*)* @raid_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.raid_set*, align 8
  %9 = alloca %struct.raid_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  store %struct.raid_set* %13, %struct.raid_set** %8, align 8
  %14 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %19 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %18, i32 0, i32 1
  %20 = load %struct.raid_dev*, %struct.raid_dev** %19, align 8
  store %struct.raid_dev* %20, %struct.raid_dev** %9, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load %struct.raid_dev*, %struct.raid_dev** %9, align 8
  %26 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 1
  %28 = load %struct.raid_dev*, %struct.raid_dev** %27, align 8
  %29 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %28, i64 %33
  %35 = icmp ult %struct.raid_dev* %25, %34
  br label %36

36:                                               ; preds = %24, %21
  %37 = phi i1 [ false, %21 ], [ %35, %24 ]
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  %39 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  %40 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %41 = load %struct.raid_dev*, %struct.raid_dev** %9, align 8
  %42 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.raid_dev*, %struct.raid_dev** %9, align 8
  %45 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 %39(%struct.dm_target* %40, i32 %43, i32 %46, i32 %47, i8* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load %struct.raid_dev*, %struct.raid_dev** %9, align 8
  %52 = getelementptr inbounds %struct.raid_dev, %struct.raid_dev* %51, i32 1
  store %struct.raid_dev* %52, %struct.raid_dev** %9, align 8
  br label %21

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
