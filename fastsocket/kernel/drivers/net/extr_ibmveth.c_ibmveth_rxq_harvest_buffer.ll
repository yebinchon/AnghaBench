; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_rxq_harvest_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_rxq_harvest_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmveth_adapter*)* @ibmveth_rxq_harvest_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_rxq_harvest_buffer(%struct.ibmveth_adapter* %0) #0 {
  %2 = alloca %struct.ibmveth_adapter*, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %2, align 8
  %3 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %4 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ibmveth_remove_buffer_from_pool(%struct.ibmveth_adapter* %3, i32 %14)
  %16 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  br label %40

40:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @ibmveth_remove_buffer_from_pool(%struct.ibmveth_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
