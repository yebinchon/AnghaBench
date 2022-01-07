; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_context_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @context_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_free(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %66, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %4
  %12 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %11
  %22 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %23 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dm_put_device(i32 %24, i64 %32)
  br label %34

34:                                               ; preds = %21, %11
  %35 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %36 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @md_rdev_clear(i32* %41)
  %43 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %34
  %53 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %54 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %57 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dm_put_device(i32 %55, i64 %63)
  br label %65

65:                                               ; preds = %52, %34
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %4

69:                                               ; preds = %4
  %70 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %71 = call i32 @kfree(%struct.raid_set* %70)
  ret void
}

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @md_rdev_clear(i32*) #1

declare dso_local i32 @kfree(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
