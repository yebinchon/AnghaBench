; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_map_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.flakey_c* }
%struct.flakey_c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.bio*)* @flakey_map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flakey_map_bio(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.flakey_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.flakey_c*, %struct.flakey_c** %7, align 8
  store %struct.flakey_c* %8, %struct.flakey_c** %5, align 8
  %9 = load %struct.flakey_c*, %struct.flakey_c** %5, align 8
  %10 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = call i64 @bio_sectors(%struct.bio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @flakey_map_sector(%struct.dm_target* %20, i32 %23)
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %2
  ret void
}

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @flakey_map_sector(%struct.dm_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
