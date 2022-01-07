; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixp2400-msf.c_ixp2400_msf_enable_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixp2400-msf.c_ixp2400_msf_enable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp2400_msf_parameters = type { i32 }

@IXP2000_MSF_TX_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixp2400_msf_parameters*)* @ixp2400_msf_enable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp2400_msf_enable_tx(%struct.ixp2400_msf_parameters* %0) #0 {
  %2 = alloca %struct.ixp2400_msf_parameters*, align 8
  %3 = alloca i32, align 4
  store %struct.ixp2400_msf_parameters* %0, %struct.ixp2400_msf_parameters** %2, align 8
  %4 = load i32, i32* @IXP2000_MSF_TX_CONTROL, align 4
  %5 = call i32 @ixp2000_reg_read(i32 %4)
  %6 = and i32 %5, 268435455
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ixp2400_msf_parameters*, %struct.ixp2400_msf_parameters** %2, align 8
  %8 = getelementptr inbounds %struct.ixp2400_msf_parameters, %struct.ixp2400_msf_parameters* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ixp2400_msf_valid_channels(i32 %9)
  %11 = shl i32 %10, 28
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @IXP2000_MSF_TX_CONTROL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ixp2000_reg_write(i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @ixp2000_reg_read(i32) #1

declare dso_local i32 @ixp2400_msf_valid_channels(i32) #1

declare dso_local i32 @ixp2000_reg_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
