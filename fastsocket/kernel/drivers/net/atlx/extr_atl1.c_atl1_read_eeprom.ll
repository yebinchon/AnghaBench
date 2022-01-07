; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64 }

@REG_VPD_DATA = common dso_local global i64 0, align 8
@VPD_CAP_VPD_ADDR_MASK = common dso_local global i32 0, align 4
@VPD_CAP_VPD_ADDR_SHIFT = common dso_local global i32 0, align 4
@REG_VPD_CAP = common dso_local global i64 0, align 8
@VPD_CAP_VPD_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_hw*, i32, i32*)* @atl1_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_read_eeprom(%struct.atl1_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %16 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_VPD_DATA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite32(i32 0, i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VPD_CAP_VPD_ADDR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @VPD_CAP_VPD_ADDR_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %28 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_VPD_CAP, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 %26, i64 %31)
  %33 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %34 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_VPD_CAP, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread32(i64 %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %56, %14
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = call i32 @msleep(i32 2)
  %44 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %45 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_VPD_CAP, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @ioread32(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @VPD_CAP_VPD_FLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %39

59:                                               ; preds = %54, %39
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @VPD_CAP_VPD_FLAG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %66 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @REG_VPD_DATA, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ioread32(i64 %69)
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  store i32 1, i32* %4, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %64, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
