; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c_pci_add_dynid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c_pci_add_dynid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dynid = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_add_dynid(%struct.pci_driver* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_driver*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.pci_dynid*, align 8
  %19 = alloca i32, align 4
  store %struct.pci_driver* %0, %struct.pci_driver** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pci_dynid* @kzalloc(i32 40, i32 %20)
  store %struct.pci_dynid* %21, %struct.pci_dynid** %18, align 8
  %22 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %23 = icmp ne %struct.pci_dynid* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %80

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %30 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %34 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %38 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %42 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %46 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %50 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %17, align 8
  %53 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %54 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  store i64 %52, i64* %55, align 8
  %56 = load %struct.pci_driver*, %struct.pci_driver** %10, align 8
  %57 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.pci_dynid*, %struct.pci_dynid** %18, align 8
  %61 = getelementptr inbounds %struct.pci_dynid, %struct.pci_dynid* %60, i32 0, i32 0
  %62 = load %struct.pci_driver*, %struct.pci_driver** %10, align 8
  %63 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %61, i32* %64)
  %66 = load %struct.pci_driver*, %struct.pci_driver** %10, align 8
  %67 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.pci_driver*, %struct.pci_driver** %10, align 8
  %71 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %70, i32 0, i32 0
  %72 = call i32 @get_driver(i32* %71)
  %73 = load %struct.pci_driver*, %struct.pci_driver** %10, align 8
  %74 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %73, i32 0, i32 0
  %75 = call i32 @driver_attach(i32* %74)
  store i32 %75, i32* %19, align 4
  %76 = load %struct.pci_driver*, %struct.pci_driver** %10, align 8
  %77 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %76, i32 0, i32 0
  %78 = call i32 @put_driver(i32* %77)
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %27, %24
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.pci_dynid* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @get_driver(i32*) #1

declare dso_local i32 @driver_attach(i32*) #1

declare dso_local i32 @put_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
