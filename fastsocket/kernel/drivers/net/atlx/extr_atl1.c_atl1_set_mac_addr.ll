; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64, i64* }

@REG_MAC_STA_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atl1_set_mac_addr(%struct.atl1_hw* %0) #0 {
  %2 = alloca %struct.atl1_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %2, align 8
  %4 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %5 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %4, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 2
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 24
  %11 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %12 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 16
  %18 = or i32 %10, %17
  %19 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %20 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 8
  %26 = or i32 %18, %25
  %27 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %28 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 5
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = or i32 %26, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %36 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite32(i32 %34, i64 %39)
  %41 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %42 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 8
  %48 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %49 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = or i32 %47, %53
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %57 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %60 = add nsw i64 %58, %59
  %61 = add nsw i64 %60, 4
  %62 = call i32 @iowrite32(i32 %55, i64 %61)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
