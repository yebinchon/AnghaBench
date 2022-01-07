; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sundance.c_tx_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sundance.c_tx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i64, i64, %struct.netdev_desc*, %struct.netdev_desc* }
%struct.netdev_desc = type { i32, i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@DescIntrOnTx = common dso_local global i64 0, align 8
@TxListPtr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_desc*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %10)
  store %struct.netdev_private* %11, %struct.netdev_private** %4, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TX_RING_SIZE, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %18 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %17, i32 0, i32 5
  %19 = load %struct.netdev_desc*, %struct.netdev_desc** %18, align 8
  %20 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @TX_RING_SIZE, align 4
  %25 = srem i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.netdev_desc, %struct.netdev_desc* %19, i64 %26
  store %struct.netdev_desc* %27, %struct.netdev_desc** %6, align 8
  br label %28

28:                                               ; preds = %70, %1
  %29 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %30 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %33 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %28
  %38 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TX_RING_SIZE, align 4
  %42 = srem i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %44 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %43, i32 0, i32 5
  %45 = load %struct.netdev_desc*, %struct.netdev_desc** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.netdev_desc, %struct.netdev_desc* %45, i64 %47
  store %struct.netdev_desc* %48, %struct.netdev_desc** %6, align 8
  %49 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %50 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %49, i32 0, i32 4
  %51 = load %struct.netdev_desc*, %struct.netdev_desc** %50, align 8
  %52 = icmp ne %struct.netdev_desc* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %37
  %54 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %55 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = add i64 %56, %59
  %61 = call i32 @cpu_to_le32(i64 %60)
  %62 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %63 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %62, i32 0, i32 4
  %64 = load %struct.netdev_desc*, %struct.netdev_desc** %63, align 8
  %65 = getelementptr inbounds %struct.netdev_desc, %struct.netdev_desc* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %53, %37
  %67 = load %struct.netdev_desc*, %struct.netdev_desc** %6, align 8
  %68 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %69 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %68, i32 0, i32 4
  store %struct.netdev_desc* %67, %struct.netdev_desc** %69, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %72 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %28

75:                                               ; preds = %28
  %76 = load i64, i64* @DescIntrOnTx, align 8
  %77 = call i32 @cpu_to_le32(i64 %76)
  %78 = load %struct.netdev_desc*, %struct.netdev_desc** %6, align 8
  %79 = getelementptr inbounds %struct.netdev_desc, %struct.netdev_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %83 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TxListPtr, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i64 @ioread32(i64 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %75
  %90 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %91 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = add i64 %92, %95
  %97 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %98 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TxListPtr, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @iowrite32(i64 %96, i64 %101)
  br label %103

103:                                              ; preds = %89, %75
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
