; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_do_origin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_do_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dev = type { i32 }
%struct.bio = type { i32 }
%struct.origin = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dev*, %struct.bio*)* @do_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_origin(%struct.dm_dev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_dev*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.origin*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_dev* %0, %struct.dm_dev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 @down_read(i32* @_origins_lock)
  %9 = load %struct.dm_dev*, %struct.dm_dev** %3, align 8
  %10 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.origin* @__lookup_origin(i32 %11)
  store %struct.origin* %12, %struct.origin** %5, align 8
  %13 = load %struct.origin*, %struct.origin** %5, align 8
  %14 = icmp ne %struct.origin* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.origin*, %struct.origin** %5, align 8
  %17 = getelementptr inbounds %struct.origin, %struct.origin* %16, i32 0, i32 0
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = call i32 @__origin_write(i32* %17, i32 %20, %struct.bio* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %15, %2
  %24 = call i32 @up_read(i32* @_origins_lock)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.origin* @__lookup_origin(i32) #1

declare dso_local i32 @__origin_write(i32*, i32, %struct.bio*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
