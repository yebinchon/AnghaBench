; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_budget_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_budget_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.budget* }
%struct.budget = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.budget* }
%struct.saa7146_pci_extension_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dev:%p, info:%p, budget:%p\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"==> failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)* @budget_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @budget_attach(%struct.saa7146_dev* %0, %struct.saa7146_pci_extension_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.budget*, align 8
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_pci_extension_data* %1, %struct.saa7146_pci_extension_data** %5, align 8
  store %struct.budget* null, %struct.budget** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.budget* @kmalloc(i32 8, i32 %8)
  store %struct.budget* %9, %struct.budget** %6, align 8
  %10 = load %struct.budget*, %struct.budget** %6, align 8
  %11 = icmp eq %struct.budget* null, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %17 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %18 = load %struct.budget*, %struct.budget** %6, align 8
  %19 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %16, %struct.saa7146_pci_extension_data* %17, %struct.budget* %18)
  %20 = load %struct.budget*, %struct.budget** %6, align 8
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %22 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %21, i32 0, i32 0
  store %struct.budget* %20, %struct.budget** %22, align 8
  %23 = load %struct.budget*, %struct.budget** %6, align 8
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %25 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = load i32, i32* @adapter_nr, align 4
  %28 = call i32 @ttpci_budget_init(%struct.budget* %23, %struct.saa7146_dev* %24, %struct.saa7146_pci_extension_data* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.budget*, %struct.budget** %6, align 8
  %34 = call i32 @kfree(%struct.budget* %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %15
  %37 = load %struct.budget*, %struct.budget** %6, align 8
  %38 = load %struct.budget*, %struct.budget** %6, align 8
  %39 = getelementptr inbounds %struct.budget, %struct.budget* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.budget* %37, %struct.budget** %40, align 8
  %41 = load %struct.budget*, %struct.budget** %6, align 8
  %42 = call i32 @frontend_init(%struct.budget* %41)
  %43 = load %struct.budget*, %struct.budget** %6, align 8
  %44 = call i32 @ttpci_budget_init_hooks(%struct.budget* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %31, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.budget* @kmalloc(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.saa7146_dev*, %struct.saa7146_pci_extension_data*, %struct.budget*) #1

declare dso_local i32 @ttpci_budget_init(%struct.budget*, %struct.saa7146_dev*, %struct.saa7146_pci_extension_data*, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @kfree(%struct.budget*) #1

declare dso_local i32 @frontend_init(%struct.budget*) #1

declare dso_local i32 @ttpci_budget_init_hooks(%struct.budget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
