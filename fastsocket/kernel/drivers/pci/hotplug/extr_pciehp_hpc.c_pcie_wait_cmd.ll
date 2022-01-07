; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32 }

@pciehp_poll_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Command not completed in 1000 msec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*, i32)* @pcie_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_wait_cmd(%struct.controller* %0, i32 %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @pciehp_poll_mode, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 2500, i32 1000
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.controller*, %struct.controller** %3, align 8
  %18 = call i32 @pcie_poll_cmd(%struct.controller* %17)
  store i32 %18, i32* %7, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.controller*, %struct.controller** %3, align 8
  %21 = getelementptr inbounds %struct.controller, %struct.controller* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.controller*, %struct.controller** %3, align 8
  %24 = getelementptr inbounds %struct.controller, %struct.controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @wait_event_timeout(i32 %22, i32 %28, i64 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.controller*, %struct.controller** %3, align 8
  %36 = call i32 @ctrl_dbg(%struct.controller* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pcie_poll_cmd(%struct.controller*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
