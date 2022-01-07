; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_rq_bio_constructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_rq_bio_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.dm_rq_clone_bio_info*, i32 }
%struct.dm_rq_clone_bio_info = type { %struct.dm_rq_target_io*, %struct.bio* }
%struct.dm_rq_target_io = type { %struct.mapped_device* }
%struct.mapped_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@end_clone_bio = common dso_local global i32 0, align 4
@dm_rq_bio_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, %struct.bio*, i8*)* @dm_rq_bio_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_rq_bio_constructor(%struct.bio* %0, %struct.bio* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dm_rq_target_io*, align 8
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.dm_rq_clone_bio_info*, align 8
  store %struct.bio* %0, %struct.bio** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.dm_rq_target_io*
  store %struct.dm_rq_target_io* %12, %struct.dm_rq_target_io** %8, align 8
  %13 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %14 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %13, i32 0, i32 0
  %15 = load %struct.mapped_device*, %struct.mapped_device** %14, align 8
  store %struct.mapped_device* %15, %struct.mapped_device** %9, align 8
  %16 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %17 = call %struct.dm_rq_clone_bio_info* @alloc_bio_info(%struct.mapped_device* %16)
  store %struct.dm_rq_clone_bio_info* %17, %struct.dm_rq_clone_bio_info** %10, align 8
  %18 = load %struct.dm_rq_clone_bio_info*, %struct.dm_rq_clone_bio_info** %10, align 8
  %19 = icmp ne %struct.dm_rq_clone_bio_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = load %struct.dm_rq_clone_bio_info*, %struct.dm_rq_clone_bio_info** %10, align 8
  %26 = getelementptr inbounds %struct.dm_rq_clone_bio_info, %struct.dm_rq_clone_bio_info* %25, i32 0, i32 1
  store %struct.bio* %24, %struct.bio** %26, align 8
  %27 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %28 = load %struct.dm_rq_clone_bio_info*, %struct.dm_rq_clone_bio_info** %10, align 8
  %29 = getelementptr inbounds %struct.dm_rq_clone_bio_info, %struct.dm_rq_clone_bio_info* %28, i32 0, i32 0
  store %struct.dm_rq_target_io* %27, %struct.dm_rq_target_io** %29, align 8
  %30 = load i32, i32* @end_clone_bio, align 4
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dm_rq_clone_bio_info*, %struct.dm_rq_clone_bio_info** %10, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 1
  store %struct.dm_rq_clone_bio_info* %33, %struct.dm_rq_clone_bio_info** %35, align 8
  %36 = load i32, i32* @dm_rq_bio_destructor, align 4
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.dm_rq_clone_bio_info* @alloc_bio_info(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
