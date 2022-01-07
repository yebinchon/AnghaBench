; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___issue_target_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___issue_target_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_target = type { i32 }
%struct.dm_target_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@dm_bio_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone_info*, %struct.dm_target*, i32, i64)* @__issue_target_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__issue_target_request(%struct.clone_info* %0, %struct.dm_target* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.clone_info*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dm_target_io*, align 8
  %10 = alloca %struct.bio*, align 8
  store %struct.clone_info* %0, %struct.clone_info** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %13 = call %struct.dm_target_io* @alloc_tio(%struct.clone_info* %11, %struct.dm_target* %12)
  store %struct.dm_target_io* %13, %struct.dm_target_io** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.dm_target_io*, %struct.dm_target_io** %9, align 8
  %16 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %20 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %25 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.bio* @bio_alloc_bioset(i32 %18, i32 %23, i32 %28)
  store %struct.bio* %29, %struct.bio** %10, align 8
  %30 = load %struct.bio*, %struct.bio** %10, align 8
  %31 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %32 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @__bio_clone(%struct.bio* %30, %struct.TYPE_6__* %33)
  %35 = load i32, i32* @dm_bio_destructor, align 4
  %36 = load %struct.bio*, %struct.bio** %10, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %4
  %41 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %42 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bio*, %struct.bio** %10, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @to_bytes(i64 %46)
  %48 = load %struct.bio*, %struct.bio** %10, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %4
  %51 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %52 = load %struct.bio*, %struct.bio** %10, align 8
  %53 = load %struct.dm_target_io*, %struct.dm_target_io** %9, align 8
  %54 = call i32 @__map_bio(%struct.dm_target* %51, %struct.bio* %52, %struct.dm_target_io* %53)
  ret void
}

declare dso_local %struct.dm_target_io* @alloc_tio(%struct.clone_info*, %struct.dm_target*) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32) #1

declare dso_local i32 @__bio_clone(%struct.bio*, %struct.TYPE_6__*) #1

declare dso_local i32 @to_bytes(i64) #1

declare dso_local i32 @__map_bio(%struct.dm_target*, %struct.bio*, %struct.dm_target_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
