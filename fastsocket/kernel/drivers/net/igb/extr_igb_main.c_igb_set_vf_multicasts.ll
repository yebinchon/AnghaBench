; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_vf_multicasts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_vf_multicasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.vf_data_storage* }
%struct.vf_data_storage = type { i32, i32* }

@E1000_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@E1000_VT_MSGINFO_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i64*, i64)* @igb_set_vf_multicasts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_vf_multicasts(%struct.igb_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vf_data_storage*, align 8
  %10 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @E1000_VT_MSGINFO_MASK, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @E1000_VT_MSGINFO_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = bitcast i64* %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 1
  %24 = load %struct.vf_data_storage*, %struct.vf_data_storage** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %24, i64 %25
  store %struct.vf_data_storage* %26, %struct.vf_data_storage** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %29 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 30, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %3
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %45 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @igb_set_rx_mode(i32 %56)
  ret i32 0
}

declare dso_local i32 @igb_set_rx_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
