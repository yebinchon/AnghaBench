; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_alloc_shadow_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_alloc_shadow_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32*, i32, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Allocation of RX shadow space failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Allocation of TX shadow space failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_alloc_shadow_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_shadow_space(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %4 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 0
  %10 = call i8* @pci_alloc_consistent(i32 %6, i32 %7, i32* %9)
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @ifup, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %74

27:                                               ; preds = %1
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 @memset(i32* %30, i32 0, i32 %31)
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 5
  %39 = call i8* @pci_alloc_consistent(i32 %35, i32 %36, i32* %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @ifup, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @netif_err(%struct.ql_adapter* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %60

54:                                               ; preds = %27
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 @memset(i32* %57, i32 0, i32 %58)
  store i32 0, i32* %2, align 4
  br label %74

60:                                               ; preds = %47
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pci_free_consistent(i32 %63, i32 %64, i32* %67, i32 %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %60, %54, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
