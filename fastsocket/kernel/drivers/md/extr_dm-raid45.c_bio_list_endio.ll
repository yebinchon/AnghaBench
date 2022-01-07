; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_bio_list_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_bio_list_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32, i32 }
%struct.bio_list = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }
%struct.page_list = type { i32 }
%struct.stripe_chunk = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@S_BIOS_ENDIO_READ = common dso_local global i64 0, align 8
@S_BIOS_ENDIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*, %struct.bio_list*, i32, i32)* @bio_list_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_list_endio(%struct.stripe* %0, %struct.bio_list* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stripe*, align 8
  %6 = alloca %struct.bio_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid_set*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.page_list*, align 8
  %12 = alloca %struct.stripe_chunk*, align 8
  store %struct.stripe* %0, %struct.stripe** %5, align 8
  store %struct.bio_list* %1, %struct.bio_list** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.stripe*, %struct.stripe** %5, align 8
  %14 = getelementptr inbounds %struct.stripe, %struct.stripe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.raid_set* @RS(i32 %15)
  store %struct.raid_set* %16, %struct.raid_set** %9, align 8
  %17 = load %struct.stripe*, %struct.stripe** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.page_list* @PL(%struct.stripe* %17, i32 %18)
  store %struct.page_list* %19, %struct.page_list** %11, align 8
  %20 = load %struct.stripe*, %struct.stripe** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %20, i32 %21)
  store %struct.stripe_chunk* %22, %struct.stripe_chunk** %12, align 8
  br label %23

23:                                               ; preds = %66, %4
  %24 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %25 = call %struct.bio* @bio_list_pop(%struct.bio_list* %24)
  store %struct.bio* %25, %struct.bio** %10, align 8
  %26 = icmp ne %struct.bio* %25, null
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load %struct.bio*, %struct.bio** %10, align 8
  %29 = call i64 @bio_data_dir(%struct.bio* %28)
  %30 = load i64, i64* @WRITE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %34 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.stripe*, %struct.stripe** %5, align 8
  %38 = getelementptr inbounds %struct.stripe, %struct.stripe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dm_rh_dec(i32 %36, i32 %39)
  br label %51

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @READ, align 8
  %46 = load %struct.stripe*, %struct.stripe** %5, align 8
  %47 = load %struct.page_list*, %struct.page_list** %11, align 8
  %48 = load %struct.bio*, %struct.bio** %10, align 8
  %49 = call i32 @bio_copy_page_list(i64 %45, %struct.stripe* %46, %struct.page_list* %47, %struct.bio* %48)
  br label %50

50:                                               ; preds = %44, %41
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.bio*, %struct.bio** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @bio_endio(%struct.bio* %52, i32 %53)
  %55 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %56 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bio*, %struct.bio** %10, align 8
  %59 = call i64 @bio_data_dir(%struct.bio* %58)
  %60 = load i64, i64* @READ, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i64, i64* @S_BIOS_ENDIO_READ, align 8
  br label %66

64:                                               ; preds = %51
  %65 = load i64, i64* @S_BIOS_ENDIO_WRITE, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = add nsw i64 %57, %67
  %69 = call i32 @atomic_inc(i64 %68)
  %70 = load %struct.stripe_chunk*, %struct.stripe_chunk** %12, align 8
  %71 = call i32 @chunk_put(%struct.stripe_chunk* %70)
  %72 = load %struct.stripe*, %struct.stripe** %5, align 8
  %73 = call i32 @stripe_put(%struct.stripe* %72)
  %74 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %75 = call i32 @io_put(%struct.raid_set* %74)
  br label %23

76:                                               ; preds = %23
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local %struct.page_list* @PL(%struct.stripe*, i32) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @dm_rh_dec(i32, i32) #1

declare dso_local i32 @bio_copy_page_list(i64, %struct.stripe*, %struct.page_list*, %struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i32 @chunk_put(%struct.stripe_chunk*) #1

declare dso_local i32 @stripe_put(%struct.stripe*) #1

declare dso_local i32 @io_put(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
