; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_trizeps4.c_trizeps_pcmcia_socket_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_trizeps4.c_trizeps_pcmcia_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_state = type { i32, i32, i32, i32, i32, i32, i32 }

@trizeps_pcmcia_status = common dso_local global i16* null, align 8
@ConXS_CFSR_BVD_MASK = common dso_local global i16 0, align 2
@ConXS_CFSR_BVD1 = common dso_local global i16 0, align 2
@GPIO_PCD = common dso_local global i32 0, align 4
@GPIO_PRDY = common dso_local global i32 0, align 4
@ConXS_CFSR_BVD2 = common dso_local global i16 0, align 2
@ConXS_CFSR_VS1 = common dso_local global i16 0, align 2
@ConXS_CFSR_VS2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*, %struct.pcmcia_state*)* @trizeps_pcmcia_socket_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trizeps_pcmcia_socket_state(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_state* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_state*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.pcmcia_state* %1, %struct.pcmcia_state** %4, align 8
  store i16 0, i16* %5, align 2
  %7 = call zeroext i16 (...) @CFSR_readw()
  store i16 %7, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16*, i16** @trizeps_pcmcia_status, align 8
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i16, i16* %10, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %9, %16
  %18 = load i16, i16* @ConXS_CFSR_BVD_MASK, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %6, align 2
  %22 = load i16, i16* %6, align 2
  %23 = icmp ne i16 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load i16, i16* %5, align 2
  %26 = load i16*, i16** @trizeps_pcmcia_status, align 8
  %27 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %28 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i16, i16* %26, i64 %29
  store i16 %25, i16* %30, align 2
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @ConXS_CFSR_BVD1, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %42 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  switch i64 %43, label %116 [
    i64 0, label %44
    i64 1, label %101
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @GPIO_PCD, align 4
  %46 = call i32 @gpio_get_value(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 1
  %50 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %51 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @GPIO_PRDY, align 4
  %53 = call i32 @gpio_get_value(i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %58 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i16, i16* %5, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @ConXS_CFSR_BVD1, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %68 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i16, i16* %5, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @ConXS_CFSR_BVD2, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %78 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i16, i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @ConXS_CFSR_VS1, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %88 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load i16, i16* %5, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @ConXS_CFSR_VS2, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 1
  %97 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %98 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %100 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %99, i32 0, i32 6
  store i32 0, i32* %100, align 4
  br label %116

101:                                              ; preds = %40
  %102 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %103 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %105 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %107 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %109 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %111 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %110, i32 0, i32 4
  store i32 0, i32* %111, align 4
  %112 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %113 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %112, i32 0, i32 5
  store i32 0, i32* %113, align 4
  %114 = load %struct.pcmcia_state*, %struct.pcmcia_state** %4, align 8
  %115 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %114, i32 0, i32 6
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %40, %101, %44
  ret void
}

declare dso_local zeroext i16 @CFSR_readw(...) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
