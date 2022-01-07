; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_enable_transmission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_enable_transmission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"enable transmission\0A\00", align 1
@B3D_REG_WAND_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot start transmission without wand\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"not a bus master, force-enabling\0A\00", align 1
@B3D_REG_HW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b3dfg_dev*)* @enable_transmission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_transmission(%struct.b3dfg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b3dfg_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %3, align 8
  %7 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %8 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %7, i32 0, i32 6
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %14 = load i32, i32* @B3D_REG_WAND_STS, align 4
  %15 = call i32 @b3dfg_read32(%struct.b3dfg_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %24 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* @PCI_COMMAND, align 4
  %27 = call i32 @pci_read_config_word(%struct.TYPE_3__* %25, i32 %26, i32* %4)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %22
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %36 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @PCI_COMMAND, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @pci_write_config_word(%struct.TYPE_3__* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %22
  %44 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %45 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %44, i32 0, i32 2
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %49 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %54 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %53, i32 0, i32 2
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %79

57:                                               ; preds = %43
  %58 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %59 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %58, i32 0, i32 4
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %62 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %64 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %63, i32 0, i32 4
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %67 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %69 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %71 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %73 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %3, align 8
  %77 = load i32, i32* @B3D_REG_HW_CTRL, align 4
  %78 = call i32 @b3dfg_write32(%struct.b3dfg_dev* %76, i32 %77, i32 3)
  br label %79

79:                                               ; preds = %57, %52
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @b3dfg_read32(%struct.b3dfg_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @b3dfg_write32(%struct.b3dfg_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
