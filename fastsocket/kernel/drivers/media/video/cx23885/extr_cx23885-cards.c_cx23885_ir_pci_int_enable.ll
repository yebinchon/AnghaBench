; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_ir_pci_int_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_ir_pci_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, i32 }

@PCI_MSK_IR = common dso_local global i32 0, align 4
@PCI_MSK_AV_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_ir_pci_int_enable(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %3 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %26 [
    i32 129, label %6
    i32 130, label %6
    i32 128, label %16
    i32 131, label %16
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %13 = load i32, i32* @PCI_MSK_IR, align 4
  %14 = call i32 @cx23885_irq_add_enable(%struct.cx23885_dev* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %6
  br label %26

16:                                               ; preds = %1, %1
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %23 = load i32, i32* @PCI_MSK_AV_CORE, align 4
  %24 = call i32 @cx23885_irq_add_enable(%struct.cx23885_dev* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %1, %25, %15
  ret void
}

declare dso_local i32 @cx23885_irq_add_enable(%struct.cx23885_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
