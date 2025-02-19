; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_loopback_link_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_loopback_link_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_link_state, i32, i32 }
%struct.efx_link_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_loopback_link_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_loopback_link_poll(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_link_state, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 0
  %6 = bitcast %struct.efx_link_state* %3 to i8*
  %7 = bitcast %struct.efx_link_state* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 16, i1 false)
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 2
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = call i32 @LOOPBACK_INTERNAL(%struct.efx_nic* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %34, i32 0, i32 2
  store i32 10000, i32* %35, align 4
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 0
  %38 = call i32 @efx_link_state_equal(%struct.efx_link_state* %37, %struct.efx_link_state* %3)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @mutex_is_locked(i32*) #2

declare dso_local i32 @LOOPBACK_INTERNAL(%struct.efx_nic*) #2

declare dso_local i32 @efx_link_state_equal(%struct.efx_link_state*, %struct.efx_link_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
