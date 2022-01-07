; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.baycom_state*)* @ser12_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ser12_tx(%struct.net_device* %0, %struct.baycom_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.baycom_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.baycom_state* %1, %struct.baycom_state** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call i32 @ser12_set_divisor(%struct.net_device* %5, i32 12)
  %7 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %8 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = or i32 14, %15
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MCR(i32 %19)
  %21 = call i32 @outb(i32 %16, i32 %20)
  %22 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %23 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %29 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %28, i32 0, i32 1
  %30 = call i32 @hdlcdrv_getbits(i32* %29)
  %31 = or i32 65536, %30
  %32 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %33 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %2
  %36 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %37 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %42 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = xor i32 %40, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %51 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %55 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %56, align 4
  ret void
}

declare dso_local i32 @ser12_set_divisor(%struct.net_device*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @hdlcdrv_getbits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
