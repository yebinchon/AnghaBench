; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.lance_private = type { i64, i64, i32, i32, %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@LE_MO_PROM = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lance_regs*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.lance_private* @netdev_priv(%struct.net_device* %6)
  store %struct.lance_private* %7, %struct.lance_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %13 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %12, i32 0, i32 4
  %14 = load %struct.lance_regs*, %struct.lance_regs** %13, align 8
  store %struct.lance_regs* %14, %struct.lance_regs** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %88

19:                                               ; preds = %1
  %20 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %21 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %24 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %29 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %28, i32 0, i32 3
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 4, %31
  %33 = sdiv i32 %32, 100
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = call i32 @mod_timer(i32* %29, i64 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @netif_wake_queue(%struct.net_device* %37)
  br label %88

39:                                               ; preds = %19
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @netif_stop_queue(%struct.net_device* %40)
  %42 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %43 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %42, i32 0, i32 1
  %44 = load i32, i32* @LE_CSR0, align 4
  %45 = call i32 @writereg(i32* %43, i32 %44)
  %46 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %47 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %46, i32 0, i32 0
  %48 = load i32, i32* @LE_C0_STOP, align 4
  %49 = call i32 @writereg(i32* %47, i32 %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @lance_init_ring(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFF_PROMISC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %39
  %59 = load i32, i32* @LE_MO_PROM, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @mode, align 4
  %62 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %63 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @lib_ptr(i32* %60, i32 %61, i32 %64)
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %59
  store i32 %67, i32* %65, align 4
  br label %81

68:                                               ; preds = %39
  %69 = load i32, i32* @LE_MO_PROM, align 4
  %70 = xor i32 %69, -1
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @mode, align 4
  %73 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %74 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32* @lib_ptr(i32* %71, i32 %72, i32 %75)
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %70
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call i32 @lance_load_multicast(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %68, %58
  %82 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %83 = call i32 @load_csrs(%struct.lance_private* %82)
  %84 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %85 = call i32 @init_restart_lance(%struct.lance_private* %84)
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @netif_wake_queue(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %81, %27, %18
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32* @lib_ptr(i32*, i32, i32) #1

declare dso_local i32 @lance_load_multicast(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
