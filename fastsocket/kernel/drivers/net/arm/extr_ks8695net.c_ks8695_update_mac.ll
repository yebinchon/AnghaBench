; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_update_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { %struct.net_device* }
%struct.net_device = type { i32* }

@KS8695_MAL = common dso_local global i32 0, align 4
@KS8695_MAH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8695_priv*)* @ks8695_update_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_update_mac(%struct.ks8695_priv* %0) #0 {
  %2 = alloca %struct.ks8695_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %2, align 8
  %6 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 24
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %14, %20
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %21, %27
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 0
  %35 = or i32 %28, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 0
  %48 = or i32 %41, %47
  store i32 %48, i32* %4, align 4
  %49 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %50 = load i32, i32* @KS8695_MAL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ks8695_writereg(%struct.ks8695_priv* %49, i32 %50, i32 %51)
  %53 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %54 = load i32, i32* @KS8695_MAH, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ks8695_writereg(%struct.ks8695_priv* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
