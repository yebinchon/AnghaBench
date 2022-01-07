; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_wq_enet_desc.h_wq_enet_desc_enc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_wq_enet_desc.h_wq_enet_desc_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wq_enet_desc = type { i8*, i8*, i8*, i8*, i32 }

@WQ_ENET_LEN_MASK = common dso_local global i32 0, align 4
@WQ_ENET_MSS_MASK = common dso_local global i32 0, align 4
@WQ_ENET_MSS_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_LOOPBACK_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_HDRLEN_MASK = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_OM_MASK = common dso_local global i32 0, align 4
@WQ_ENET_HDRLEN_BITS = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_EOP_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_CQ_ENTRY_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wq_enet_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @wq_enet_desc_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_enet_desc_enc(%struct.wq_enet_desc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.wq_enet_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.wq_enet_desc* %0, %struct.wq_enet_desc** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @cpu_to_le64(i32 %25)
  %27 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %28 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @WQ_ENET_LEN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %34 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @WQ_ENET_MSS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @WQ_ENET_MSS_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %24, align 4
  %41 = and i32 %40, 1
  %42 = load i32, i32* @WQ_ENET_LOOPBACK_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %39, %43
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %47 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @WQ_ENET_HDRLEN_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @WQ_ENET_FLAGS_OM_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @WQ_ENET_HDRLEN_BITS, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %50, %55
  %57 = load i32, i32* %19, align 4
  %58 = and i32 %57, 1
  %59 = load i32, i32* @WQ_ENET_FLAGS_EOP_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %56, %60
  %62 = load i32, i32* %20, align 4
  %63 = and i32 %62, 1
  %64 = load i32, i32* @WQ_ENET_FLAGS_CQ_ENTRY_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %61, %65
  %67 = load i32, i32* %21, align 4
  %68 = and i32 %67, 1
  %69 = load i32, i32* @WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %66, %70
  %72 = load i32, i32* %22, align 4
  %73 = and i32 %72, 1
  %74 = load i32, i32* @WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %71, %75
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %79 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %23, align 4
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %83 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
