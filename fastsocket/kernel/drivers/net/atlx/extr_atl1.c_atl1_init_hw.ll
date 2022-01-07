; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i32, i64 }

@REG_RX_HASH_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1_hw*)* @atl1_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1_init_hw(%struct.atl1_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atl1_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.atl1_hw* %0, %struct.atl1_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %6 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @iowrite32(i32 0, i64 %9)
  %11 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %12 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %15 = add nsw i64 %13, %14
  %16 = add nsw i64 %15, 4
  %17 = call i32 @iowrite32(i32 0, i64 %16)
  %18 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %19 = call i32 @atl1_init_flash_opcode(%struct.atl1_hw* %18)
  %20 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %21 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %1
  %25 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %26 = call i64 @atl1_write_phy_reg(%struct.atl1_hw* %25, i32 18, i32 3072)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %33 = call i64 @atl1_phy_leave_power_saving(%struct.atl1_hw* %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %43

38:                                               ; preds = %31
  %39 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %40 = call i64 @atl1_setup_link(%struct.atl1_hw* %39)
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %38, %1
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %41, %36, %29
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @atl1_init_flash_opcode(%struct.atl1_hw*) #1

declare dso_local i64 @atl1_write_phy_reg(%struct.atl1_hw*, i32, i32) #1

declare dso_local i64 @atl1_phy_leave_power_saving(%struct.atl1_hw*) #1

declare dso_local i64 @atl1_setup_link(%struct.atl1_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
