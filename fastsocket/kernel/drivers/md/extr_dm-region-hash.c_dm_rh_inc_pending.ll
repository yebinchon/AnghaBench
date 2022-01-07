; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_inc_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-region-hash.c_dm_rh_inc_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32 }
%struct.bio_list = type { %struct.bio* }
%struct.bio = type { i32, %struct.bio* }

@BIO_FLUSH = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_inc_pending(%struct.dm_region_hash* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  %6 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %7 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %6, i32 0, i32 0
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %5, align 8
  br label %9

9:                                                ; preds = %28, %2
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BIO_FLUSH, align 4
  %17 = load i32, i32* @BIO_DISCARD, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %24 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @dm_rh_bio_to_region(%struct.dm_region_hash* %24, %struct.bio* %25)
  %27 = call i32 @dm_rh_inc(%struct.dm_region_hash* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %21
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load %struct.bio*, %struct.bio** %30, align 8
  store %struct.bio* %31, %struct.bio** %5, align 8
  br label %9

32:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dm_rh_inc(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @dm_rh_bio_to_region(%struct.dm_region_hash*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
