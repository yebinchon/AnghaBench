; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@HDLCDRV_MAGIC = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ser12_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ser12_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.baycom_state*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %11)
  store %struct.baycom_state* %12, %struct.baycom_state** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %17 = icmp ne %struct.baycom_state* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %20 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %15, %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %128

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IIR(i32 %30)
  %32 = call zeroext i8 @inb(i32 %31)
  store i8 %32, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %128

38:                                               ; preds = %27
  %39 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %40 = call i32 @baycom_int_freq(%struct.baycom_state* %39)
  br label %41

41:                                               ; preds = %93, %38
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 6
  switch i32 %44, label %81 [
    i32 6, label %45
    i32 4, label %51
    i32 2, label %57
  ]

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @LSR(i32 %48)
  %50 = call zeroext i8 @inb(i32 %49)
  br label %87

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @RBR(i32 %54)
  %56 = call zeroext i8 @inb(i32 %55)
  br label %87

57:                                               ; preds = %41
  %58 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %59 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %58, i32 0, i32 0
  %60 = call i32 @hdlcdrv_ptt(%struct.TYPE_7__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %65 = call i32 @ser12_tx(%struct.net_device* %63, %struct.baycom_state* %64)
  br label %75

66:                                               ; preds = %57
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %69 = call i32 @ser12_rx(%struct.net_device* %67, %struct.baycom_state* %68)
  %70 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %71 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %66, %62
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @THR(i32 %78)
  %80 = call i32 @outb(i32 0, i32 %79)
  br label %87

81:                                               ; preds = %41
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MSR(i32 %84)
  %86 = call zeroext i8 @inb(i32 %85)
  br label %87

87:                                               ; preds = %81, %75, %51, %45
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IIR(i32 %90)
  %92 = call zeroext i8 @inb(i32 %91)
  store i8 %92, i8* %8, align 1
  br label %93

93:                                               ; preds = %87
  %94 = load i8, i8* %8, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %41, label %99

99:                                               ; preds = %93
  %100 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %101 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %107 = call i64 @SER12_ARB_DIVIDER(%struct.baycom_state* %106)
  %108 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %109 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = call i32 (...) @local_irq_enable()
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %114 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %113, i32 0, i32 0
  %115 = call i32 @hdlcdrv_arbitrate(%struct.net_device* %112, %struct.TYPE_7__* %114)
  br label %116

116:                                              ; preds = %105, %99
  %117 = call i32 (...) @local_irq_enable()
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %120 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %119, i32 0, i32 0
  %121 = call i32 @hdlcdrv_transmitter(%struct.net_device* %118, %struct.TYPE_7__* %120)
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %124 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %123, i32 0, i32 0
  %125 = call i32 @hdlcdrv_receiver(%struct.net_device* %122, %struct.TYPE_7__* %124)
  %126 = call i32 (...) @local_irq_disable()
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %116, %36, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @IIR(i32) #1

declare dso_local i32 @baycom_int_freq(%struct.baycom_state*) #1

declare dso_local i32 @LSR(i32) #1

declare dso_local i32 @RBR(i32) #1

declare dso_local i32 @hdlcdrv_ptt(%struct.TYPE_7__*) #1

declare dso_local i32 @ser12_tx(%struct.net_device*, %struct.baycom_state*) #1

declare dso_local i32 @ser12_rx(%struct.net_device*, %struct.baycom_state*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @THR(i32) #1

declare dso_local i32 @MSR(i32) #1

declare dso_local i64 @SER12_ARB_DIVIDER(%struct.baycom_state*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @hdlcdrv_arbitrate(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @hdlcdrv_transmitter(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @hdlcdrv_receiver(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
