; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_hard_reset_mpi_risc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_hard_reset_mpi_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@UDELAY_COUNT = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@CSR_CMD_SET_RST = common dso_local global i32 0, align 4
@CSR_RR = common dso_local global i32 0, align 4
@CSR_CMD_CLR_RST = common dso_local global i32 0, align 4
@UDELAY_DELAY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_hard_reset_mpi_risc(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %5 = load i32, i32* @UDELAY_COUNT, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %7 = load i32, i32* @CSR, align 4
  %8 = load i32, i32* @CSR_CMD_SET_RST, align 4
  %9 = call i32 @ql_write32(%struct.ql_adapter* %6, i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %28, %1
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %12 = load i32, i32* @CSR, align 4
  %13 = call i32 @ql_read32(%struct.ql_adapter* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CSR_RR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %20 = load i32, i32* @CSR, align 4
  %21 = load i32, i32* @CSR_CMD_CLR_RST, align 4
  %22 = call i32 @ql_write32(%struct.ql_adapter* %19, i32 %20, i32 %21)
  br label %31

23:                                               ; preds = %10
  %24 = load i32, i32* @UDELAY_DELAY, align 4
  %25 = call i32 @mdelay(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %10, label %31

31:                                               ; preds = %28, %18
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  ret i32 %39
}

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
