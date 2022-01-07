; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_IRQ_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_IRQ_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amo = type { i32 }

@FETCHOP_OR = common dso_local global i32 0, align 4
@xp_nofault_PIOR_target = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpPioReadError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amo*, i32, i32, i32, i32)* @xpc_send_IRQ_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_send_IRQ_sn2(%struct.amo* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.amo* %0, %struct.amo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.amo*, %struct.amo** %6, align 8
  %16 = getelementptr inbounds %struct.amo, %struct.amo* %15, i32 0, i32 0
  %17 = ptrtoint i32* %16 to i32
  %18 = call i32 @TO_AMO(i32 %17)
  %19 = load i32, i32* @FETCHOP_OR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @FETCHOP_STORE_OP(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @sn_send_IPI_phys(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.amo*, %struct.amo** %6, align 8
  %27 = getelementptr inbounds %struct.amo, %struct.amo* %26, i32 0, i32 0
  %28 = call i32 @NASID_GET(i32* %27)
  %29 = load i32, i32* @xp_nofault_PIOR_target, align 4
  %30 = call i64 @GLOBAL_MMR_ADDR(i32 %28, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @xp_nofault_PIOR(i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @local_irq_restore(i64 %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @xpSuccess, align 4
  br label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @xpPioReadError, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  ret i32 %42
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @FETCHOP_STORE_OP(i32, i32, i32) #1

declare dso_local i32 @TO_AMO(i32) #1

declare dso_local i32 @sn_send_IPI_phys(i32, i32, i32, i32) #1

declare dso_local i32 @xp_nofault_PIOR(i32*) #1

declare dso_local i64 @GLOBAL_MMR_ADDR(i32, i32) #1

declare dso_local i32 @NASID_GET(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
