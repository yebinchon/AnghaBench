; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_new_mmu_context_version_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_new_mmu_context_version_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@SECONDARY_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_new_mmu_context_version_client(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = shl i32 1, %7
  %9 = call i32 @clear_softint(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %5, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = icmp ne %struct.mm_struct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = icmp eq %struct.mm_struct* %16, @init_mm
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ true, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %58

24:                                               ; preds = %18
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CTX_VALID(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %42 = call i32 @get_new_mmu_context(%struct.mm_struct* %41)
  br label %43

43:                                               ; preds = %40, %24
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = call i32 @load_secondary_context(%struct.mm_struct* %49)
  %51 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CTX_HWBITS(i32 %54)
  %56 = load i32, i32* @SECONDARY_CONTEXT, align 4
  %57 = call i32 @__flush_tlb_mm(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %43, %23
  ret void
}

declare dso_local i32 @clear_softint(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CTX_VALID(i32) #1

declare dso_local i32 @get_new_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @load_secondary_context(%struct.mm_struct*) #1

declare dso_local i32 @__flush_tlb_mm(i32, i32) #1

declare dso_local i32 @CTX_HWBITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
