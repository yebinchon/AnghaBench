; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_is_io_in_chunk_boundary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_is_io_in_chunk_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, %struct.bio*)* @is_io_in_chunk_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_io_in_chunk_boundary(%struct.mddev* %0, i32 %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bio* %2, %struct.bio** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @is_power_of_2(i32 %9)
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, 1
  %20 = and i32 %17, %19
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = call i32 @bio_sectors(%struct.bio* %21)
  %23 = add i32 %20, %22
  %24 = icmp uge i32 %14, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sector_div(i32 %31, i32 %32)
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = call i32 @bio_sectors(%struct.bio* %34)
  %36 = add i32 %33, %35
  %37 = icmp uge i32 %30, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
