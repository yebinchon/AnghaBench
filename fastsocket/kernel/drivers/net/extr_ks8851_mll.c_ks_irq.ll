; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { %struct.net_device* }
%struct.net_device = type { i32 }

@KS_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_RXI = common dso_local global i32 0, align 4
@IRQ_LCI = common dso_local global i32 0, align 4
@IRQ_TXI = common dso_local global i32 0, align 4
@IRQ_LDI = common dso_local global i32 0, align 4
@KS_PMECR = common dso_local global i32 0, align 4
@PMECR_WKEVT_MASK = common dso_local global i32 0, align 4
@PMECR_WKEVT_LINK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ks_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ks_net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ks_net*
  store %struct.ks_net* %11, %struct.ks_net** %6, align 8
  %12 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %13 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %16 = call i32 @ks_save_cmd_reg(%struct.ks_net* %15)
  %17 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %18 = load i32, i32* @KS_ISR, align 4
  %19 = call i32 @ks_rdreg16(%struct.ks_net* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %28 = call i32 @ks_restore_cmd_reg(%struct.ks_net* %27)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %87

30:                                               ; preds = %2
  %31 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %32 = load i32, i32* @KS_ISR, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ks_wrreg16(%struct.ks_net* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IRQ_RXI, align 4
  %37 = and i32 %35, %36
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call i32 @ks_rcv(%struct.ks_net* %41, %struct.net_device* %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IRQ_LCI, align 4
  %47 = and i32 %45, %46
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %53 = call i32 @ks_update_link_status(%struct.net_device* %51, %struct.ks_net* %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IRQ_TXI, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call i32 @netif_wake_queue(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IRQ_LDI, align 4
  %66 = and i32 %64, %65
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %71 = load i32, i32* @KS_PMECR, align 4
  %72 = call i32 @ks_rdreg16(%struct.ks_net* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @PMECR_WKEVT_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %78 = load i32, i32* @KS_PMECR, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @PMECR_WKEVT_LINK, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @ks_wrreg16(%struct.ks_net* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %69, %63
  %84 = load %struct.ks_net*, %struct.ks_net** %6, align 8
  %85 = call i32 @ks_restore_cmd_reg(%struct.ks_net* %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ks_save_cmd_reg(%struct.ks_net*) #1

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ks_restore_cmd_reg(%struct.ks_net*) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ks_rcv(%struct.ks_net*, %struct.net_device*) #1

declare dso_local i32 @ks_update_link_status(%struct.net_device*, %struct.ks_net*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
