; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_phy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { i32 }

@MIREGADR = common dso_local global i32 0, align 4
@MICMD = common dso_local global i32 0, align 4
@MICMD_MIIRD = common dso_local global i32 0, align 4
@MIRDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enc28j60_net*, i32)* @enc28j60_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc28j60_phy_read(%struct.enc28j60_net* %0, i32 %1) #0 {
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %7 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %10 = load i32, i32* @MIREGADR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @nolock_regb_write(%struct.enc28j60_net* %9, i32 %10, i32 %11)
  %13 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %14 = load i32, i32* @MICMD, align 4
  %15 = load i32, i32* @MICMD_MIIRD, align 4
  %16 = call i32 @nolock_regb_write(%struct.enc28j60_net* %13, i32 %14, i32 %15)
  %17 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %18 = call i32 @wait_phy_ready(%struct.enc28j60_net* %17)
  %19 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %20 = load i32, i32* @MICMD, align 4
  %21 = call i32 @nolock_regb_write(%struct.enc28j60_net* %19, i32 %20, i32 0)
  %22 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %23 = load i32, i32* @MIRDL, align 4
  %24 = call i32 @nolock_regw_read(%struct.enc28j60_net* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %26 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nolock_regb_write(%struct.enc28j60_net*, i32, i32) #1

declare dso_local i32 @wait_phy_ready(%struct.enc28j60_net*) #1

declare dso_local i32 @nolock_regw_read(%struct.enc28j60_net*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
