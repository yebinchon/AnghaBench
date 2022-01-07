; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_origin_write_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_origin_write_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.origin = type { i32 }

@_origins_lock = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*, i32, i32)* @origin_write_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @origin_write_extent(%struct.dm_snapshot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.origin*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @down_read(i32* @_origins_lock)
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.origin* @__lookup_origin(i32 %15)
  store %struct.origin* %16, %struct.origin** %9, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.origin*, %struct.origin** %9, align 8
  %23 = getelementptr inbounds %struct.origin, %struct.origin* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %24, %25
  %27 = call i64 @__origin_write(i32* %23, i32 %26, i32* null)
  %28 = load i64, i64* @DM_MAPIO_SUBMITTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %34 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %17

40:                                               ; preds = %17
  %41 = call i32 @up_read(i32* @_origins_lock)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.origin* @__lookup_origin(i32) #1

declare dso_local i64 @__origin_write(i32*, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
