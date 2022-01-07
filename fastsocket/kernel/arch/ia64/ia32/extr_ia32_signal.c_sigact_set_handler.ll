; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_signal.c_sigact_set_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_signal.c_sigact_set_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_sigaction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_sigaction*, i32, i32)* @sigact_set_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigact_set_handler(%struct.k_sigaction* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.k_sigaction*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.k_sigaction* %0, %struct.k_sigaction** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add i32 %7, 1
  %9 = icmp ule i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @A(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.k_sigaction*, %struct.k_sigaction** %4, align 8
  %15 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  br label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 %19, 32
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = or i64 %20, %22
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.k_sigaction*, %struct.k_sigaction** %4, align 8
  %26 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  br label %28

28:                                               ; preds = %17, %10
  ret void
}

declare dso_local i64 @A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
