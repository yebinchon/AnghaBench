; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_patch_cck_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_patch_cck_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32, i32 }

@E2P_PHY_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"patching value %x\0A\00", align 1
@ZD_CR47 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*)* @patch_cck_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cck_gain(%struct.zd_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  %6 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %7 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %12 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %11, i32 0, i32 1
  %13 = call i32 @zd_rf_should_patch_cck_gain(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %39

16:                                               ; preds = %10
  %17 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %18 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %17, i32 0, i32 0
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = call i32 @ZD_ASSERT(i32 %19)
  %21 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %22 = load i32, i32* @E2P_PHY_REG, align 4
  %23 = call i32 @zd_ioread32_locked(%struct.zd_chip* %21, i32* %5, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %30 = call i32 @zd_chip_dev(%struct.zd_chip* %29)
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @dev_dbg_f(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 255
  %37 = load i32, i32* @ZD_CR47, align 4
  %38 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %34, i32 %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %28, %26, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @zd_rf_should_patch_cck_gain(i32*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_ioread32_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite16_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
