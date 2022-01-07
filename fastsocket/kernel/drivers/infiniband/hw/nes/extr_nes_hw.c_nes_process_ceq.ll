; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_process_ceq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_process_ceq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_hw_ceq = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.nes_hw_cq = type { i32 (%struct.nes_device.0*, %struct.nes_hw_cq*)* }
%struct.nes_device.0 = type opaque

@NES_CEQE_CQ_CTX_HIGH_IDX = common dso_local global i64 0, align 8
@NES_CEQE_VALID = common dso_local global i32 0, align 4
@NES_CEQE_CQ_CTX_LOW_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_hw_ceq*)* @nes_process_ceq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_process_ceq(%struct.nes_device* %0, %struct.nes_hw_ceq* %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_hw_ceq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_hw_cq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store %struct.nes_hw_ceq* %1, %struct.nes_hw_ceq** %4, align 8
  %9 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %10 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %13 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %84, %2
  %16 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %17 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @NES_CEQE_CQ_CTX_HIGH_IDX, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @le32_to_cpu(i64 %25)
  %27 = load i32, i32* @NES_CEQE_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %15
  %31 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %32 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @NES_CEQE_CQ_CTX_HIGH_IDX, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @le32_to_cpu(i64 %40)
  %42 = shl i32 %41, 32
  %43 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %44 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NES_CEQE_CQ_CTX_LOW_IDX, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @le32_to_cpu(i64 %52)
  %54 = or i32 %42, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = bitcast i32* %5 to %struct.nes_hw_cq**
  %58 = load %struct.nes_hw_cq*, %struct.nes_hw_cq** %57, align 4
  store %struct.nes_hw_cq* %58, %struct.nes_hw_cq** %6, align 8
  %59 = call i32 (...) @barrier()
  %60 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %61 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @NES_CEQE_CQ_CTX_HIGH_IDX, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load %struct.nes_hw_cq*, %struct.nes_hw_cq** %6, align 8
  %70 = getelementptr inbounds %struct.nes_hw_cq, %struct.nes_hw_cq* %69, i32 0, i32 0
  %71 = load i32 (%struct.nes_device.0*, %struct.nes_hw_cq*)*, i32 (%struct.nes_device.0*, %struct.nes_hw_cq*)** %70, align 8
  %72 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %73 = bitcast %struct.nes_device* %72 to %struct.nes_device.0*
  %74 = load %struct.nes_hw_cq*, %struct.nes_hw_cq** %6, align 8
  %75 = call i32 %71(%struct.nes_device.0* %73, %struct.nes_hw_cq* %74)
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  br label %81

81:                                               ; preds = %80, %30
  br label %83

82:                                               ; preds = %15
  br label %85

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  br i1 true, label %15, label %85

85:                                               ; preds = %84, %82
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.nes_hw_ceq*, %struct.nes_hw_ceq** %4, align 8
  %88 = getelementptr inbounds %struct.nes_hw_ceq, %struct.nes_hw_ceq* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
