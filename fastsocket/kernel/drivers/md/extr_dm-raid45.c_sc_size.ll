; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_sc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @sc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_size(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %3 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %4 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = call i32 @atomic_read(i32* %5)
  %7 = sext i32 %6 to i64
  %8 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @to_bytes(i32 %11)
  %13 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %14 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = add i64 4, %18
  %20 = add i64 4, %19
  %21 = add i64 4, %20
  %22 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %23 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %34 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %38 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %36, %40
  %42 = call i32 @to_bytes(i32 %41)
  %43 = mul nsw i32 %32, %42
  br label %44

44:                                               ; preds = %28, %27
  %45 = phi i32 [ 0, %27 ], [ %43, %28 ]
  %46 = sext i32 %45 to i64
  %47 = add i64 %21, %46
  %48 = mul i64 %7, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @to_sector(i32 %49)
  ret i32 %50
}

declare dso_local i32 @to_sector(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @to_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
