; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_suspend_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_suspend_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx8802_dev = type { %struct.TYPE_4__, %struct.cx88_core*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.cx88_core = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: suspend mpeg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @cx8802_suspend_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_suspend_common(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx8802_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.cx8802_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.cx8802_dev* %8, %struct.cx8802_dev** %5, align 8
  %9 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %9, i32 0, i32 1
  %11 = load %struct.cx88_core*, %struct.cx88_core** %10, align 8
  store %struct.cx88_core* %11, %struct.cx88_core** %6, align 8
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %13 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %27 = call i32 @cx8802_stop_dma(%struct.cx8802_dev* %26)
  %28 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %29 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @del_timer(i32* %30)
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %34 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %37 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %36, i32 0, i32 1
  %38 = load %struct.cx88_core*, %struct.cx88_core** %37, align 8
  %39 = call i32 @cx88_shutdown(%struct.cx88_core* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_save_state(%struct.pci_dev* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pci_choose_state(%struct.pci_dev* %43, i32 %44)
  %46 = call i64 @pci_set_power_state(%struct.pci_dev* %42, i32 %45)
  %47 = icmp ne i64 0, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %32
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_disable_device(%struct.pci_dev* %49)
  %51 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %52 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %32
  ret i32 0
}

declare dso_local %struct.cx8802_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @cx8802_stop_dma(%struct.cx8802_dev*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cx88_shutdown(%struct.cx88_core*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
