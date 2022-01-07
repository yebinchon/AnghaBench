; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_reg_rd_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_reg_rd_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_PCICFG_REG_WINDOW_ADDRESS = common dso_local global i32 0, align 4
@BNX2_PCICFG_REG_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32)* @bnx2_reg_rd_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_reg_rd_ind(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %10 = load i32, i32* @BNX2_PCICFG_REG_WINDOW_ADDRESS, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BNX2_WR(%struct.bnx2* %9, i32 %10, i32 %11)
  %13 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %14 = load i32, i32* @BNX2_PCICFG_REG_WINDOW, align 4
  %15 = call i32 @BNX2_RD(%struct.bnx2* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_bh(i32* %17)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
