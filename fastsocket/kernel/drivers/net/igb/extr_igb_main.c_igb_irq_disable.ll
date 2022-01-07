; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { i32 }

@E1000_EIAM = common dso_local global i32 0, align 4
@E1000_EIMC = common dso_local global i32 0, align 4
@E1000_EIAC = common dso_local global i32 0, align 4
@E1000_IAM = common dso_local global i32 0, align 4
@E1000_IMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_irq_disable(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 4
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @E1000_EIAM, align 4
  %14 = call i32 @rd32(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @E1000_EIAM, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = call i32 @wr32(i32 %15, i32 %21)
  %23 = load i32, i32* @E1000_EIMC, align 4
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wr32(i32 %23, i32 %26)
  %28 = load i32, i32* @E1000_EIAC, align 4
  %29 = call i32 @rd32(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @E1000_EIAC, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %34, -1
  %36 = and i32 %31, %35
  %37 = call i32 @wr32(i32 %30, i32 %36)
  br label %38

38:                                               ; preds = %12, %1
  %39 = load i32, i32* @E1000_IAM, align 4
  %40 = call i32 @wr32(i32 %39, i32 0)
  %41 = load i32, i32* @E1000_IMC, align 4
  %42 = call i32 @wr32(i32 %41, i32 -1)
  %43 = call i32 (...) @wrfl()
  %44 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @synchronize_irq(i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %49

68:                                               ; preds = %49
  br label %76

69:                                               ; preds = %38
  %70 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @synchronize_irq(i32 %74)
  br label %76

76:                                               ; preds = %69, %68
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
