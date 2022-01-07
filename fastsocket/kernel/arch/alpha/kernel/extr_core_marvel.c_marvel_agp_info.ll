; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_marvel.c_marvel_agp_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_marvel.c_marvel_agp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_13__, i32*, i32*, %struct.pci_controller* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i64, i64 }
%struct.pci_controller = type { i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.io7 = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.pci_controller*, i32 }
%struct.io7_port = type { %struct.TYPE_19__* }

@IO7_AGP_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"MARVEL - using hose %d as AGP\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@marvel_agp_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @marvel_agp_info() #0 {
  %1 = alloca %struct.TYPE_20__*, align 8
  %2 = alloca %struct.pci_controller*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.io7*, align 8
  %6 = alloca %struct.pci_controller*, align 8
  %7 = alloca i32*, align 8
  store %struct.pci_controller* null, %struct.pci_controller** %2, align 8
  store %struct.io7* null, %struct.io7** %5, align 8
  br label %8

8:                                                ; preds = %39, %21, %0
  %9 = load %struct.io7*, %struct.io7** %5, align 8
  %10 = call %struct.io7* @marvel_next_io7(%struct.io7* %9)
  store %struct.io7* %10, %struct.io7** %5, align 8
  %11 = icmp ne %struct.io7* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.io7*, %struct.io7** %5, align 8
  %14 = getelementptr inbounds %struct.io7, %struct.io7* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load i64, i64* @IO7_AGP_PORT, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %8

22:                                               ; preds = %12
  %23 = load %struct.io7*, %struct.io7** %5, align 8
  %24 = getelementptr inbounds %struct.io7, %struct.io7* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i64, i64* @IO7_AGP_PORT, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.pci_controller*, %struct.pci_controller** %28, align 8
  store %struct.pci_controller* %29, %struct.pci_controller** %6, align 8
  %30 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %31 = call i32 @PCI_DEVFN(i32 5, i32 0)
  %32 = call i64 @build_conf_addr(%struct.pci_controller* %30, i32 0, i32 %31, i32 0)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  store %struct.pci_controller* %38, %struct.pci_controller** %2, align 8
  br label %40

39:                                               ; preds = %22
  br label %8

40:                                               ; preds = %37, %8
  %41 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %42 = icmp ne %struct.pci_controller* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %45 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %40
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %1, align 8
  br label %101

49:                                               ; preds = %43
  %50 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %51 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %55 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.io7_port*
  %58 = getelementptr inbounds %struct.io7_port, %struct.io7_port* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %3, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.TYPE_20__* @kmalloc(i32 64, i32 %60)
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %4, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = icmp ne %struct.TYPE_20__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %49
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %1, align 8
  br label %101

65:                                               ; preds = %49
  %66 = load %struct.pci_controller*, %struct.pci_controller** %2, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 5
  store %struct.pci_controller* %66, %struct.pci_controller** %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 3
  store i32* @marvel_agp_ops, i32** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 15, i32* %92, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %1, align 8
  br label %101

101:                                              ; preds = %65, %64, %48
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  ret %struct.TYPE_20__* %102
}

declare dso_local %struct.io7* @marvel_next_io7(%struct.io7*) #1

declare dso_local i64 @build_conf_addr(%struct.pci_controller*, i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.TYPE_20__* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
