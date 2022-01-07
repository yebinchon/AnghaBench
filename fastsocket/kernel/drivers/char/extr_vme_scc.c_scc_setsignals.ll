; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_setsignals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_setsignals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_port = type { i32 }

@TX_CTRL_REG = common dso_local global i32 0, align 4
@TCR_DTR = common dso_local global i8 0, align 1
@TCR_RTS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_port*, i32, i32)* @scc_setsignals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_setsignals(%struct.scc_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scc_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.scc_port* %0, %struct.scc_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.scc_port*, %struct.scc_port** %4, align 8
  %10 = call i32 @SCC_ACCESS_INIT(%struct.scc_port* %9)
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* @TX_CTRL_REG, align 4
  %14 = call zeroext i8 @SCCread(i32 %13)
  store i8 %14, i8* %8, align 1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @TCR_DTR, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  br label %33

26:                                               ; preds = %17
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @TCR_DTR, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi i32 [ %25, %20 ], [ %32, %26 ]
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @TCR_RTS, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  br label %55

48:                                               ; preds = %39
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @TCR_RTS, align 1
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  br label %55

55:                                               ; preds = %48, %42
  %56 = phi i32 [ %47, %42 ], [ %54, %48 ]
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %58

58:                                               ; preds = %55, %36
  %59 = load i32, i32* @TX_CTRL_REG, align 4
  %60 = load i8, i8* %8, align 1
  %61 = call i32 @SCCwrite(i32 %59, i8 zeroext %60)
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  ret void
}

declare dso_local i32 @SCC_ACCESS_INIT(%struct.scc_port*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @SCCread(i32) #1

declare dso_local i32 @SCCwrite(i32, i8 zeroext) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
