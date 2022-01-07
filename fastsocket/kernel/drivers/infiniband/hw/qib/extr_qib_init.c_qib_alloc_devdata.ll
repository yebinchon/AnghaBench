; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_alloc_devdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_alloc_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@qib_unit_table = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qib_devs_lock = common dso_local global i32 0, align 4
@qib_dev_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not allocate unit ID: error %d\0A\00", align 1
@qib_cpulist_count = common dso_local global i64 0, align 8
@qib_cpulist = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"Could not alloc cpulist info, cpu affinity might be wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_devdata* @qib_alloc_devdata(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @idr_pre_get(i32* @qib_unit_table, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.qib_devdata* @ERR_PTR(i32 %14)
  store %struct.qib_devdata* %15, %struct.qib_devdata** %6, align 8
  br label %80

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = add i64 12, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64 @ib_alloc_device(i32 %19)
  %21 = inttoptr i64 %20 to %struct.qib_devdata*
  store %struct.qib_devdata* %21, %struct.qib_devdata** %6, align 8
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %23 = icmp ne %struct.qib_devdata* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.qib_devdata* @ERR_PTR(i32 %26)
  store %struct.qib_devdata* %27, %struct.qib_devdata** %6, align 8
  br label %80

28:                                               ; preds = %16
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @qib_devs_lock, i64 %29)
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 2
  %34 = call i32 @idr_get_new(i32* @qib_unit_table, %struct.qib_devdata* %31, i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %39, i32* @qib_dev_list)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @qib_devs_lock, i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 (i32*, i8*, ...) @qib_early_err(i32* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @ib_dealloc_device(i32* %54)
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.qib_devdata* @ERR_PTR(i32 %56)
  store %struct.qib_devdata* %57, %struct.qib_devdata** %6, align 8
  br label %80

58:                                               ; preds = %41
  %59 = load i64, i64* @qib_cpulist_count, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %58
  %62 = call i64 (...) @num_online_cpus()
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @BITS_TO_LONGS(i64 %63)
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i64 @kzalloc(i32 %67, i32 %68)
  store i64 %69, i64* @qib_cpulist, align 8
  %70 = load i64, i64* @qib_cpulist, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* @qib_cpulist_count, align 8
  br label %78

74:                                               ; preds = %61
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @qib_early_err(i32* %76, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %72
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %46, %24, %12
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  ret %struct.qib_devdata* %81
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local %struct.qib_devdata* @ERR_PTR(i32) #1

declare dso_local i64 @ib_alloc_device(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_get_new(i32*, %struct.qib_devdata*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_early_err(i32*, i8*, ...) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
