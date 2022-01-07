; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_flush_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_vfdi_flush_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_vf = type { i32, i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_vf*)* @efx_vfdi_flush_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_vfdi_flush_clear(%struct.efx_vf* %0) #0 {
  %2 = alloca %struct.efx_vf*, align 8
  store %struct.efx_vf* %0, %struct.efx_vf** %2, align 8
  %3 = load %struct.efx_vf*, %struct.efx_vf** %2, align 8
  %4 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @memset(i32 %5, i32 0, i32 4)
  %7 = load %struct.efx_vf*, %struct.efx_vf** %2, align 8
  %8 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.efx_vf*, %struct.efx_vf** %2, align 8
  %10 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @memset(i32 %11, i32 0, i32 4)
  %13 = load %struct.efx_vf*, %struct.efx_vf** %2, align 8
  %14 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.efx_vf*, %struct.efx_vf** %2, align 8
  %16 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.efx_vf*, %struct.efx_vf** %2, align 8
  %20 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %19, i32 0, i32 0
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
