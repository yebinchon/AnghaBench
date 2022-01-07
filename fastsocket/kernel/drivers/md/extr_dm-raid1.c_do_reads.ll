; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_reads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }
%struct.mirror = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio_list*)* @do_reads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reads(%struct.mirror_set* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.mirror*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  br label %8

8:                                                ; preds = %54, %2
  %9 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %10 = call %struct.bio* @bio_list_pop(%struct.bio_list* %9)
  store %struct.bio* %10, %struct.bio** %6, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %14 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i32 @dm_rh_bio_to_region(i32 %15, %struct.bio* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %19 = call %struct.mirror* @get_default_mirror(%struct.mirror_set* %18)
  store %struct.mirror* %19, %struct.mirror** %7, align 8
  %20 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.mirror* @region_in_sync(%struct.mirror_set* %20, i32 %21, i32 1)
  %23 = call i64 @likely(%struct.mirror* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.mirror* @choose_mirror(%struct.mirror_set* %26, i32 %29)
  store %struct.mirror* %30, %struct.mirror** %7, align 8
  br label %41

31:                                               ; preds = %12
  %32 = load %struct.mirror*, %struct.mirror** %7, align 8
  %33 = icmp ne %struct.mirror* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.mirror*, %struct.mirror** %7, align 8
  %36 = getelementptr inbounds %struct.mirror, %struct.mirror* %35, i32 0, i32 0
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store %struct.mirror* null, %struct.mirror** %7, align 8
  br label %40

40:                                               ; preds = %39, %34, %31
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.mirror*, %struct.mirror** %7, align 8
  %43 = call i64 @likely(%struct.mirror* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.mirror*, %struct.mirror** %7, align 8
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  %48 = call i32 @read_async_bio(%struct.mirror* %46, %struct.bio* %47)
  br label %54

49:                                               ; preds = %41
  %50 = load %struct.bio*, %struct.bio** %6, align 8
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @bio_endio(%struct.bio* %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local %struct.mirror* @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i64 @likely(%struct.mirror*) #1

declare dso_local %struct.mirror* @region_in_sync(%struct.mirror_set*, i32, i32) #1

declare dso_local %struct.mirror* @choose_mirror(%struct.mirror_set*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @read_async_bio(%struct.mirror*, %struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
