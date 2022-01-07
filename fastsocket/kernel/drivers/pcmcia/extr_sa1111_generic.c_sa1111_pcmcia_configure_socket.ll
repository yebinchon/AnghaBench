; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1111_generic.c_sa1111_pcmcia_configure_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa1111_generic.c_sa1111_pcmcia_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sa1111_dev = type { i64 }

@PCCR_S0_RST = common dso_local global i32 0, align 4
@PCCR_S0_FLT = common dso_local global i32 0, align 4
@PCCR_S0_PWAITEN = common dso_local global i32 0, align 4
@PCCR_S0_PSE = common dso_local global i32 0, align 4
@PCCR_S1_RST = common dso_local global i32 0, align 4
@PCCR_S1_FLT = common dso_local global i32 0, align 4
@PCCR_S1_PWAITEN = common dso_local global i32 0, align 4
@PCCR_S1_PSE = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@SA1111_PCCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1111_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.sa1111_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %12 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sa1111_dev* @SA1111_DEV(i32 %13)
  store %struct.sa1111_dev* %14, %struct.sa1111_dev** %6, align 8
  %15 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %16 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %34 [
    i32 0, label %18
    i32 1, label %26
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @PCCR_S0_RST, align 4
  %20 = load i32, i32* @PCCR_S0_FLT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PCCR_S0_PWAITEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PCCR_S0_PSE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* @PCCR_S1_RST, align 4
  %28 = load i32, i32* @PCCR_S1_FLT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PCCR_S1_PWAITEN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PCCR_S1_PSE, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %110

35:                                               ; preds = %26, %18
  store i32 0, i32* %8, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @PCCR_S0_PWAITEN, align 4
  %42 = load i32, i32* @PCCR_S1_PWAITEN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 50
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @PCCR_S0_PSE, align 4
  %53 = load i32, i32* @PCCR_S1_PSE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SS_RESET, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @PCCR_S0_RST, align 4
  %66 = load i32, i32* @PCCR_S1_RST, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @PCCR_S0_FLT, align 4
  %79 = load i32, i32* @PCCR_S1_FLT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %70
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @local_irq_save(i64 %84)
  %86 = load %struct.sa1111_dev*, %struct.sa1111_dev** %6, align 8
  %87 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SA1111_PCCR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @sa1111_readl(i64 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sa1111_dev*, %struct.sa1111_dev** %6, align 8
  %103 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SA1111_PCCR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @sa1111_writel(i32 %101, i64 %106)
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @local_irq_restore(i64 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %83, %34
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.sa1111_dev* @SA1111_DEV(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sa1111_readl(i64) #1

declare dso_local i32 @sa1111_writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
