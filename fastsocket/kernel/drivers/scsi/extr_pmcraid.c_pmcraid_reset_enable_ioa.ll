; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_enable_ioa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_enable_ioa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PMCRAID_PCI_INTERRUPTS = common dso_local global i32 0, align 4
@INTRS_TRANSITION_TO_OPERATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*)* @pmcraid_reset_enable_ioa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_reset_enable_ioa(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %3, align 8
  %5 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %6 = call i32 @pmcraid_reinit_buffers(%struct.pmcraid_instance* %5)
  %7 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %8 = call i32 @pmcraid_read_interrupts(%struct.pmcraid_instance* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %10 = load i32, i32* @PMCRAID_PCI_INTERRUPTS, align 4
  %11 = call i32 @pmcraid_enable_interrupts(%struct.pmcraid_instance* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %18 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %23 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %24 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iowrite32(i32 %22, i32 %26)
  %28 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %29 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %30 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iowrite32(i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %21, %16
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @pmcraid_reinit_buffers(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_read_interrupts(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_enable_interrupts(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
