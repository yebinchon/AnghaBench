; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_virtfn_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_virtfn_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_6__, %struct.pci_sriov* }
%struct.TYPE_6__ = type { i32 }
%struct.pci_sriov = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_bus = type { i32 }

@VIRTFN_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtfn%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"physfn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32)* @virtfn_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtfn_remove(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_bus*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.pci_sriov*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @VIRTFN_ID_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load %struct.pci_sriov*, %struct.pci_sriov** %18, align 8
  store %struct.pci_sriov* %19, %struct.pci_sriov** %11, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pci_domain_nr(i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @virtfn_bus(%struct.pci_dev* %24, i32 %25)
  %27 = call %struct.pci_bus* @pci_find_bus(i32 %23, i32 %26)
  store %struct.pci_bus* %27, %struct.pci_bus** %9, align 8
  %28 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %29 = icmp ne %struct.pci_bus* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %87

31:                                               ; preds = %3
  %32 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @virtfn_devfn(%struct.pci_dev* %33, i32 %34)
  %36 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %32, i32 %35)
  store %struct.pci_dev* %36, %struct.pci_dev** %10, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %87

40:                                               ; preds = %31
  %41 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %42 = call i32 @pci_dev_put(%struct.pci_dev* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = call i32 @device_release_driver(%struct.TYPE_6__* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %50 = call i32 @__pci_reset_function(%struct.pci_dev* %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_remove_link(i32* %56, i8* %16)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @sysfs_remove_link(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.pci_sriov*, %struct.pci_sriov** %11, align 8
  %63 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %70 = call i32 @pci_remove_bus_device(%struct.pci_dev* %69)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @virtfn_bus(%struct.pci_dev* %74, i32 %75)
  %77 = call i32 @virtfn_remove_bus(i32 %73, i32 %76)
  %78 = load %struct.pci_sriov*, %struct.pci_sriov** %11, align 8
  %79 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = call i32 @pci_dev_put(%struct.pci_dev* %85)
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %51, %39, %30
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %12, align 4
  switch i32 %89, label %91 [
    i32 0, label %90
    i32 1, label %90
  ]

90:                                               ; preds = %87, %87
  ret void

91:                                               ; preds = %87
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #2

declare dso_local i32 @pci_domain_nr(i32) #2

declare dso_local i32 @virtfn_bus(%struct.pci_dev*, i32) #2

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #2

declare dso_local i32 @virtfn_devfn(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #2

declare dso_local i32 @device_release_driver(%struct.TYPE_6__*) #2

declare dso_local i32 @__pci_reset_function(%struct.pci_dev*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @pci_remove_bus_device(%struct.pci_dev*) #2

declare dso_local i32 @virtfn_remove_bus(i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
