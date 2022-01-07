; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_unlock_phy_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_unlock_phy_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@CR_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error ioread32(CR_REG1): %d\0A\00", align 1
@UNLOCK_PHY_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error iowrite32(CR_REG1): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_unlock_phy_regs(%struct.zd_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  %6 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %7 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %6, i32 0, i32 0
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = call i32 @ZD_ASSERT(i32 %8)
  %10 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %11 = load i32, i32* @CR_REG1, align 4
  %12 = call i32 @zd_ioread32_locked(%struct.zd_chip* %10, i32* %5, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %17 = call i32 @zd_chip_dev(%struct.zd_chip* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load i32, i32* @UNLOCK_PHY_REGS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CR_REG1, align 4
  %28 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %33 = call i32 @zd_chip_dev(%struct.zd_chip* %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_ioread32_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
