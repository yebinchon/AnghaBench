; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_eeh_frozen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_eeh_frozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_cardinfo = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"IBM Flash Adapter PCI: preparing for slot reset.\0A\00", align 1
@STATUS_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@COMMAND_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @rsxx_eeh_frozen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_eeh_frozen(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.rsxx_cardinfo* %8, %struct.rsxx_cardinfo** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_warn(i32* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %15 = call i32 @rsxx_mask_interrupts(%struct.rsxx_cardinfo* %14)
  %16 = call i32 (...) @wmb()
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_disable_device(%struct.pci_dev* %17)
  %19 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %20 = call i32 @rsxx_eeh_save_issued_dmas(%struct.rsxx_cardinfo* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %109

25:                                               ; preds = %1
  %26 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %27 = call i32 @rsxx_eeh_save_issued_creg(%struct.rsxx_cardinfo* %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %105, %25
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %31 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %28
  %35 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %36 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %34
  %46 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %47 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %50 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %51 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %60 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pci_free_consistent(i32 %48, i32 %49, i64 %58, i32 %67)
  br label %69

69:                                               ; preds = %45, %34
  %70 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %71 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %69
  %81 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %82 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %85 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %86 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %95 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pci_free_consistent(i32 %83, i32 %84, i64 %93, i32 %102)
  br label %104

104:                                              ; preds = %80, %69
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %28

108:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %23
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rsxx_mask_interrupts(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @rsxx_eeh_save_issued_dmas(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_eeh_save_issued_creg(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
