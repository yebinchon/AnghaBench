; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_find_device_pe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_find_device_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node* }
%struct.TYPE_2__ = type { i32 }

@EEH_MODE_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @find_device_pe(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  br label %3

3:                                                ; preds = %26, %1
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i32 0, i32 0
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  %7 = icmp ne %struct.device_node* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  %12 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %11)
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = getelementptr inbounds %struct.device_node, %struct.device_node* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  %18 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EEH_MODE_SUPPORTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %14, %8, %3
  %25 = phi i1 [ false, %8 ], [ false, %3 ], [ %23, %14 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load %struct.device_node*, %struct.device_node** %2, align 8
  %28 = getelementptr inbounds %struct.device_node, %struct.device_node* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  store %struct.device_node* %29, %struct.device_node** %2, align 8
  br label %3

30:                                               ; preds = %24
  %31 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %31
}

declare dso_local %struct.TYPE_2__* @PCI_DN(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
