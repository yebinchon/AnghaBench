; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_read_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_read_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i64 }

@MAHR = common dso_local global i64 0, align 8
@MALR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @read_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MAHR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @ctrl_inl(i64 %9)
  %11 = ashr i32 %10, 24
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @MAHR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ctrl_inl(i64 %18)
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @MAHR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @ctrl_inl(i64 %28)
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @MAHR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @ctrl_inl(i64 %38)
  %40 = and i32 %39, 255
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %40, i32* %44, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @MALR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @ctrl_inl(i64 %47)
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 %50, i32* %54, align 4
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @MALR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @ctrl_inl(i64 %57)
  %59 = and i32 %58, 255
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %59, i32* %63, align 4
  ret void
}

declare dso_local i32 @ctrl_inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
