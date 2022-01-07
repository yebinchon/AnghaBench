; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_context_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, i32)* @context_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_free(%struct.raid_set* %0, i32 %1) #0 {
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %14 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_put_device(i32 %12, i32 %20)
  br label %5

22:                                               ; preds = %5
  %23 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %24 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %23, i32 0, i32 1
  %25 = call i32 @sc_exit(i32* %24)
  %26 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dm_region_hash_destroy(i32 %29)
  %31 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %32 = call i32 @kfree(%struct.raid_set* %31)
  ret void
}

declare dso_local i32 @dm_put_device(i32, i32) #1

declare dso_local i32 @sc_exit(i32*) #1

declare dso_local i32 @dm_region_hash_destroy(i32) #1

declare dso_local i32 @kfree(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
