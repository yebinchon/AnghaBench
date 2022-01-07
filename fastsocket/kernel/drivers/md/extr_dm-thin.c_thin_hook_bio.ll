; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_hook_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_hook_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_endio_hook = type { %struct.bio*, i32*, i32*, i32*, %struct.thin_c* }
%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32 }
%struct.bio = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_thin_endio_hook* (%struct.thin_c*, %struct.bio*)* @thin_hook_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_thin_endio_hook* @thin_hook_bio(%struct.thin_c* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca %struct.dm_thin_endio_hook*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %8 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %7, i32 0, i32 0
  %9 = load %struct.pool*, %struct.pool** %8, align 8
  store %struct.pool* %9, %struct.pool** %5, align 8
  %10 = load %struct.pool*, %struct.pool** %5, align 8
  %11 = getelementptr inbounds %struct.pool, %struct.pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = call %struct.dm_thin_endio_hook* @mempool_alloc(i32 %12, i32 %13)
  store %struct.dm_thin_endio_hook* %14, %struct.dm_thin_endio_hook** %6, align 8
  %15 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %16 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  %17 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %16, i32 0, i32 4
  store %struct.thin_c* %15, %struct.thin_c** %17, align 8
  %18 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  %19 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  %21 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  %23 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  %26 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %25, i32 0, i32 0
  store %struct.bio* %24, %struct.bio** %26, align 8
  %27 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %6, align 8
  ret %struct.dm_thin_endio_hook* %27
}

declare dso_local %struct.dm_thin_endio_hook* @mempool_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
