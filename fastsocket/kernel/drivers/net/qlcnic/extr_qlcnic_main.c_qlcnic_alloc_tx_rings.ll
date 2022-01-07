; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_tx_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_2__*, %struct.qlcnic_host_tx_ring*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32, %struct.qlcnic_adapter*, %struct.qlcnic_cmd_buffer*, i32, i32 }
%struct.qlcnic_cmd_buffer = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate tx rings\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to allocate cmd buffer ring\0A\00", align 1
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %11 = alloca %struct.qlcnic_cmd_buffer*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 32
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.qlcnic_host_tx_ring* @kzalloc(i32 %18, i32 %19)
  store %struct.qlcnic_host_tx_ring* %20, %struct.qlcnic_host_tx_ring** %10, align 8
  %21 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %22 = icmp eq %struct.qlcnic_host_tx_ring* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %130

29:                                               ; preds = %2
  %30 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 4
  store %struct.qlcnic_host_tx_ring* %30, %struct.qlcnic_host_tx_ring** %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %77, %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 4
  %42 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %42, i64 %44
  store %struct.qlcnic_host_tx_ring* %45, %struct.qlcnic_host_tx_ring** %10, align 8
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %50 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @netdev_get_tx_queue(%struct.net_device* %51, i32 %52)
  %54 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %55 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %57 = call i32 @TX_BUFF_RINGSIZE(%struct.qlcnic_host_tx_ring* %56)
  %58 = call %struct.qlcnic_cmd_buffer* @vzalloc(i32 %57)
  store %struct.qlcnic_cmd_buffer* %58, %struct.qlcnic_cmd_buffer** %11, align 8
  %59 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %11, align 8
  %60 = icmp eq %struct.qlcnic_cmd_buffer* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %39
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %66 = call i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %130

69:                                               ; preds = %39
  %70 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %11, align 8
  %71 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %72 = call i32 @TX_BUFF_RINGSIZE(%struct.qlcnic_host_tx_ring* %71)
  %73 = call i32 @memset(%struct.qlcnic_cmd_buffer* %70, i32 0, i32 %72)
  %74 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %11, align 8
  %75 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %76 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %75, i32 0, i32 2
  store %struct.qlcnic_cmd_buffer* %74, %struct.qlcnic_cmd_buffer** %76, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %82 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %125, %84
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %85
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 4
  %94 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %94, i64 %96
  store %struct.qlcnic_host_tx_ring* %97, %struct.qlcnic_host_tx_ring** %10, align 8
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %99 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %100 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %99, i32 0, i32 1
  store %struct.qlcnic_adapter* %98, %struct.qlcnic_adapter** %100, align 8
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %91
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %9, align 4
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %123 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %107, %91
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %85

128:                                              ; preds = %85
  br label %129

129:                                              ; preds = %128, %80
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %61, %23
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.qlcnic_host_tx_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.qlcnic_cmd_buffer* @vzalloc(i32) #1

declare dso_local i32 @TX_BUFF_RINGSIZE(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memset(%struct.qlcnic_cmd_buffer*, i32, i32) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
