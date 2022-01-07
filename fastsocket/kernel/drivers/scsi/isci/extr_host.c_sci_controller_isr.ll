; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SMU_ISR_COMPLETION = common dso_local global i32 0, align 4
@IHOST_IRQ_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*)* @sci_controller_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_controller_isr(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %4 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %5 = call i64 @sci_controller_completion_queue_has_entries(%struct.isci_host* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load i32, i32* @SMU_ISR_COMPLETION, align 4
  %10 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @writel(i32 %9, i32* %13)
  %15 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %16 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32, i32* @IHOST_IRQ_ENABLED, align 4
  %19 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %20 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %8
  %24 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %25 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @writel(i32 -16777216, i32* %27)
  %29 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %30 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @writel(i32 0, i32* %32)
  br label %34

34:                                               ; preds = %23, %8
  %35 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %36 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @sci_controller_completion_queue_has_entries(%struct.isci_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
