; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_wrreg16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_wrreg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i32, i32 }

@BE1 = common dso_local global i32 0, align 4
@BE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*, i32, i32)* @ks_wrreg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_wrreg16(%struct.ks_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ks_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BE1, align 4
  %9 = load i32, i32* @BE0, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 2
  %13 = shl i32 %10, %12
  %14 = or i32 %7, %13
  %15 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %16 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %18 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %21 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iowrite16(i32 %19, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ks_net*, %struct.ks_net** %4, align 8
  %26 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iowrite16(i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @iowrite16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
