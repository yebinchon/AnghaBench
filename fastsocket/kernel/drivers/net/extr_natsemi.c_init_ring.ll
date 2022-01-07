; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32**, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__*, i32**, i64, i64 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i64, i8* }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %5)
  store %struct.netdev_private* %6, %struct.netdev_private** %3, align 8
  %7 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %8 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %7, i32 0, i32 9
  store i64 0, i64* %8, align 8
  %9 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %10 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %9, i32 0, i32 10
  store i64 0, i64* %10, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TX_RING_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 8
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  store i32* null, i32** %21, align 8
  %22 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %23 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @TX_RING_SIZE, align 4
  %28 = srem i32 %26, %27
  %29 = load i32, i32* @RX_RING_SIZE, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = add i64 %24, %32
  %34 = call i8* @cpu_to_le32(i64 %33)
  %35 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %36 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %35, i32 0, i32 7
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  %42 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %43 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %42, i32 0, i32 7
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %15
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %54 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @RX_RING_SIZE, align 4
  %56 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %57 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %59 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @set_bufsize(%struct.net_device* %60)
  %62 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %63 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %67 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %66, i32 0, i32 4
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %106, %52
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @RX_RING_SIZE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %74 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @RX_RING_SIZE, align 4
  %79 = srem i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = add i64 %75, %81
  %83 = call i8* @cpu_to_le32(i64 %82)
  %84 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %85 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i8* %83, i8** %90, align 8
  %91 = load i64, i64* @DescOwn, align 8
  %92 = call i8* @cpu_to_le32(i64 %91)
  %93 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %94 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i8* %92, i8** %99, align 8
  %100 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %101 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %72
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = call i32 @refill_rx(%struct.net_device* %110)
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = call i32 @dump_ring(%struct.net_device* %112)
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @set_bufsize(%struct.net_device*) #1

declare dso_local i32 @refill_rx(%struct.net_device*) #1

declare dso_local i32 @dump_ring(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
