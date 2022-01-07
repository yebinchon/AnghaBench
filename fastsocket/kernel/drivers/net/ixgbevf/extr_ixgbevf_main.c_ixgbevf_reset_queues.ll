; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_reset_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_reset_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbevf_ring*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, %struct.ixgbe_hw }
%struct.ixgbevf_ring = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_hw = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_reset_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_reset_queues(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 7
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 6
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = call i32 @ixgbevf_get_queues(%struct.ixgbe_hw* %16, i32* %7, i32* %6)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %18, i32 0, i32 6
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %143

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %30, i32 0, i32 5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %143

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.ixgbevf_ring* @kcalloc(i32 %44, i32 32, i32 %45)
  store %struct.ixgbevf_ring* %46, %struct.ixgbevf_ring** %5, align 8
  %47 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %48 = icmp ne %struct.ixgbevf_ring* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %143

52:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %121, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %124

57:                                               ; preds = %53
  %58 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %61, i64 %63
  %65 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %64, i32 0, i32 4
  store i32 %60, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %67, i64 %69
  %71 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %73, i64 %75
  %77 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 4
  %78 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %82, i64 %84
  %86 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %85, i32 0, i32 3
  store i32* %81, i32** %86, align 8
  %87 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %90, i64 %92
  %94 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %93, i32 0, i32 2
  store i32 %89, i32* %94, align 8
  %95 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %96 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %96, i64 %98
  %100 = call i32 @ixgbevf_setup_rx_resources(%struct.ixgbevf_adapter* %95, %struct.ixgbevf_ring* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %57
  br label %104

104:                                              ; preds = %107, %103
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %10, align 4
  %110 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %111 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %111, i64 %113
  %115 = call i32 @ixgbevf_free_rx_resources(%struct.ixgbevf_adapter* %110, %struct.ixgbevf_ring* %114)
  br label %104

116:                                              ; preds = %104
  %117 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %118 = call i32 @kfree(%struct.ixgbevf_ring* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %143

120:                                              ; preds = %57
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %53

124:                                              ; preds = %53
  %125 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %126 = call i32 @ixgbevf_free_all_rx_resources(%struct.ixgbevf_adapter* %125)
  %127 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %129, i32 0, i32 1
  %131 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %130, align 8
  %132 = call i32 @kfree(%struct.ixgbevf_ring* %131)
  %133 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %134 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %134, i32 0, i32 1
  store %struct.ixgbevf_ring* %133, %struct.ixgbevf_ring** %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %140 = call i32 @ixgbevf_reset_q_vectors(%struct.ixgbevf_adapter* %139)
  %141 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %142 = call i32 @ixgbevf_map_rings_to_vectors(%struct.ixgbevf_adapter* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %124, %116, %49, %42, %23
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ixgbevf_get_queues(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.ixgbevf_ring* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ixgbevf_setup_rx_resources(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*) #1

declare dso_local i32 @ixgbevf_free_rx_resources(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*) #1

declare dso_local i32 @kfree(%struct.ixgbevf_ring*) #1

declare dso_local i32 @ixgbevf_free_all_rx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_reset_q_vectors(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_map_rings_to_vectors(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
