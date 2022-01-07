; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_queue_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_queue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }
%struct.bio_list = type { i32 }
%struct.raid_address = type { i32 }
%struct.stripe = type { i32 }

@READ = common dso_local global i32 0, align 4
@S_BIOS_ADDED_READ = common dso_local global i64 0, align 8
@S_BIOS_ADDED_WRITE = common dso_local global i64 0, align 8
@S_IOS_POST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, %struct.bio*, %struct.bio_list*)* @stripe_queue_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_queue_bio(%struct.raid_set* %0, %struct.bio* %1, %struct.bio_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raid_set*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio_list*, align 8
  %8 = alloca %struct.raid_address, align 4
  %9 = alloca %struct.stripe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %struct.bio_list* %2, %struct.bio_list** %7, align 8
  %12 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %13 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @raid_address(%struct.raid_set* %13, i32 %16, %struct.raid_address* %8)
  %18 = call %struct.stripe* @stripe_find(%struct.raid_set* %12, i32 %17)
  store %struct.stripe* %18, %struct.stripe** %9, align 8
  %19 = load %struct.stripe*, %struct.stripe** %9, align 8
  %20 = icmp ne %struct.stripe* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = call i32 @bio_data_dir(%struct.bio* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.stripe*, %struct.stripe** %9, align 8
  %25 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.bio_list* @BL(%struct.stripe* %24, i32 %26, i32 %27)
  %29 = load %struct.bio*, %struct.bio** %6, align 8
  %30 = call i32 @bio_list_add(%struct.bio_list* %28, %struct.bio* %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @READ, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %36 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S_BIOS_ADDED_READ, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @atomic_inc(i64 %39)
  br label %56

41:                                               ; preds = %21
  %42 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %43 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.stripe*, %struct.stripe** %9, align 8
  %47 = getelementptr inbounds %struct.stripe, %struct.stripe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dm_rh_inc(i32 %45, i32 %48)
  store i32 1, i32* %10, align 4
  %50 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %51 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S_BIOS_ADDED_WRITE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @atomic_inc(i64 %54)
  br label %56

56:                                               ; preds = %41, %34
  %57 = load %struct.stripe*, %struct.stripe** %9, align 8
  %58 = getelementptr inbounds %struct.raid_address, %struct.raid_address* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CHUNK(%struct.stripe* %57, i32 %59)
  %61 = call i32 @chunk_get(i32 %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.stripe*, %struct.stripe** %9, align 8
  %65 = call i32 @stripe_flush_add(%struct.stripe* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %3
  %69 = load %struct.bio_list*, %struct.bio_list** %7, align 8
  %70 = load %struct.bio*, %struct.bio** %6, align 8
  %71 = call i32 @bio_list_add(%struct.bio_list* %69, %struct.bio* %70)
  %72 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %73 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @S_IOS_POST, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @atomic_inc(i64 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %68, %66
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.stripe* @stripe_find(%struct.raid_set*, i32) #1

declare dso_local i32 @raid_address(%struct.raid_set*, i32, %struct.raid_address*) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local %struct.bio_list* @BL(%struct.stripe*, i32, i32) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i32 @dm_rh_inc(i32, i32) #1

declare dso_local i32 @chunk_get(i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @stripe_flush_add(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
