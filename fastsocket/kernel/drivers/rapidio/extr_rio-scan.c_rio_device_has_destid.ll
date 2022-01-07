; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio-scan.c_rio_device_has_destid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio-scan.c_rio_device_has_destid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_OPS_READ = common dso_local global i32 0, align 4
@RIO_OPS_WRITE = common dso_local global i32 0, align 4
@RIO_OPS_ATOMIC_TST_SWP = common dso_local global i32 0, align 4
@RIO_OPS_ATOMIC_INC = common dso_local global i32 0, align 4
@RIO_OPS_ATOMIC_DEC = common dso_local global i32 0, align 4
@RIO_OPS_ATOMIC_SET = common dso_local global i32 0, align 4
@RIO_OPS_ATOMIC_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32)* @rio_device_has_destid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_device_has_destid(%struct.rio_mport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rio_mport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @RIO_OPS_READ, align 4
  %9 = load i32, i32* @RIO_OPS_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @RIO_OPS_ATOMIC_TST_SWP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RIO_OPS_ATOMIC_INC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RIO_OPS_ATOMIC_DEC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RIO_OPS_ATOMIC_SET, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RIO_OPS_ATOMIC_CLR, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
