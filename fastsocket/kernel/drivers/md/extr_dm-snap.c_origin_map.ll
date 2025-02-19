; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_origin_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_origin_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_dev* }
%struct.dm_dev = type { i32 }
%struct.bio = type { i32, i32 }
%union.map_info = type { i32 }

@BIO_FLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @origin_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @origin_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.dm_dev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  store %struct.dm_dev* %11, %struct.dm_dev** %8, align 8
  %12 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %13 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BIO_FLUSH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = call i64 @bio_rw(%struct.bio* %26)
  %28 = load i64, i64* @WRITE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = call i32 @do_origin(%struct.dm_dev* %31, %struct.bio* %32)
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %33, %30 ], [ %35, %34 ]
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @bio_rw(%struct.bio*) #1

declare dso_local i32 @do_origin(%struct.dm_dev*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
