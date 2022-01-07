; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_read_async_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_read_async_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.bio = type { i64, i64 }
%struct.dm_io_region = type { i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.bio*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@read_callback = common dso_local global i32 0, align 4
@DM_IO_BVEC = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror*, %struct.bio*)* @read_async_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_async_bio(%struct.mirror* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mirror*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.dm_io_region, align 4
  %6 = alloca %struct.dm_io_request, align 8
  store %struct.mirror* %0, %struct.mirror** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %6, i32 0, i32 0
  %8 = load %struct.mirror*, %struct.mirror** %3, align 8
  %9 = getelementptr inbounds %struct.mirror, %struct.mirror* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 8
  %13 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %15, %struct.bio** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %17 = load i32, i32* @read_callback, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %20, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %29 = load i32, i32* @DM_IO_BVEC, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %6, i32 0, i32 3
  %31 = load i32, i32* @READ, align 4
  store i32 %31, i32* %30, align 8
  %32 = load %struct.mirror*, %struct.mirror** %3, align 8
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = call i32 @map_region(%struct.dm_io_region* %5, %struct.mirror* %32, %struct.bio* %33)
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = load %struct.mirror*, %struct.mirror** %3, align 8
  %37 = call i32 @bio_set_m(%struct.bio* %35, %struct.mirror* %36)
  %38 = call i32 @dm_io(%struct.dm_io_request* %6, i32 1, %struct.dm_io_region* %5, i32* null)
  %39 = call i32 @BUG_ON(i32 %38)
  ret void
}

declare dso_local i32 @map_region(%struct.dm_io_region*, %struct.mirror*, %struct.bio*) #1

declare dso_local i32 @bio_set_m(%struct.bio*, %struct.mirror*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
