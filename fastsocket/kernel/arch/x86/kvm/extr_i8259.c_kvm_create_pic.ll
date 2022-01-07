; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8259.c_kvm_create_pic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8259.c_kvm_create_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pic = type { i32, %struct.TYPE_2__*, %struct.kvm*, i32, %struct.kvm*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.kvm_pic* }
%struct.kvm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pic_irq_request = common dso_local global i32 0, align 4
@picdev_ops = common dso_local global i32 0, align 4
@KVM_PIO_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_pic* @kvm_create_pic(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm_pic*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_pic*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.kvm_pic* @kzalloc(i32 48, i32 %6)
  store %struct.kvm_pic* %7, %struct.kvm_pic** %4, align 8
  %8 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %9 = icmp ne %struct.kvm_pic* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.kvm_pic* null, %struct.kvm_pic** %2, align 8
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.kvm*, %struct.kvm** %3, align 8
  %16 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %16, i32 0, i32 4
  store %struct.kvm* %15, %struct.kvm** %17, align 8
  %18 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 248, i32* %22, align 8
  %23 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 222, i32* %27, align 8
  %28 = load i32, i32* @pic_irq_request, align 4
  %29 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.kvm*, %struct.kvm** %3, align 8
  %32 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %32, i32 0, i32 2
  store %struct.kvm* %31, %struct.kvm** %33, align 8
  %34 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %35 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store %struct.kvm_pic* %34, %struct.kvm_pic** %39, align 8
  %40 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %41 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store %struct.kvm_pic* %40, %struct.kvm_pic** %45, align 8
  %46 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 255, i32* %50, align 4
  %51 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 255, i32* %55, align 4
  %56 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %56, i32 0, i32 0
  %58 = call i32 @kvm_iodevice_init(i32* %57, i32* @picdev_ops)
  %59 = load %struct.kvm*, %struct.kvm** %3, align 8
  %60 = getelementptr inbounds %struct.kvm, %struct.kvm* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.kvm*, %struct.kvm** %3, align 8
  %63 = load i32, i32* @KVM_PIO_BUS, align 4
  %64 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_pic, %struct.kvm_pic* %64, i32 0, i32 0
  %66 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %62, i32 %63, i32* %65)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.kvm*, %struct.kvm** %3, align 8
  %68 = getelementptr inbounds %struct.kvm, %struct.kvm* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %11
  %73 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  %74 = call i32 @kfree(%struct.kvm_pic* %73)
  store %struct.kvm_pic* null, %struct.kvm_pic** %2, align 8
  br label %77

75:                                               ; preds = %11
  %76 = load %struct.kvm_pic*, %struct.kvm_pic** %4, align 8
  store %struct.kvm_pic* %76, %struct.kvm_pic** %2, align 8
  br label %77

77:                                               ; preds = %75, %72, %10
  %78 = load %struct.kvm_pic*, %struct.kvm_pic** %2, align 8
  ret %struct.kvm_pic* %78
}

declare dso_local %struct.kvm_pic* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_pic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
