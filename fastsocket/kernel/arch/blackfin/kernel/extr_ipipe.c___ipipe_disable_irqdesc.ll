; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_disable_irqdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_disable_irqdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipipe_domain = type { i32 }

@ipipe_root = common dso_local global %struct.ipipe_domain zeroinitializer, align 4
@__ipipe_irq_lvdepth = common dso_local global i32* null, align 8
@__ipipe_irq_lvmask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ipipe_disable_irqdesc(%struct.ipipe_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.ipipe_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipipe_domain* %0, %struct.ipipe_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @__ipipe_get_irq_priority(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ipipe_domain*, %struct.ipipe_domain** %3, align 8
  %9 = icmp ne %struct.ipipe_domain* %8, @ipipe_root
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32*, i32** @__ipipe_irq_lvdepth, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i64 @atomic_dec_and_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__clear_bit(i32 %18, i32* @__ipipe_irq_lvmask)
  br label %20

20:                                               ; preds = %17, %10, %2
  ret void
}

declare dso_local i32 @__ipipe_get_irq_priority(i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
