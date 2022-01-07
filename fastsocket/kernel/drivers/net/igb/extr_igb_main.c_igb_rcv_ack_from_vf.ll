; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_rcv_ack_from_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_rcv_ack_from_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.vf_data_storage*, %struct.e1000_hw }
%struct.vf_data_storage = type { i32, i64 }
%struct.e1000_hw = type { i32 }

@E1000_VT_MSGTYPE_NACK = common dso_local global i64 0, align 8
@IGB_VF_FLAG_CTS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i64)* @igb_rcv_ack_from_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_rcv_ack_from_vf(%struct.igb_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.vf_data_storage*, align 8
  %7 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 1
  store %struct.e1000_hw* %9, %struct.e1000_hw** %5, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 0
  %12 = load %struct.vf_data_storage*, %struct.vf_data_storage** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %12, i64 %13
  store %struct.vf_data_storage* %14, %struct.vf_data_storage** %6, align 8
  %15 = load i64, i64* @E1000_VT_MSGTYPE_NACK, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %17 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %25 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i64 @time_after(i64 %23, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @igb_write_mbx(%struct.e1000_hw* %34, i64* %7, i32 1, i64 %35)
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.vf_data_storage*, %struct.vf_data_storage** %6, align 8
  %39 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %22, %2
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @igb_write_mbx(%struct.e1000_hw*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
