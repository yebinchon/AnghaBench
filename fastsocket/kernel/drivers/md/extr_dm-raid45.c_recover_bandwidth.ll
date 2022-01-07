; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_recover_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_recover_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@IO_WORK = common dso_local global i64 0, align 8
@IO_RECOVER = common dso_local global i64 0, align 8
@S_NO_BANDWIDTH = common dso_local global i64 0, align 8
@S_BANDWIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @recover_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_bandwidth(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %7 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %8 = call i32 @recover_io_reset(%struct.raid_set* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = call i64 @RSBandwidth(%struct.raid_set* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %61

16:                                               ; preds = %11
  %17 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %18 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IO_WORK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @atomic_read(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %16
  %27 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %28 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IO_RECOVER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @atomic_read(i64 %32)
  %34 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %33, %37
  %39 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %40 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %38, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %47 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %45, %49
  %51 = icmp sgt i32 %44, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %26
  %53 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %54 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @S_NO_BANDWIDTH, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @atomic_inc(i64 %57)
  store i32 0, i32* %2, align 4
  br label %68

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %59, %16
  br label %61

61:                                               ; preds = %60, %15
  %62 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %63 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @S_BANDWIDTH, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @atomic_inc(i64 %66)
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %52
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @recover_io_reset(%struct.raid_set*) #1

declare dso_local i64 @RSBandwidth(%struct.raid_set*) #1

declare dso_local i32 @atomic_read(i64) #1

declare dso_local i32 @atomic_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
