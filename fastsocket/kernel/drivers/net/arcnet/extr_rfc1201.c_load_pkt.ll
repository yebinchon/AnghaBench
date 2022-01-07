; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_rfc1201.c_load_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_rfc1201.c_load_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arc_hardware = type { i32*, i32, i32, i32, i32 }
%struct.arc_rfc1201 = type { i32*, i32, i32, i32, i32 }
%struct.arcnet_local = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)* }
%struct.arc_rfc1201.0 = type opaque

@MinTU = common dso_local global i32 0, align 4
@MTU = common dso_local global i32 0, align 4
@RFC1201_HDR_SIZE = common dso_local global i32 0, align 4
@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.arc_hardware*, %struct.arc_rfc1201*, i32, i32)* @load_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_pkt(%struct.net_device* %0, %struct.arc_hardware* %1, %struct.arc_rfc1201* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.arc_hardware*, align 8
  %8 = alloca %struct.arc_rfc1201*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.arcnet_local*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.arc_rfc1201, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.arc_hardware* %1, %struct.arc_hardware** %7, align 8
  store %struct.arc_rfc1201* %2, %struct.arc_rfc1201** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %14)
  store %struct.arcnet_local* %15, %struct.arcnet_local** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MinTU, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %21 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 512, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %27 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  br label %75

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MTU, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %8, align 8
  %36 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %13, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %13, i32 0, i32 1
  store i32 255, i32* %39, align 8
  %40 = call i32 @htons(i32 65535)
  %41 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %13, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %43 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 512, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %52 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.arcnet_local*, %struct.arcnet_local** %11, align 8
  %56 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)** %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %63 = sub nsw i32 %61, %62
  %64 = bitcast %struct.arc_rfc1201* %13 to %struct.arc_rfc1201.0*
  %65 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %66 = call i32 %58(%struct.net_device* %59, i32 %60, i32 %63, %struct.arc_rfc1201.0* %64, i32 %65)
  br label %74

67:                                               ; preds = %30
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 256, %68
  store i32 %69, i32* %12, align 4
  %70 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %71 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %34
  br label %75

75:                                               ; preds = %74, %19
  %76 = load %struct.arcnet_local*, %struct.arcnet_local** %11, align 8
  %77 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)** %78, align 8
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %83 = bitcast %struct.arc_hardware* %82 to %struct.arc_rfc1201.0*
  %84 = load i32, i32* @ARC_HDR_SIZE, align 4
  %85 = call i32 %79(%struct.net_device* %80, i32 %81, i32 0, %struct.arc_rfc1201.0* %83, i32 %84)
  %86 = load %struct.arcnet_local*, %struct.arcnet_local** %11, align 8
  %87 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_rfc1201.0*, i32)** %88, align 8
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %8, align 8
  %94 = bitcast %struct.arc_rfc1201* %93 to %struct.arc_rfc1201.0*
  %95 = load i32, i32* %9, align 4
  %96 = call i32 %89(%struct.net_device* %90, i32 %91, i32 %92, %struct.arc_rfc1201.0* %94, i32 %95)
  %97 = load %struct.arc_hardware*, %struct.arc_hardware** %7, align 8
  %98 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.arcnet_local*, %struct.arcnet_local** %11, align 8
  %101 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
