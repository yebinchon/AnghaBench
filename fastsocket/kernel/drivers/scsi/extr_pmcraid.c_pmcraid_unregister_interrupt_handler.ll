; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_unregister_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_unregister_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_unregister_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_unregister_interrupt_handler(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %26, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %7 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %4
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %20 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = call i32 @free_irq(i32 %18, %struct.TYPE_2__* %24)
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %4

29:                                               ; preds = %4
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %31 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %36 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_disable_msix(i32 %37)
  %39 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %40 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @pci_disable_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
