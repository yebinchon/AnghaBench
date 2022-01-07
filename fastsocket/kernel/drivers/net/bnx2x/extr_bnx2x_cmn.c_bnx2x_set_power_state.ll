; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"No power capability. Breaking.\0A\00", align 1
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_STATUS = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't support state = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_power_state(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

13:                                               ; preds = %2
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_PM_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pci_read_config_word(%struct.TYPE_3__* %16, i64 %21, i32* %6)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %86 [
    i32 129, label %24
    i32 128, label %47
  ]

24:                                               ; preds = %13
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_PM_CTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @PCI_PM_CTRL_PME_STATUS, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @pci_write_config_word(%struct.TYPE_3__* %27, i64 %32, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = call i32 @msleep(i32 20)
  br label %46

46:                                               ; preds = %44, %24
  br label %95

47:                                               ; preds = %13
  %48 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @atomic_read(i32* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %96

55:                                               ; preds = %47
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = call i32 @CHIP_REV_IS_SLOW(%struct.bnx2x* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %96

60:                                               ; preds = %55
  %61 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, 3
  store i32 %66, i32* %6, align 4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %68 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @PCI_PM_CTRL_PME_ENABLE, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %60
  %76 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCI_PM_CTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @pci_write_config_word(%struct.TYPE_3__* %78, i64 %83, i32 %84)
  br label %95

86:                                               ; preds = %13
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %75, %46
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %86, %59, %54, %11
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
