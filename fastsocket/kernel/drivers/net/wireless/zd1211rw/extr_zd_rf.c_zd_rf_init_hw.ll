; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf.c_zd_rf_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf.c_zd_rf_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32, i32 (%struct.zd_rf*)* }
%struct.zd_chip = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"RF %s %#x is not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rf_init_hw(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %10 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %9)
  store %struct.zd_chip* %10, %struct.zd_chip** %8, align 8
  %11 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %12 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %11, i32 0, i32 0
  %13 = call i32 @mutex_is_locked(i32* %12)
  %14 = call i32 @ZD_ASSERT(i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 132, label %19
    i32 133, label %19
    i32 131, label %22
    i32 130, label %25
    i32 128, label %25
  ]

16:                                               ; preds = %2
  %17 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %18 = call i32 @zd_rf_init_rf2959(%struct.zd_rf* %17)
  store i32 %18, i32* %6, align 4
  br label %39

19:                                               ; preds = %2, %2
  %20 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %21 = call i32 @zd_rf_init_al2230(%struct.zd_rf* %20)
  store i32 %21, i32* %6, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %24 = call i32 @zd_rf_init_al7230b(%struct.zd_rf* %23)
  store i32 %24, i32* %6, align 4
  br label %39

25:                                               ; preds = %2, %2
  %26 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %27 = call i32 @zd_rf_init_uw2453(%struct.zd_rf* %26)
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %30 = call i32 @zd_chip_dev(%struct.zd_chip* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @zd_rf_name(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %36 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %25, %22, %19, %16
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %47 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %49 = call i32 @zd_chip_lock_phy_regs(%struct.zd_chip* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %44
  %55 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %56 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %55, i32 0, i32 1
  %57 = load i32 (%struct.zd_rf*)*, i32 (%struct.zd_rf*)** %56, align 8
  %58 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %59 = call i32 %57(%struct.zd_rf* %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %61 = call i32 @zd_chip_unlock_phy_regs(%struct.zd_chip* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %52, %42, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_rf_init_rf2959(%struct.zd_rf*) #1

declare dso_local i32 @zd_rf_init_al2230(%struct.zd_rf*) #1

declare dso_local i32 @zd_rf_init_al7230b(%struct.zd_rf*) #1

declare dso_local i32 @zd_rf_init_uw2453(%struct.zd_rf*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_rf_name(i32) #1

declare dso_local i32 @zd_chip_lock_phy_regs(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_unlock_phy_regs(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
