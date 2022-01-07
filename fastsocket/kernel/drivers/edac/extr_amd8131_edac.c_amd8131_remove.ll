; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8131_edac.c_amd8131_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8131_edac.c_amd8131_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.amd8131_dev_info*)*, %struct.amd8131_dev_info* }
%struct.amd8131_dev_info = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i64 }

@amd8131_chipset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NO_BRIDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @amd8131_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8131_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.amd8131_dev_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd8131_chipset, i32 0, i32 1), align 8
  store %struct.amd8131_dev_info* %4, %struct.amd8131_dev_info** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %7 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NO_BRIDGE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %13 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %23 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %22, i32 1
  store %struct.amd8131_dev_info* %23, %struct.amd8131_dev_info** %3, align 8
  br label %5

24:                                               ; preds = %19, %5
  %25 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %26 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NO_BRIDGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %59

31:                                               ; preds = %24
  %32 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %33 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %38 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @edac_pci_del_device(i32 %41)
  %43 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %44 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @edac_pci_free_ctl_info(%struct.TYPE_3__* %45)
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32 (%struct.amd8131_dev_info*)*, i32 (%struct.amd8131_dev_info*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd8131_chipset, i32 0, i32 0), align 8
  %49 = icmp ne i32 (%struct.amd8131_dev_info*)* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32 (%struct.amd8131_dev_info*)*, i32 (%struct.amd8131_dev_info*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd8131_chipset, i32 0, i32 0), align 8
  %52 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %53 = call i32 %51(%struct.amd8131_dev_info* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.amd8131_dev_info*, %struct.amd8131_dev_info** %3, align 8
  %56 = getelementptr inbounds %struct.amd8131_dev_info, %struct.amd8131_dev_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pci_dev_put(i32 %57)
  br label %59

59:                                               ; preds = %54, %30
  ret void
}

declare dso_local i32 @edac_pci_del_device(i32) #1

declare dso_local i32 @edac_pci_free_ctl_info(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
