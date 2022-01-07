; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_5__, %struct.TYPE_6__**, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.vmxnet3_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_rq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_rq_destroy(%struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_rx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %52, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %55

10:                                               ; preds = %7
  %11 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %20
  %32 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %20

50:                                               ; preds = %20
  br label %51

51:                                               ; preds = %50, %10
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %7

55:                                               ; preds = %7
  %56 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i32 @kfree(%struct.TYPE_6__* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %121, %55
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %124

65:                                               ; preds = %62
  %66 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %114

75:                                               ; preds = %65
  %76 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %99 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pci_free_consistent(i32 %78, i32 %89, i32* %97, i32 %105)
  %107 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %108 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %75, %65
  %115 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %116 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %117, i64 %119
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %120, align 8
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %62

124:                                              ; preds = %62
  %125 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %126 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %153

130:                                              ; preds = %124
  %131 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %132 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %135 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %142 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %146 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pci_free_consistent(i32 %133, i32 %140, i32* %144, i32 %148)
  %150 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %151 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %130, %124
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
