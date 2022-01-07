; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_complete_resync_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_complete_resync_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region = type { i32, i32, %struct.dm_region_hash* }
%struct.dm_region_hash = type { i32, i32, i32 (i32)*, i32, i32 (i32, i32*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_region*, i32)* @complete_resync_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_resync_work(%struct.dm_region* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_region_hash*, align 8
  store %struct.dm_region* %0, %struct.dm_region** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %7 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %6, i32 0, i32 2
  %8 = load %struct.dm_region_hash*, %struct.dm_region_hash** %7, align 8
  store %struct.dm_region_hash* %8, %struct.dm_region_hash** %5, align 8
  %9 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %10 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %14, align 8
  %16 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %17 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %20 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 %15(%struct.TYPE_4__* %18, i32 %21, i32 %22)
  %24 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %25 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %24, i32 0, i32 4
  %26 = load i32 (i32, i32*)*, i32 (i32, i32*)** %25, align 8
  %27 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %28 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %31 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %30, i32 0, i32 0
  %32 = call i32 %26(i32 %29, i32* %31)
  %33 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %34 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %33, i32 0, i32 3
  %35 = call i64 @atomic_dec_and_test(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %39 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %38, i32 0, i32 2
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %42 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %40(i32 %43)
  br label %45

45:                                               ; preds = %37, %2
  %46 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %47 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %46, i32 0, i32 0
  %48 = call i32 @up(i32* %47)
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
