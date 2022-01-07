; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i64, i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_IMS_LSC = common dso_local global i32 0, align 4
@E1000_IMS_DOUTSYNC = common dso_local global i32 0, align 4
@E1000_IMS_DRSTA = common dso_local global i32 0, align 4
@E1000_EIAC = common dso_local global i32 0, align 4
@E1000_EIAM = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@E1000_MBVFIMR = common dso_local global i32 0, align 4
@E1000_IMS_VMMB = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_IMS_TS = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@E1000_IAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_irq_enable(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 3
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %1
  %13 = load i32, i32* @E1000_IMS_LSC, align 4
  %14 = load i32, i32* @E1000_IMS_DOUTSYNC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @E1000_IMS_DRSTA, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @E1000_EIAC, align 4
  %19 = call i32 @rd32(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @E1000_EIAC, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %21, %24
  %26 = call i32 @wr32(i32 %20, i32 %25)
  %27 = load i32, i32* @E1000_EIAM, align 4
  %28 = call i32 @rd32(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @E1000_EIAM, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %30, %33
  %35 = call i32 @wr32(i32 %29, i32 %34)
  %36 = load i32, i32* @E1000_EIMS, align 4
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wr32(i32 %36, i32 %39)
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %12
  %46 = load i32, i32* @E1000_MBVFIMR, align 4
  %47 = call i32 @wr32(i32 %46, i32 255)
  %48 = load i32, i32* @E1000_IMS_VMMB, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %12
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @e1000_82580, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @E1000_IMS_TS, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* @E1000_IMS, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @wr32(i32 %63, i32 %64)
  br label %77

66:                                               ; preds = %1
  %67 = load i32, i32* @E1000_IMS, align 4
  %68 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %69 = load i32, i32* @E1000_IMS_DRSTA, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @wr32(i32 %67, i32 %70)
  %72 = load i32, i32* @E1000_IAM, align 4
  %73 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %74 = load i32, i32* @E1000_IMS_DRSTA, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @wr32(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %66, %62
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
