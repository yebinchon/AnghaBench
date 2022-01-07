; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_register_logical_lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_register_logical_lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%union.ibmveth_buf_desc = type { i32 }

@H_SUCCESS = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmveth_adapter*, i32, i32)* @ibmveth_register_logical_lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_register_logical_lan(%struct.ibmveth_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ibmveth_buf_desc, align 4
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %10

10:                                               ; preds = %50, %3
  %11 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.ibmveth_buf_desc* %4 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @h_register_logical_lan(i32 %15, i32 %18, i32 %20, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @H_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %10
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %48, %32
  %34 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @h_free_logical_lan(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @H_IS_LONG_BUSY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @H_BUSY, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  br i1 %49, label %33, label %50

50:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %10

51:                                               ; preds = %29, %10
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @h_register_logical_lan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @h_free_logical_lan(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
