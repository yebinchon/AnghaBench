; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_core_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_core_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@devlist = common dso_local global i32 0, align 4
@cx88_devcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_core_put(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %6 = call i32 @pci_resource_start(%struct.pci_dev* %5, i32 0)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pci_resource_len(%struct.pci_dev* %7, i32 0)
  %9 = call i32 @release_mem_region(i32 %6, i32 %8)
  %10 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 6
  %12 = call i32 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %53

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @devlist)
  %17 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %18 = call i32 @cx88_ir_fini(%struct.cx88_core* %17)
  %19 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %20 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %25 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %30 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @i2c_unregister_device(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %35 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %34, i32 0, i32 4
  %36 = call i32 @i2c_del_adapter(i32* %35)
  br label %37

37:                                               ; preds = %33, %15
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 3
  %40 = call i32 @list_del(i32* %39)
  %41 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %42 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iounmap(i32 %43)
  %45 = load i32, i32* @cx88_devcount, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @cx88_devcount, align 4
  %47 = call i32 @mutex_unlock(i32* @devlist)
  %48 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %49 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %48, i32 0, i32 1
  %50 = call i32 @v4l2_device_unregister(i32* %49)
  %51 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %52 = call i32 @kfree(%struct.cx88_core* %51)
  br label %53

53:                                               ; preds = %37, %14
  ret void
}

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx88_ir_fini(%struct.cx88_core*) #1

declare dso_local i32 @i2c_unregister_device(i64) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.cx88_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
