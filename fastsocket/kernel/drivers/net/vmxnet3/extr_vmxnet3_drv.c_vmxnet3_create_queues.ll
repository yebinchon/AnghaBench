; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_create_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_create_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32, %struct.TYPE_12__*, %struct.vmxnet3_rx_queue*, %struct.TYPE_10__*, %struct.vmxnet3_tx_queue* }
%struct.TYPE_12__ = type { i32 }
%struct.vmxnet3_rx_queue = type { %struct.vmxnet3_adapter*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.vmxnet3_tx_queue = type { i32, i32, %struct.vmxnet3_adapter*, i32*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [45 x i8] c"Could not allocate any rx queues. Aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Number of rx queues changed to : %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmxnet3_create_queues(%struct.vmxnet3_adapter* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmxnet3_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmxnet3_tx_queue*, align 8
  %13 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %63, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %21, i32 0, i32 6
  %23 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %23, i64 %25
  store %struct.vmxnet3_tx_queue* %26, %struct.vmxnet3_tx_queue** %12, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %39, i32 0, i32 5
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %51 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %51, i32 0, i32 2
  store %struct.vmxnet3_adapter* %50, %struct.vmxnet3_adapter** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %12, align 8
  %57 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %58 = call i32 @vmxnet3_tq_create(%struct.vmxnet3_tx_queue* %56, %struct.vmxnet3_adapter* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %20
  br label %140

62:                                               ; preds = %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %68, i32 0, i32 4
  %70 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %69, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %70, i64 0
  %72 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i8* %67, i8** %75, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %77, i32 0, i32 4
  %79 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %78, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %79, i64 0
  %81 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i8* %76, i8** %84, align 8
  %85 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %86 = call i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter* %85)
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %135, %66
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %138

93:                                               ; preds = %87
  %94 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %94, i32 0, i32 4
  %96 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %96, i64 %98
  store %struct.vmxnet3_rx_queue* %99, %struct.vmxnet3_rx_queue** %13, align 8
  %100 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %100, i32 0, i32 3
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %13, align 8
  %108 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %110 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %13, align 8
  %111 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %110, i32 0, i32 0
  store %struct.vmxnet3_adapter* %109, %struct.vmxnet3_adapter** %111, align 8
  %112 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %13, align 8
  %113 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %114 = call i32 @vmxnet3_rq_create(%struct.vmxnet3_rx_queue* %112, %struct.vmxnet3_adapter* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %93
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @netdev_err(i32 %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %140

125:                                              ; preds = %117
  %126 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @netdev_info(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %133 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %10, align 4
  br label %138

134:                                              ; preds = %93
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %87

138:                                              ; preds = %125, %87
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %144

140:                                              ; preds = %120, %61
  %141 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %142 = call i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter* %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %138
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @vmxnet3_tq_create(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_create(%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
