; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_ucc_slow.c_ucc_slow_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_ucc_slow.c_ucc_slow_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_slow_private = type { i64, i64, %struct.ucc_slow* }
%struct.ucc_slow = type { i32 }

@COMM_DIR_TX = common dso_local global i32 0, align 4
@UCC_SLOW_GUMR_L_ENT = common dso_local global i32 0, align 4
@COMM_DIR_RX = common dso_local global i32 0, align 4
@UCC_SLOW_GUMR_L_ENR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucc_slow_disable(%struct.ucc_slow_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ucc_slow_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucc_slow*, align 8
  %6 = alloca i32, align 4
  store %struct.ucc_slow_private* %0, %struct.ucc_slow_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %3, align 8
  %8 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %7, i32 0, i32 2
  %9 = load %struct.ucc_slow*, %struct.ucc_slow** %8, align 8
  store %struct.ucc_slow* %9, %struct.ucc_slow** %5, align 8
  %10 = load %struct.ucc_slow*, %struct.ucc_slow** %5, align 8
  %11 = getelementptr inbounds %struct.ucc_slow, %struct.ucc_slow* %10, i32 0, i32 0
  %12 = call i32 @in_be32(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @COMM_DIR_TX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @UCC_SLOW_GUMR_L_ENT, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %3, align 8
  %23 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @COMM_DIR_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @UCC_SLOW_GUMR_L_ENR, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %3, align 8
  %35 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.ucc_slow*, %struct.ucc_slow** %5, align 8
  %38 = getelementptr inbounds %struct.ucc_slow, %struct.ucc_slow* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @out_be32(i32* %38, i32 %39)
  ret void
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
