; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_free_bnx2x_conn_resc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_free_bnx2x_conn_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, %struct.cnic_context* }
%struct.cnic_context = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cnic_iscsi* }
%struct.cnic_iscsi = type { i32, i32, i32 }

@CNIC_ULP_ISCSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i64)* @cnic_free_bnx2x_conn_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.cnic_context*, align 8
  %7 = alloca %struct.cnic_iscsi*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %8, i32 0, i32 0
  %10 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  store %struct.cnic_local* %10, %struct.cnic_local** %5, align 8
  %11 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %12 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %11, i32 0, i32 2
  %13 = load %struct.cnic_context*, %struct.cnic_context** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %13, i64 %14
  store %struct.cnic_context* %15, %struct.cnic_context** %6, align 8
  %16 = load %struct.cnic_context*, %struct.cnic_context** %6, align 8
  %17 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CNIC_ULP_ISCSI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load %struct.cnic_context*, %struct.cnic_context** %6, align 8
  %23 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %24, align 8
  store %struct.cnic_iscsi* %25, %struct.cnic_iscsi** %7, align 8
  %26 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %27 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %7, align 8
  %28 = getelementptr inbounds %struct.cnic_iscsi, %struct.cnic_iscsi* %27, i32 0, i32 2
  %29 = call i32 @cnic_free_dma(%struct.cnic_dev* %26, i32* %28)
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %31 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %7, align 8
  %32 = getelementptr inbounds %struct.cnic_iscsi, %struct.cnic_iscsi* %31, i32 0, i32 1
  %33 = call i32 @cnic_free_dma(%struct.cnic_dev* %30, i32* %32)
  %34 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %35 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %7, align 8
  %36 = getelementptr inbounds %struct.cnic_iscsi, %struct.cnic_iscsi* %35, i32 0, i32 0
  %37 = call i32 @cnic_free_dma(%struct.cnic_dev* %34, i32* %36)
  %38 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 1
  %40 = load %struct.cnic_context*, %struct.cnic_context** %6, align 8
  %41 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cnic_free_id(i32* %39, i64 %42)
  br label %51

44:                                               ; preds = %2
  %45 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %46 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %45, i32 0, i32 0
  %47 = load %struct.cnic_context*, %struct.cnic_context** %6, align 8
  %48 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @cnic_free_id(i32* %46, i64 %49)
  br label %51

51:                                               ; preds = %44, %21
  %52 = load %struct.cnic_context*, %struct.cnic_context** %6, align 8
  %53 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @cnic_free_dma(%struct.cnic_dev*, i32*) #1

declare dso_local i32 @cnic_free_id(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
