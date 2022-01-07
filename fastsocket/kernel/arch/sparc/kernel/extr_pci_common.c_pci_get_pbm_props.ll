; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_pci_get_pbm_props.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_pci_get_pbm_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ino-bitmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_get_pbm_props(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i64*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %4 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %5 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64* @of_get_property(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64* %9, i64** %3, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %14 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64* @of_get_property(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64* %25, i64** %3, align 8
  %26 = load i64*, i64** %3, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 %31, 32
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 %35, 0
  %37 = or i64 %32, %36
  %38 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %39 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64* @of_get_property(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
