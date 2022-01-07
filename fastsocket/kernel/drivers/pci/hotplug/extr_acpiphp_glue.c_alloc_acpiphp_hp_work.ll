; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_alloc_acpiphp_hp_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_alloc_acpiphp_hp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type opaque
%struct.acpiphp_hp_work = type { i32, i8*, i32, i32 }
%struct.work_struct.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@kacpi_hotplug_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, void (%struct.work_struct*)*)* @alloc_acpiphp_hp_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_acpiphp_hp_work(i32 %0, i32 %1, i8* %2, void (%struct.work_struct*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca void (%struct.work_struct*)*, align 8
  %9 = alloca %struct.acpiphp_hp_work*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store void (%struct.work_struct*)* %3, void (%struct.work_struct*)** %8, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acpiphp_hp_work* @kmalloc(i32 24, i32 %11)
  store %struct.acpiphp_hp_work* %12, %struct.acpiphp_hp_work** %9, align 8
  %13 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %14 = icmp ne %struct.acpiphp_hp_work* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %40

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %19 = getelementptr inbounds %struct.acpiphp_hp_work, %struct.acpiphp_hp_work* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %22 = getelementptr inbounds %struct.acpiphp_hp_work, %struct.acpiphp_hp_work* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %25 = getelementptr inbounds %struct.acpiphp_hp_work, %struct.acpiphp_hp_work* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %27 = getelementptr inbounds %struct.acpiphp_hp_work, %struct.acpiphp_hp_work* %26, i32 0, i32 0
  %28 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %8, align 8
  %29 = bitcast void (%struct.work_struct*)* %28 to void (%struct.work_struct.0*)*
  %30 = call i32 @INIT_WORK(i32* %27, void (%struct.work_struct.0*)* %29)
  %31 = load i32, i32* @kacpi_hotplug_wq, align 4
  %32 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %33 = getelementptr inbounds %struct.acpiphp_hp_work, %struct.acpiphp_hp_work* %32, i32 0, i32 0
  %34 = call i32 @queue_work(i32 %31, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %16
  %38 = load %struct.acpiphp_hp_work*, %struct.acpiphp_hp_work** %9, align 8
  %39 = call i32 @kfree(%struct.acpiphp_hp_work* %38)
  br label %40

40:                                               ; preds = %15, %37, %16
  ret void
}

declare dso_local %struct.acpiphp_hp_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.acpiphp_hp_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
