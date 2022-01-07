; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_ns83820_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_ns83820_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ns83820 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@IMR = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@CR_RST = common dso_local global i32 0, align 4
@ISR_TXURN = common dso_local global i32 0, align 4
@ISR_TXIDLE = common dso_local global i32 0, align 4
@ISR_TXERR = common dso_local global i32 0, align 4
@ISR_TXDESC = common dso_local global i32 0, align 4
@ISR_TXOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ns83820_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ns83820*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ns83820* @PRIV(%struct.net_device* %4)
  store %struct.ns83820* %5, %struct.ns83820** %3, align 8
  %6 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %7 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %6, i32 0, i32 5
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %10 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IMR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %16 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IER, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %22 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IER, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %28 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %31 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @synchronize_irq(i32 %34)
  %36 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %37 = load i32, i32* @CR_RST, align 4
  %38 = call i32 @ns83820_do_reset(%struct.ns83820* %36, i32 %37)
  %39 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %40 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @synchronize_irq(i32 %43)
  %45 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %46 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load i32, i32* @ISR_TXURN, align 4
  %49 = load i32, i32* @ISR_TXIDLE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ISR_TXERR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ISR_TXDESC, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ISR_TXOK, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %59 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %63 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %66 = call i32 @ns83820_cleanup_rx(%struct.ns83820* %65)
  %67 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %68 = call i32 @ns83820_cleanup_tx(%struct.ns83820* %67)
  ret i32 0
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @ns83820_do_reset(%struct.ns83820*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ns83820_cleanup_rx(%struct.ns83820*) #1

declare dso_local i32 @ns83820_cleanup_tx(%struct.ns83820*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
