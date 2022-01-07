; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_2__*, i32, %struct.jr3_pci_dev_private* }
%struct.TYPE_2__ = type { i32 }
%struct.jr3_pci_dev_private = type { i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"comedi%d: jr3_pci: remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @jr3_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jr3_pci_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jr3_pci_dev_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 2
  %7 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %6, align 8
  store %struct.jr3_pci_dev_private* %7, %struct.jr3_pci_dev_private** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %13 = icmp ne %struct.jr3_pci_dev_private* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %1
  %15 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %16 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %15, i32 0, i32 4
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %26 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %23

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %14
  %44 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %45 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %50 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @iounmap(i8* %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %56 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %61 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @comedi_pci_disable(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %66 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %71 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @pci_dev_put(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %1
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @comedi_pci_disable(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
