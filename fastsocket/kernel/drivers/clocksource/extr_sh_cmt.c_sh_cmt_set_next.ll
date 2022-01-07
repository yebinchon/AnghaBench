; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_set_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"sh_cmt: delta out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_priv*, i64)* @sh_cmt_set_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_set_next(%struct.sh_cmt_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.sh_cmt_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ugt i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %20 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %22 = call i32 @sh_cmt_clock_event_program_verify(%struct.sh_cmt_priv* %21, i32 0)
  %23 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %24 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %23, i32 0, i32 2
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_cmt_clock_event_program_verify(%struct.sh_cmt_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
