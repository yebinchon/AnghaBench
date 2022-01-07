; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_setup_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_setup_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, %struct.TYPE_2__, %struct.ioc3* }
%struct.TYPE_2__ = type { i64 }
%struct.ioc3 = type { i32 }

@ETCSR_FD = common dso_local global i32 0, align 4
@EMCR_DUPLEX = common dso_local global i32 0, align 4
@ETCSR_HD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_setup_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_setup_duplex(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.ioc3*, align 8
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %4 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %5 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %4, i32 0, i32 2
  %6 = load %struct.ioc3*, %struct.ioc3** %5, align 8
  store %struct.ioc3* %6, %struct.ioc3** %3, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @ETCSR_FD, align 4
  %14 = call i32 @ioc3_w_etcsr(i32 %13)
  %15 = load i32, i32* @EMCR_DUPLEX, align 4
  %16 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %17 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @ETCSR_HD, align 4
  %22 = call i32 @ioc3_w_etcsr(i32 %21)
  %23 = load i32, i32* @EMCR_DUPLEX, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %26 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %20, %12
  %30 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %31 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ioc3_w_emcr(i32 %32)
  ret void
}

declare dso_local i32 @ioc3_w_etcsr(i32) #1

declare dso_local i32 @ioc3_w_emcr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
