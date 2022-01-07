; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_lpc_ich.c_lpc_ich_restore_config_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_lpc_ich.c_lpc_ich_restore_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.lpc_ich_priv = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @lpc_ich_restore_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_ich_restore_config_space(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.lpc_ich_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.lpc_ich_priv* %5, %struct.lpc_ich_priv** %3, align 8
  %6 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %7 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %14 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %18 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_write_config_byte(%struct.pci_dev* %12, i32 %16, i32 %20)
  %22 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %23 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %27 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %34 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %38 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_write_config_byte(%struct.pci_dev* %32, i32 %36, i32 %40)
  %42 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %43 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  br label %45

45:                                               ; preds = %31, %25
  ret void
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
