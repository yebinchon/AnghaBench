; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_add_to_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list_x = type { %struct.resource_list_x*, i32, i32, i32, i32, %struct.pci_dev*, %struct.resource* }
%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"add_to_list: kmalloc() failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_list_x*, %struct.pci_dev*, %struct.resource*, i32)* @add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_list(%struct.resource_list_x* %0, %struct.pci_dev* %1, %struct.resource* %2, i32 %3) #0 {
  %5 = alloca %struct.resource_list_x*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource_list_x*, align 8
  %10 = alloca %struct.resource_list_x*, align 8
  %11 = alloca %struct.resource_list_x*, align 8
  store %struct.resource_list_x* %0, %struct.resource_list_x** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.resource_list_x*, %struct.resource_list_x** %5, align 8
  store %struct.resource_list_x* %12, %struct.resource_list_x** %9, align 8
  %13 = load %struct.resource_list_x*, %struct.resource_list_x** %9, align 8
  %14 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %13, i32 0, i32 0
  %15 = load %struct.resource_list_x*, %struct.resource_list_x** %14, align 8
  store %struct.resource_list_x* %15, %struct.resource_list_x** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.resource_list_x* @kmalloc(i32 40, i32 %16)
  store %struct.resource_list_x* %17, %struct.resource_list_x** %11, align 8
  %18 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %19 = icmp ne %struct.resource_list_x* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %53

22:                                               ; preds = %4
  %23 = load %struct.resource_list_x*, %struct.resource_list_x** %10, align 8
  %24 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %25 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %24, i32 0, i32 0
  store %struct.resource_list_x* %23, %struct.resource_list_x** %25, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %28 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %27, i32 0, i32 6
  store %struct.resource* %26, %struct.resource** %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %31 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %30, i32 0, i32 5
  store %struct.pci_dev* %29, %struct.pci_dev** %31, align 8
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %36 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %41 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %46 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %49 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.resource_list_x*, %struct.resource_list_x** %11, align 8
  %51 = load %struct.resource_list_x*, %struct.resource_list_x** %9, align 8
  %52 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %51, i32 0, i32 0
  store %struct.resource_list_x* %50, %struct.resource_list_x** %52, align 8
  br label %53

53:                                               ; preds = %22, %20
  ret void
}

declare dso_local %struct.resource_list_x* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
