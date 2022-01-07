; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_change_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_change_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.TYPE_4__*, i32, %struct.rx_ring*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rx_ring = type { i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Waiting for adapter UP...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Timed out waiting for adapter UP\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@LARGE_BUFFER_MAX_SIZE = common dso_local global i32 0, align 4
@LARGE_BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Driver up/down cycle failed, closing device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_change_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_change_rx_buffers(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %9 = load i32, i32* @QL_ADAPTER_UP, align 4
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %1
  store i32 3, i32* %8, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @QL_ADAPTER_UP, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ false, %15 ], [ %25, %19 ]
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = load i32, i32* @ifup, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @netif_err(%struct.ql_adapter* %29, i32 %30, %struct.TYPE_4__* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @ssleep(i32 1)
  br label %15

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %41 = load i32, i32* @ifup, align 4
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @netif_err(%struct.ql_adapter* %40, i32 %41, %struct.TYPE_4__* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %115

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %51 = call i32 @ql_adapter_down(%struct.ql_adapter* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %99

55:                                               ; preds = %49
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 1500
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @LARGE_BUFFER_MAX_SIZE, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @LARGE_BUFFER_MIN_SIZE, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @get_order(i32 %68)
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %88, %66
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %79, i32 0, i32 3
  %81 = load %struct.rx_ring*, %struct.rx_ring** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %81, i64 %83
  store %struct.rx_ring* %84, %struct.rx_ring** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %87 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %93 = call i32 @ql_adapter_up(%struct.ql_adapter* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %115

99:                                               ; preds = %96, %54
  %100 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %101 = load i32, i32* @ifup, align 4
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call i32 @netif_alert(%struct.ql_adapter* %100, i32 %101, %struct.TYPE_4__* %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @QL_ADAPTER_UP, align 4
  %107 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %107, i32 0, i32 2
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  %110 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @dev_close(%struct.TYPE_4__* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %99, %97, %39
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @ql_adapter_down(%struct.ql_adapter*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @ql_adapter_up(%struct.ql_adapter*) #1

declare dso_local i32 @netif_alert(%struct.ql_adapter*, i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_close(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
