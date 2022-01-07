; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8111_edac.c_amd8111_dev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8111_edac.c_amd8111_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8111_dev_info = type { %struct.TYPE_3__*, i32 (%struct.amd8111_dev_info*)*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i64 }

@amd8111_devices = common dso_local global %struct.amd8111_dev_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @amd8111_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111_dev_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.amd8111_dev_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** @amd8111_devices, align 8
  store %struct.amd8111_dev_info* %4, %struct.amd8111_dev_info** %3, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %7 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %12 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %25

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %23, i32 1
  store %struct.amd8111_dev_info* %24, %struct.amd8111_dev_info** %3, align 8
  br label %5

25:                                               ; preds = %20, %5
  %26 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %27 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %63

31:                                               ; preds = %25
  %32 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %33 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %38 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @edac_device_del_device(i32 %41)
  %43 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %44 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @edac_device_free_ctl_info(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %36, %31
  %48 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %49 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %48, i32 0, i32 1
  %50 = load i32 (%struct.amd8111_dev_info*)*, i32 (%struct.amd8111_dev_info*)** %49, align 8
  %51 = icmp ne i32 (%struct.amd8111_dev_info*)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %54 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %53, i32 0, i32 1
  %55 = load i32 (%struct.amd8111_dev_info*)*, i32 (%struct.amd8111_dev_info*)** %54, align 8
  %56 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %57 = call i32 %55(%struct.amd8111_dev_info* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.amd8111_dev_info*, %struct.amd8111_dev_info** %3, align 8
  %60 = getelementptr inbounds %struct.amd8111_dev_info, %struct.amd8111_dev_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @pci_dev_put(%struct.TYPE_3__* %61)
  br label %63

63:                                               ; preds = %58, %30
  ret void
}

declare dso_local i32 @edac_device_del_device(i32) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
