; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_c = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i32 }
%struct.dm_delay_info = type { i64, i32, %struct.bio*, %struct.delay_c* }

@GFP_NOIO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@delayed_bios_lock = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delay_c*, i32, %struct.bio*)* @delay_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_bio(%struct.delay_c* %0, i32 %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.delay_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.dm_delay_info*, align 8
  %9 = alloca i64, align 8
  store %struct.delay_c* %0, %struct.delay_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bio* %2, %struct.bio** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %14 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %13, i32 0, i32 4
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %3
  store i32 1, i32* %4, align 4
  br label %64

18:                                               ; preds = %12
  %19 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %20 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call %struct.dm_delay_info* @mempool_alloc(i32 %21, i32 %22)
  store %struct.dm_delay_info* %23, %struct.dm_delay_info** %8, align 8
  %24 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %25 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %26 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %25, i32 0, i32 3
  store %struct.delay_c* %24, %struct.delay_c** %26, align 8
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %29 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %28, i32 0, i32 2
  store %struct.bio* %27, %struct.bio** %29, align 8
  %30 = load i32, i32* @jiffies, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 1000
  %35 = add nsw i32 %30, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %38 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = call i32 @mutex_lock(i32* @delayed_bios_lock)
  %40 = load %struct.bio*, %struct.bio** %7, align 8
  %41 = call i64 @bio_data_dir(%struct.bio* %40)
  %42 = load i64, i64* @WRITE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %18
  %45 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %46 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %54

49:                                               ; preds = %18
  %50 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %51 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.dm_delay_info*, %struct.dm_delay_info** %8, align 8
  %56 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %55, i32 0, i32 1
  %57 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %58 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = call i32 @mutex_unlock(i32* @delayed_bios_lock)
  %61 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @queue_timeout(%struct.delay_c* %61, i64 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %54, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.dm_delay_info* @mempool_alloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_timeout(%struct.delay_c*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
