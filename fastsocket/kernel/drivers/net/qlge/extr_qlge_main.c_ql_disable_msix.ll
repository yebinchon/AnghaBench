; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_disable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_disable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32* }

@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@QL_MSI_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_disable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_disable_msix(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %3 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %4 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_disable_msix(i32 %11)
  %13 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  br label %39

23:                                               ; preds = %1
  %24 = load i32, i32* @QL_MSI_ENABLED, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_disable_msi(i32 %32)
  %34 = load i32, i32* @QL_MSI_ENABLED, align 4
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %29, %23
  br label %39

39:                                               ; preds = %38, %8
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_msix(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
