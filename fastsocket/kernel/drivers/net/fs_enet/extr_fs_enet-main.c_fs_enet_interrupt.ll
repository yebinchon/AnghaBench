; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_enet_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_enet_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.fs_platform_info* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)* }
%struct.fs_platform_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fs_enet_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fs_enet_private*, align 8
  %7 = alloca %struct.fs_platform_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %15)
  store %struct.fs_enet_private* %16, %struct.fs_enet_private** %6, align 8
  %17 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %18 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %17, i32 0, i32 6
  %19 = load %struct.fs_platform_info*, %struct.fs_platform_info** %18, align 8
  store %struct.fs_platform_info* %19, %struct.fs_platform_info** %7, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %122, %2
  %21 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %22 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 %25(%struct.net_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %123

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %34 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %39 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %29
  %45 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %46 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 %49(%struct.net_device* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %55 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %61 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %64(%struct.net_device* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %44
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %71 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %68
  %76 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %77 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @fs_enet_rx_non_napi(%struct.net_device* %81)
  br label %111

83:                                               ; preds = %75
  %84 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %85 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %84, i32 0, i32 4
  %86 = call i32 @napi_schedule_prep(i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %88 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %87, i32 0, i32 5
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 %91(%struct.net_device* %92)
  %94 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %95 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %101 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %98(%struct.net_device* %99, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %83
  %107 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %108 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %107, i32 0, i32 4
  %109 = call i32 @__napi_schedule(i32* %108)
  br label %110

110:                                              ; preds = %106, %83
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %68
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %115 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i32 @fs_enet_tx(%struct.net_device* %120)
  br label %122

122:                                              ; preds = %119, %112
  br label %20

123:                                              ; preds = %20
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %124, 0
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @IRQ_RETVAL(i32 %127)
  ret i32 %128
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fs_enet_rx_non_napi(%struct.net_device*) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @fs_enet_tx(%struct.net_device*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
