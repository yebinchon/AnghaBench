; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_dealloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_dealloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.nes_ucontext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*)* @nes_dealloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_dealloc_ucontext(%struct.ib_ucontext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.nes_ucontext*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %3, align 8
  %5 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %6 = call %struct.nes_ucontext* @to_nesucontext(%struct.ib_ucontext* %5)
  store %struct.nes_ucontext* %6, %struct.nes_ucontext** %4, align 8
  %7 = load %struct.nes_ucontext*, %struct.nes_ucontext** %4, align 8
  %8 = getelementptr inbounds %struct.nes_ucontext, %struct.nes_ucontext* %7, i32 0, i32 0
  %9 = call i32 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.nes_ucontext*, %struct.nes_ucontext** %4, align 8
  %14 = call i32 @kfree(%struct.nes_ucontext* %13)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.nes_ucontext* @to_nesucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kfree(%struct.nes_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
