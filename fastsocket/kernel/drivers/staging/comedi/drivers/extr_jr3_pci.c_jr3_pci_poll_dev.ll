; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_poll_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_poll_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.TYPE_3__*, %struct.jr3_pci_dev_private* }
%struct.TYPE_3__ = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i64, i8* }
%struct.jr3_pci_dev_private = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.poll_delay_t = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jr3_pci_poll_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jr3_pci_poll_dev(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.jr3_pci_dev_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jr3_pci_subdev_private*, align 8
  %10 = alloca %struct.poll_delay_t, align 4
  %11 = alloca %struct.poll_delay_t, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %15, align 8
  store %struct.jr3_pci_dev_private* %16, %struct.jr3_pci_dev_private** %5, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  store i32 1000, i32* %7, align 4
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %81, %1
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %5, align 8
  %25 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %22
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %35, align 8
  store %struct.jr3_pci_subdev_private* %36, %struct.jr3_pci_subdev_private** %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %9, align 8
  %39 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %28
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = call i64 @jr3_pci_poll_subdevice(%struct.TYPE_3__* %48)
  %50 = bitcast %struct.poll_delay_t* %11 to i64*
  store i64 %49, i64* %50, align 4
  %51 = bitcast %struct.poll_delay_t* %10 to i8*
  %52 = bitcast %struct.poll_delay_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  %53 = load i64, i64* @jiffies, align 8
  %54 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @msecs_to_jiffies(i32 %55)
  %57 = getelementptr i8, i8* %56, i64 %53
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %9, align 8
  %60 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %10, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @msecs_to_jiffies(i32 %63)
  %65 = getelementptr i8, i8* %64, i64 %61
  %66 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %9, align 8
  %67 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %42
  %72 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %10, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %71, %42
  br label %80

80:                                               ; preds = %79, %28
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %22

84:                                               ; preds = %22
  %85 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i64, i64* @jiffies, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i8* @msecs_to_jiffies(i32 %90)
  %92 = getelementptr i8, i8* %91, i64 %89
  %93 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %5, align 8
  %94 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %5, align 8
  %97 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %96, i32 0, i32 1
  %98 = call i32 @add_timer(%struct.TYPE_4__* %97)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @jr3_pci_poll_subdevice(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
