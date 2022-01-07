; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_pp.c_enic_are_pp_different.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_pp.c_enic_are_pp_different.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic_port_profile = type { i32, i32, i32, i32 }

@PORT_UUID_MAX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic_port_profile*, %struct.enic_port_profile*)* @enic_are_pp_different to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_are_pp_different(%struct.enic_port_profile* %0, %struct.enic_port_profile* %1) #0 {
  %3 = alloca %struct.enic_port_profile*, align 8
  %4 = alloca %struct.enic_port_profile*, align 8
  store %struct.enic_port_profile* %0, %struct.enic_port_profile** %3, align 8
  store %struct.enic_port_profile* %1, %struct.enic_port_profile** %4, align 8
  %5 = load %struct.enic_port_profile*, %struct.enic_port_profile** %3, align 8
  %6 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.enic_port_profile*, %struct.enic_port_profile** %4, align 8
  %9 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strcmp(i32 %7, i32 %10)
  %12 = load %struct.enic_port_profile*, %struct.enic_port_profile** %3, align 8
  %13 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.enic_port_profile*, %struct.enic_port_profile** %4, align 8
  %16 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PORT_UUID_MAX, align 4
  %19 = call i32 @memcmp(i32 %14, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = or i32 %11, %23
  %25 = load %struct.enic_port_profile*, %struct.enic_port_profile** %3, align 8
  %26 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.enic_port_profile*, %struct.enic_port_profile** %4, align 8
  %29 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PORT_UUID_MAX, align 4
  %32 = call i32 @memcmp(i32 %27, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = or i32 %24, %36
  %38 = load %struct.enic_port_profile*, %struct.enic_port_profile** %3, align 8
  %39 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.enic_port_profile*, %struct.enic_port_profile** %4, align 8
  %42 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcmp(i32 %40, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = or i32 %37, %49
  ret i32 %50
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
