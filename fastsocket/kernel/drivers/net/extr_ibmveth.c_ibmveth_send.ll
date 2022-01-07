; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.ibmveth_buf_desc = type { i32 }

@H_BUSY = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@H_DROPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"tx: h_send_logical_lan failed with rc=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmveth_adapter*, %union.ibmveth_buf_desc*)* @ibmveth_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_send(%struct.ibmveth_adapter* %0, %union.ibmveth_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmveth_adapter*, align 8
  %5 = alloca %union.ibmveth_buf_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %4, align 8
  store %union.ibmveth_buf_desc* %1, %union.ibmveth_buf_desc** %5, align 8
  store i32 1024, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %49, %2
  %10 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %5, align 8
  %16 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %15, i64 0
  %17 = bitcast %union.ibmveth_buf_desc* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %5, align 8
  %20 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %19, i64 1
  %21 = bitcast %union.ibmveth_buf_desc* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %5, align 8
  %24 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %23, i64 2
  %25 = bitcast %union.ibmveth_buf_desc* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %5, align 8
  %28 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %27, i64 3
  %29 = bitcast %union.ibmveth_buf_desc* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %5, align 8
  %32 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %31, i64 4
  %33 = bitcast %union.ibmveth_buf_desc* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %5, align 8
  %36 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %35, i64 5
  %37 = bitcast %union.ibmveth_buf_desc* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @h_send_logical_lan(i32 %14, i32 %18, i32 %22, i32 %26, i32 %30, i32 %34, i32 %38, i64 %39, i64* %6)
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %9
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @H_BUSY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %46, 0
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %9, label %51

51:                                               ; preds = %49
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @H_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @H_DROPPED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %63)
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %55, %51
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @h_send_logical_lan(i32, i32, i32, i32, i32, i32, i32, i64, i64*) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
