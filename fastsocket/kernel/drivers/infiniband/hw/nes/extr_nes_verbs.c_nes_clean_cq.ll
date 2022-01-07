; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_clean_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_clean_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { i32 }
%struct.nes_cq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@NES_CQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQE_VALID = common dso_local global i32 0, align 4
@NES_CQE_COMP_COMP_CTX_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQE_COMP_COMP_CTX_HIGH_IDX = common dso_local global i64 0, align 8
@NES_SW_CONTEXT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_qp*, %struct.nes_cq*)* @nes_clean_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_clean_cq(%struct.nes_qp* %0, %struct.nes_cq* %1) #0 {
  %3 = alloca %struct.nes_qp*, align 8
  %4 = alloca %struct.nes_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %3, align 8
  store %struct.nes_cq* %1, %struct.nes_cq** %4, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %11 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %15 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %108, %2
  %19 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %20 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @NES_CQE_OPCODE_IDX, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @le32_to_cpu(i64 %29)
  %31 = load i32, i32* @NES_CQE_VALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %109

34:                                               ; preds = %18
  %35 = call i32 (...) @rmb()
  %36 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %37 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @NES_CQE_COMP_COMP_CTX_LOW_IDX, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @le32_to_cpu(i64 %46)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  %49 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %50 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @NES_CQE_COMP_COMP_CTX_HIGH_IDX, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @le32_to_cpu(i64 %59)
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 32
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = or i32 %64, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @NES_SW_CONTEXT_ALIGN, align 4
  %69 = sub nsw i32 %68, 1
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %75 = ptrtoint %struct.nes_qp* %74 to i64
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %34
  %79 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %80 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @NES_CQE_COMP_COMP_CTX_LOW_IDX, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 0, i64* %88, align 8
  %89 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %90 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @NES_CQE_COMP_COMP_CTX_HIGH_IDX, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %78, %34
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  %102 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %103 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp uge i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i64 0, i64* %5, align 8
  br label %108

108:                                              ; preds = %107, %99
  br label %18

109:                                              ; preds = %18
  %110 = load %struct.nes_cq*, %struct.nes_cq** %4, align 8
  %111 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %110, i32 0, i32 0
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
