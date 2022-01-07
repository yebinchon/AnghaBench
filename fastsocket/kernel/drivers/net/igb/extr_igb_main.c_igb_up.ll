; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i64, %struct.TYPE_4__**, i64, i32, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PFRSTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_up(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 7
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = call i32 @igb_configure(%struct.igb_adapter* %8)
  %10 = load i32, i32* @__IGB_DOWN, align 4
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 6
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @napi_enable(i32* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %40 = call i32 @igb_configure_msix(%struct.igb_adapter* %39)
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @igb_assign_vector(%struct.TYPE_4__* %46, i32 0)
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, i32* @E1000_ICR, align 4
  %50 = call i32 @rd32(i32 %49)
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %52 = call i32 @igb_irq_enable(%struct.igb_adapter* %51)
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i32, i32* @E1000_CTRL_EXT, align 4
  %59 = call i32 @rd32(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @E1000_CTRL_EXT_PFRSTD, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @E1000_CTRL_EXT, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @wr32(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %48
  %67 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_tx_start_all_queues(i32 %69)
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 1
  %76 = call i32 @schedule_work(i32* %75)
  ret i32 0
}

declare dso_local i32 @igb_configure(%struct.igb_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @igb_configure_msix(%struct.igb_adapter*) #1

declare dso_local i32 @igb_assign_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_irq_enable(%struct.igb_adapter*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
