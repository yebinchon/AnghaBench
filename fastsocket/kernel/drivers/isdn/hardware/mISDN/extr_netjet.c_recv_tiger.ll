; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_recv_tiger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_recv_tiger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NJ_IRQM0_WR_MASK = common dso_local global i32 0, align 4
@NJ_IRQM0_WR_END = common dso_local global i32 0, align 4
@FLG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_hw*, i32)* @recv_tiger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_tiger(%struct.tiger_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.tiger_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %8 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @NJ_IRQM0_WR_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %15 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NJ_IRQM0_WR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %22 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NJ_IRQM0_WR_END, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %34 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* @FLG_ACTIVE, align 4
  %40 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %41 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i64 @test_bit(i32 %39, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %50 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @read_dma(%struct.TYPE_6__* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %38
  %57 = load i32, i32* @FLG_ACTIVE, align 4
  %58 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %59 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i64 @test_bit(i32 %57, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %68 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 1
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @read_dma(%struct.TYPE_6__* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %56
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @read_dma(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
