; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_mainstone.c_mst_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_mainstone.c_mst_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i32, i64 }

@MST_PCMCIA0 = common dso_local global i64 0, align 8
@MST_PCMCIA1 = common dso_local global i64 0, align 8
@mst_pcmcia_status = common dso_local global i64* null, align 8
@MST_PCMCIA_nSTSCHG_BVD1 = common dso_local global i64 0, align 8
@MAINSTONE_S0_STSCHG_IRQ = common dso_local global i32 0, align 4
@MAINSTONE_S1_STSCHG_IRQ = common dso_local global i32 0, align 4
@MST_PCMCIA_nCD = common dso_local global i64 0, align 8
@MST_PCMCIA_nIRQ = common dso_local global i64 0, align 8
@MST_PCMCIA_nSPKR_BVD2 = common dso_local global i64 0, align 8
@MST_PCMCIA_nVS1 = common dso_local global i64 0, align 8
@MST_PCMCIA_nVS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @mst_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mst_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  %7 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %8 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @MST_PCMCIA0, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @MST_PCMCIA1, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64*, i64** @mst_pcmcia_status, align 8
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %20 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = xor i64 %17, %23
  %25 = load i64, i64* @MST_PCMCIA_nSTSCHG_BVD1, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %15
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** @mst_pcmcia_status, align 8
  %32 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %33 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MST_PCMCIA_nSTSCHG_BVD1, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %29
  %41 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %42 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @MAINSTONE_S0_STSCHG_IRQ, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @MAINSTONE_S1_STSCHG_IRQ, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @enable_irq(i32 %50)
  br label %64

52:                                               ; preds = %29
  %53 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %54 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @MAINSTONE_S0_STSCHG_IRQ, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @MAINSTONE_S1_STSCHG_IRQ, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @disable_irq(i32 %62)
  br label %64

64:                                               ; preds = %61, %49
  br label %65

65:                                               ; preds = %64, %15
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @MST_PCMCIA_nCD, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 1
  %72 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %73 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @MST_PCMCIA_nIRQ, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %81 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @MST_PCMCIA_nSTSCHG_BVD1, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %89 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @MST_PCMCIA_nSPKR_BVD2, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  %96 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %97 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @MST_PCMCIA_nVS1, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 1
  %104 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %105 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @MST_PCMCIA_nVS2, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  %112 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %113 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %115 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  ret void
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
