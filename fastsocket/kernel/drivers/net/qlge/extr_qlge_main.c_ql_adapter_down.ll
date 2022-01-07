; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_adapter_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_adapter_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"reset(func #%d) FAILED!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_adapter_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_down(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = call i32 @ql_link_off(%struct.ql_adapter* %5)
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %8 = call i32 @ql_cancel_all_work_sync(%struct.ql_adapter* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @napi_disable(i32* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load i32, i32* @QL_ADAPTER_UP, align 4
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 4
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %33 = call i32 @ql_disable_interrupts(%struct.ql_adapter* %32)
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %35 = call i32 @ql_tx_ring_clean(%struct.ql_adapter* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %51, %27
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @netif_napi_del(i32* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %56 = call i32 @ql_adapter_reset(%struct.ql_adapter* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %61 = load i32, i32* @ifdown, align 4
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_err(%struct.ql_adapter* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %71 = call i32 @ql_free_rx_buffers(%struct.ql_adapter* %70)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ql_link_off(%struct.ql_adapter*) #1

declare dso_local i32 @ql_cancel_all_work_sync(%struct.ql_adapter*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_disable_interrupts(%struct.ql_adapter*) #1

declare dso_local i32 @ql_tx_ring_clean(%struct.ql_adapter*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ql_adapter_reset(%struct.ql_adapter*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @ql_free_rx_buffers(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
