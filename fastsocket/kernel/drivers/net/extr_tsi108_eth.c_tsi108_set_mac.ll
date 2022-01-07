; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_set_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.tsi108_prv_data = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TSI108_MAC_ADDR1 = common dso_local global i32 0, align 4
@TSI108_MAC_ADDR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @tsi108_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tsi108_prv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %10)
  store %struct.tsi108_prv_data* %11, %struct.tsi108_prv_data** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @is_valid_ether_addr(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %28, i8* %34, align 1
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 16
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = or i32 %45, %52
  store i32 %53, i32* %8, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 0
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 8
  %68 = or i32 %60, %67
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 16
  %76 = or i32 %68, %75
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 24
  %84 = or i32 %76, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %6, align 8
  %86 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %85, i32 0, i32 0
  %87 = call i32 @spin_lock_irq(i32* %86)
  %88 = load i32, i32* @TSI108_MAC_ADDR1, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @TSI_WRITE(i32 %88, i32 %89)
  %91 = load i32, i32* @TSI108_MAC_ADDR2, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @TSI_WRITE(i32 %91, i32 %92)
  %94 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %6, align 8
  %95 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %94, i32 0, i32 1
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %6, align 8
  %98 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %38
  %102 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %6, align 8
  %103 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 @netif_wake_queue(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %106, %101, %38
  %110 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %6, align 8
  %111 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %6, align 8
  %114 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock_irq(i32* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %15
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
