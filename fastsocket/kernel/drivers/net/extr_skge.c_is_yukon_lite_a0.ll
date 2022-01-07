; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_is_yukon_lite_a0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_is_yukon_lite_a0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64 }

@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@B2_FAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @is_yukon_lite_a0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_yukon_lite_a0(%struct.skge_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  %6 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %7 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_ID_YUKON, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %14 = load i64, i64* @B2_FAR, align 8
  %15 = call i32 @skge_read32(%struct.skge_hw* %13, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %17 = load i64, i64* @B2_FAR, align 8
  %18 = add nsw i64 %17, 3
  %19 = call i32 @skge_write8(%struct.skge_hw* %16, i64 %18, i32 255)
  %20 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %21 = load i64, i64* @B2_FAR, align 8
  %22 = add nsw i64 %21, 3
  %23 = call i64 @skge_read8(%struct.skge_hw* %20, i64 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %27 = load i64, i64* @B2_FAR, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @skge_write32(%struct.skge_hw* %26, i64 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @skge_read32(%struct.skge_hw*, i64) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i64, i32) #1

declare dso_local i64 @skge_read8(%struct.skge_hw*, i64) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
