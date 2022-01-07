; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_z2ram.c_get_z2ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_z2ram.c_get_z2ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z2RAM_SIZE = common dso_local global i32 0, align 4
@Z2RAM_CHUNKSIZE = common dso_local global i32 0, align 4
@zorro_unused_z2ram = common dso_local global i32 0, align 4
@z2_count = common dso_local global i32 0, align 4
@Z2RAM_START = common dso_local global i32 0, align 4
@Z2RAM_CHUNKSHIFT = common dso_local global i32 0, align 4
@z2ram_map = common dso_local global i64* null, align 8
@z2ram_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_z2ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_z2ram() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %32, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @Z2RAM_SIZE, align 4
  %5 = load i32, i32* @Z2RAM_CHUNKSIZE, align 4
  %6 = sdiv i32 %4, %5
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @zorro_unused_z2ram, align 4
  %11 = call i64 @test_bit(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load i32, i32* @z2_count, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @z2_count, align 4
  %16 = load i32, i32* @Z2RAM_START, align 4
  %17 = call i64 @ZTWO_VADDR(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @Z2RAM_CHUNKSHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = load i64*, i64** @z2ram_map, align 8
  %24 = load i32, i32* @z2ram_size, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @z2ram_size, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64 %22, i64* %27, align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @zorro_unused_z2ram, align 4
  %30 = call i32 @clear_bit(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %13, %8
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %2

35:                                               ; preds = %2
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ZTWO_VADDR(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
