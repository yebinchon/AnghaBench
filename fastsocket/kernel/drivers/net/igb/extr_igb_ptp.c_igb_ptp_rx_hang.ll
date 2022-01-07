; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_rx_hang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_rx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, i32, %struct.TYPE_4__*, i32, %struct.igb_ring**, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.igb_ring = type { i64 }
%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@E1000_TSYNCRXCTL = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@E1000_RXSTMPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"clearing Rx timestamp hang\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_rx_hang(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 5
  store %struct.e1000_hw* %9, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %11 = call i32 @rd32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_82576, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %85

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @E1000_TSYNCRXCTL_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** @jiffies, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %85

29:                                               ; preds = %19
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %58, %29
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 4
  %42 = load %struct.igb_ring**, %struct.igb_ring*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %42, i64 %44
  %46 = load %struct.igb_ring*, %struct.igb_ring** %45, align 8
  store %struct.igb_ring* %46, %struct.igb_ring** %4, align 8
  %47 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %48 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @time_after(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %55 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %53, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %33

61:                                               ; preds = %33
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 5, %63
  %65 = sext i32 %64 to i64
  %66 = add i64 %62, %65
  %67 = call i64 @time_is_before_jiffies(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load i32, i32* @E1000_RXSTMPH, align 4
  %71 = call i32 @rd32(i32 %70)
  %72 = load i8*, i8** @jiffies, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %18, %24, %69, %61
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
