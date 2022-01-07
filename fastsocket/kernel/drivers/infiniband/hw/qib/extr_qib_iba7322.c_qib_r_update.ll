; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_r_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_r_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@SJA_EN = common dso_local global i32 0, align 4
@BISTEN_LSB = common dso_local global i32 0, align 4
@R_OP_UPDATE = common dso_local global i32 0, align 4
@R_OPCODE_LSB = common dso_local global i32 0, align 4
@kr_r_access = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32)* @qib_r_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_r_update(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SJA_EN, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BISTEN_LSB, align 4
  %10 = shl i32 %8, %9
  %11 = or i32 %7, %10
  %12 = load i32, i32* @R_OP_UPDATE, align 4
  %13 = load i32, i32* @R_OPCODE_LSB, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %17 = call i32 @qib_r_wait_for_rdy(%struct.qib_devdata* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %22 = load i32, i32* @kr_r_access, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @qib_write_kreg(%struct.qib_devdata* %21, i32 %22, i32 %23)
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %26 = load i32, i32* @kr_scratch, align 4
  %27 = call i32 @qib_read_kreg32(%struct.qib_devdata* %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @qib_r_wait_for_rdy(%struct.qib_devdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
