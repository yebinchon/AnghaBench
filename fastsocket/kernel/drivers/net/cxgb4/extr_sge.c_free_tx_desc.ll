; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.device* }
%struct.device = type { i32 }
%struct.sge_txq = type { i32, i32, %struct.tx_sw_desc* }
%struct.tx_sw_desc = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*, i32, i32)* @free_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tx_desc(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_sw_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = call i64 (...) @need_skb_unmap()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %4
  %25 = phi i1 [ false, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 2
  %29 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %29, i64 %31
  store %struct.tx_sw_desc* %32, %struct.tx_sw_desc** %9, align 8
  br label %33

33:                                               ; preds = %75, %24
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %39 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %48 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %51 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %54 = call i32 @unmap_sgl(%struct.device* %46, i32* %49, i32 %52, %struct.sge_txq* %53)
  br label %55

55:                                               ; preds = %45, %42
  %56 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %57 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree_skb(i32* %58)
  %60 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %61 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %37
  %63 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %9, align 8
  %64 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %63, i32 1
  store %struct.tx_sw_desc* %64, %struct.tx_sw_desc** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %68 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  %72 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 2
  %74 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %73, align 8
  store %struct.tx_sw_desc* %74, %struct.tx_sw_desc** %9, align 8
  br label %75

75:                                               ; preds = %71, %62
  br label %33

76:                                               ; preds = %33
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %79 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local i64 @need_skb_unmap(...) #1

declare dso_local i32 @unmap_sgl(%struct.device*, i32*, i32, %struct.sge_txq*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
