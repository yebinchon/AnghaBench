; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_slot_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_slot_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i64, %struct.pci_func* }

@cpqhp_slot_list = common dso_local global %struct.pci_func** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_func* @cpqhp_slot_find(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_func*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %10, i64 %11
  %13 = load %struct.pci_func*, %struct.pci_func** %12, align 8
  store %struct.pci_func* %13, %struct.pci_func** %9, align 8
  %14 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %15 = icmp eq %struct.pci_func* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %18 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %3
  %26 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  store %struct.pci_func* %26, %struct.pci_func** %4, align 8
  br label %63

27:                                               ; preds = %22, %16
  %28 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %29 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %61, %36
  %38 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 1
  %40 = load %struct.pci_func*, %struct.pci_func** %39, align 8
  %41 = icmp ne %struct.pci_func* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %44 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %43, i32 0, i32 1
  %45 = load %struct.pci_func*, %struct.pci_func** %44, align 8
  store %struct.pci_func* %45, %struct.pci_func** %9, align 8
  %46 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %47 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  store %struct.pci_func* %60, %struct.pci_func** %4, align 8
  br label %63

61:                                               ; preds = %54
  br label %37

62:                                               ; preds = %37
  store %struct.pci_func* null, %struct.pci_func** %4, align 8
  br label %63

63:                                               ; preds = %62, %59, %25
  %64 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  ret %struct.pci_func* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
