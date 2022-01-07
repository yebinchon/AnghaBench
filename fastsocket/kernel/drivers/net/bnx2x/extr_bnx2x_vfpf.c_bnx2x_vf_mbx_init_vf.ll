; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_init_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_init_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vfpf_init_tlv }
%struct.vfpf_init_tlv = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_init_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_init_vf(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.vfpf_init_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %8 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.vfpf_init_tlv* %12, %struct.vfpf_init_tlv** %7, align 8
  %13 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %14 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %19 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %25 = load %struct.vfpf_init_tlv*, %struct.vfpf_init_tlv** %7, align 8
  %26 = getelementptr inbounds %struct.vfpf_init_tlv, %struct.vfpf_init_tlv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @bnx2x_vf_init(%struct.bnx2x* %23, %struct.bnx2x_virtf* %24, i32* %28)
  %30 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %34 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %32, %struct.bnx2x_virtf* %33)
  ret void
}

declare dso_local i32 @bnx2x_vf_init(%struct.bnx2x*, %struct.bnx2x_virtf*, i32*) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
