; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_set_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_set_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to initialize MSI-X interrupts.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_set_interrupt_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_set_interrupt_capability(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.TYPE_5__* @kcalloc(i32 3, i32 4, i32 %7)
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 1
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %20, i32* %27, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @pci_enable_msix(%struct.TYPE_4__* %34, %struct.TYPE_5__* %37, i32 3)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %1
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %49 = call i32 @igbvf_reset_interrupt_capability(%struct.igbvf_adapter* %48)
  br label %50

50:                                               ; preds = %42, %39
  ret void
}

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix(%struct.TYPE_4__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @igbvf_reset_interrupt_capability(%struct.igbvf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
