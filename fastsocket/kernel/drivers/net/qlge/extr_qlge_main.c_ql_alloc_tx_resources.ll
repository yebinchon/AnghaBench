; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_alloc_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_alloc_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.tx_ring = type { i32, i32, i32*, i32, i32* }

@WQ_ADDR_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"tx_ring alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.tx_ring*)* @ql_alloc_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_tx_resources(%struct.ql_adapter* %0, %struct.tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.tx_ring* %1, %struct.tx_ring** %5, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %10 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %13 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %12, i32 0, i32 0
  %14 = call i32* @pci_alloc_consistent(i32 %8, i32 %11, i32* %13)
  %15 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %16 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %18 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WQ_ADDR_ALIGN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %2
  br label %62

29:                                               ; preds = %21
  %30 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %31 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kmalloc(i32 %35, i32 %36)
  %38 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %39 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %46

45:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %71

46:                                               ; preds = %44
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %51 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %54 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pci_free_consistent(i32 %49, i32 %52, i32* %55, i32 %58)
  %60 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %46, %28
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %64 = load i32, i32* @ifup, align 4
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_err(%struct.ql_adapter* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %45
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
