; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_slot_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_slot_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i32, %struct.pci_func* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cpqhp_slot_list = common dso_local global %struct.pci_func** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_func* @cpqhp_slot_create(i64 %0) #0 {
  %2 = alloca %struct.pci_func*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca %struct.pci_func*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.pci_func* @kzalloc(i32 16, i32 %6)
  store %struct.pci_func* %7, %struct.pci_func** %4, align 8
  %8 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %9 = icmp eq %struct.pci_func* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  store %struct.pci_func* %11, %struct.pci_func** %2, align 8
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %14 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %13, i32 0, i32 1
  store %struct.pci_func* null, %struct.pci_func** %14, align 8
  %15 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %16 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %17, i64 %18
  %20 = load %struct.pci_func*, %struct.pci_func** %19, align 8
  %21 = icmp eq %struct.pci_func* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %24 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %24, i64 %25
  store %struct.pci_func* %23, %struct.pci_func** %26, align 8
  br label %45

27:                                               ; preds = %12
  %28 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %28, i64 %29
  %31 = load %struct.pci_func*, %struct.pci_func** %30, align 8
  store %struct.pci_func* %31, %struct.pci_func** %5, align 8
  br label %32

32:                                               ; preds = %37, %27
  %33 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %34 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %33, i32 0, i32 1
  %35 = load %struct.pci_func*, %struct.pci_func** %34, align 8
  %36 = icmp ne %struct.pci_func* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 1
  %40 = load %struct.pci_func*, %struct.pci_func** %39, align 8
  store %struct.pci_func* %40, %struct.pci_func** %5, align 8
  br label %32

41:                                               ; preds = %32
  %42 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %43 = load %struct.pci_func*, %struct.pci_func** %5, align 8
  %44 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %43, i32 0, i32 1
  store %struct.pci_func* %42, %struct.pci_func** %44, align 8
  br label %45

45:                                               ; preds = %41, %22
  %46 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  store %struct.pci_func* %46, %struct.pci_func** %2, align 8
  br label %47

47:                                               ; preds = %45, %10
  %48 = load %struct.pci_func*, %struct.pci_func** %2, align 8
  ret %struct.pci_func* %48
}

declare dso_local %struct.pci_func* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
