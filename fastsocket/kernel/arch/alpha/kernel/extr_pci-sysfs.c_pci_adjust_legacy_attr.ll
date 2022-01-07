; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_pci_adjust_legacy_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_pci_adjust_legacy_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.pci_controller* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.pci_controller = type { i32 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"legacy_mem_sparse\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"legacy_io_sparse\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_adjust_legacy_attr(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 2
  %8 = load %struct.pci_controller*, %struct.pci_controller** %7, align 8
  store %struct.pci_controller* %8, %struct.pci_controller** %5, align 8
  %9 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @has_sparse(%struct.pci_controller* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %43

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @pci_mmap_mem, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 5
  store i32 %29, i32* %27, align 8
  br label %42

30:                                               ; preds = %14
  %31 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 5
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %30, %18
  br label %43

43:                                               ; preds = %42, %13
  ret void
}

declare dso_local i32 @has_sparse(%struct.pci_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
