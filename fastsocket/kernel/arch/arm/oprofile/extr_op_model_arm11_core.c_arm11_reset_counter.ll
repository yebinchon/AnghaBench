; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_arm11_core.c_arm11_reset_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_arm11_core.c_arm11_reset_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@counter_config = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @arm11_reset_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm11_reset_counter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %5 = call i32 (...) @smp_processor_id()
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @CPU_COUNTER(i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %20 [
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c15, c12, 1", "r,~{dirflag},~{fpsr},~{flags}"(i32 %15) #2, !srcloc !2
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c15, c12, 2", "r,~{dirflag},~{fpsr},~{flags}"(i32 %17) #2, !srcloc !3
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c15, c12, 3", "r,~{dirflag},~{fpsr},~{flags}"(i32 %19) #2, !srcloc !4
  br label %20

20:                                               ; preds = %1, %18, %16, %14
  ret void
}

declare dso_local i64 @CPU_COUNTER(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 527}
!3 = !{i32 609}
!4 = !{i32 691}
