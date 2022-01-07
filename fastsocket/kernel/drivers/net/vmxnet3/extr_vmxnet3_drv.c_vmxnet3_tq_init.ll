; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__* }
%struct.vmxnet3_adapter = type { i32 }

@VMXNET3_INIT_GEN = common dso_local global i8* null, align 8
@VMXNET3_MAP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_tq_init(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  %6 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 %16)
  %18 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %25 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.TYPE_8__* %31, i32 0, i32 %38)
  %40 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(%struct.TYPE_8__* %43, i32 0, i32 %50)
  %52 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %53 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %56 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(%struct.TYPE_8__* %61, i32 0, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %86, %2
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %73 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load i32, i32* @VMXNET3_MAP_NONE, align 4
  %79 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %70

89:                                               ; preds = %70
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
