; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }

@TUN_TUN_DEV = common dso_local global i32 0, align 4
@IFF_TUN = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@TUN_NO_PI = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@TUN_ONE_QUEUE = common dso_local global i32 0, align 4
@IFF_ONE_QUEUE = common dso_local global i32 0, align 4
@TUN_VNET_HDR = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*)* @tun_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_flags(%struct.tun_struct* %0) #0 {
  %2 = alloca %struct.tun_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TUN_TUN_DEV, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @IFF_TUN, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @IFF_TAP, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %20 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TUN_NO_PI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @IFF_NO_PI, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %31 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TUN_ONE_QUEUE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @IFF_ONE_QUEUE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %42 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TUN_VNET_HDR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @IFF_VNET_HDR, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
