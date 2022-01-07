; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cp_private = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IntrStatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: intr, status %04x cmd %02x cpcmd %04x\0A\00", align 1
@Cmd = common dso_local global i32 0, align 4
@CpCmd = common dso_local global i32 0, align 4
@cp_rx_intr_mask = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@RxOK = common dso_local global i32 0, align 4
@RxErr = common dso_local global i32 0, align 4
@RxEmpty = common dso_local global i32 0, align 4
@RxFIFOOvr = common dso_local global i32 0, align 4
@cp_norx_intr_mask = common dso_local global i32 0, align 4
@TxOK = common dso_local global i32 0, align 4
@TxErr = common dso_local global i32 0, align 4
@TxEmpty = common dso_local global i32 0, align 4
@SWInt = common dso_local global i32 0, align 4
@LinkChg = common dso_local global i32 0, align 4
@PciErr = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: PCI bus error, status=%04x, PCI status=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cp_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp eq %struct.net_device* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %144

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call %struct.cp_private* @netdev_priv(%struct.net_device* %21)
  store %struct.cp_private* %22, %struct.cp_private** %7, align 8
  %23 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %24 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* @IntrStatus, align 4
  %27 = call i32 @cpr16(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %20
  br label %138

34:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  %35 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %36 = call i64 @netif_msg_intr(%struct.cp_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @Cmd, align 4
  %44 = call i32 @cpr8(i32 %43)
  %45 = load i32, i32* @CpCmd, align 4
  %46 = call i32 @cpr16(i32 %45)
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %38, %34
  %49 = load i32, i32* @IntrStatus, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @cp_rx_intr_mask, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @cpw16(i32 %49, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = call i32 @netif_running(%struct.net_device* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @IntrMask, align 4
  %64 = call i32 @cpw16(i32 %63, i32 0)
  br label %138

65:                                               ; preds = %48
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @RxOK, align 4
  %68 = load i32, i32* @RxErr, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RxEmpty, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RxFIFOOvr, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %66, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %78 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %77, i32 0, i32 3
  %79 = call i64 @napi_schedule_prep(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* @IntrMask, align 4
  %83 = load i32, i32* @cp_norx_intr_mask, align 4
  %84 = call i32 @cpw16_f(i32 %82, i32 %83)
  %85 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %86 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %85, i32 0, i32 3
  %87 = call i32 @__napi_schedule(i32* %86)
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @TxOK, align 4
  %92 = load i32, i32* @TxErr, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @TxEmpty, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SWInt, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %90, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %102 = call i32 @cp_tx(%struct.cp_private* %101)
  br label %103

103:                                              ; preds = %100, %89
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @LinkChg, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %110 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %109, i32 0, i32 2
  %111 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %112 = call i32 @netif_msg_link(%struct.cp_private* %111)
  %113 = call i32 @mii_check_media(i32* %110, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @PciErr, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %121 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PCI_STATUS, align 4
  %124 = call i32 @pci_read_config_word(i32 %122, i32 %123, i32* %10)
  %125 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %126 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PCI_STATUS, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @pci_write_config_word(i32 %127, i32 %128, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %119, %114
  br label %138

138:                                              ; preds = %137, %62, %33
  %139 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %140 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @IRQ_RETVAL(i32 %142)
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %18
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpr16(i32) #1

declare dso_local i64 @netif_msg_intr(%struct.cp_private*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cpr8(i32) #1

declare dso_local i32 @cpw16(i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @cpw16_f(i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @cp_tx(%struct.cp_private*) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.cp_private*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
