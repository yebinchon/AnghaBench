; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_map_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_map_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mirror*, %struct.bio*)* @map_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_sector(%struct.mirror* %0, %struct.bio* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mirror*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.mirror* %0, %struct.mirror** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.bio*, %struct.bio** %5, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.mirror*, %struct.mirror** %4, align 8
  %17 = getelementptr inbounds %struct.mirror, %struct.mirror* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mirror*, %struct.mirror** %4, align 8
  %20 = getelementptr inbounds %struct.mirror, %struct.mirror* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @dm_target_offset(i32 %23, i32 %26)
  %28 = add nsw i64 %18, %27
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dm_target_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
