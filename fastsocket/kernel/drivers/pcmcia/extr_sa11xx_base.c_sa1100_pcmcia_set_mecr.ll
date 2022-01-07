; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa11xx_base.c_sa1100_pcmcia_set_mecr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_sa11xx_base.c_sa1100_pcmcia_set_mecr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.soc_pcmcia_socket*, i32, i32)* }
%struct.soc_pcmcia_timing = type { i32, i32, i32 }

@MECR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"FAST %X  BSM %X  BSA %X  BSIO %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, i32)* @sa1100_pcmcia_set_mecr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_pcmcia_set_mecr(%struct.soc_pcmcia_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_pcmcia_timing, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %13 = call i32 @soc_common_pcmcia_get_timing(%struct.soc_pcmcia_socket* %12, %struct.soc_pcmcia_timing* %5)
  %14 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.soc_pcmcia_socket*, i32, i32)*, i32 (%struct.soc_pcmcia_socket*, i32, i32)** %17, align 8
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %18(%struct.soc_pcmcia_socket* %19, i32 %20, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.soc_pcmcia_socket*, i32, i32)*, i32 (%struct.soc_pcmcia_socket*, i32, i32)** %27, align 8
  %29 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %28(%struct.soc_pcmcia_socket* %29, i32 %30, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %35 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.soc_pcmcia_socket*, i32, i32)*, i32 (%struct.soc_pcmcia_socket*, i32, i32)** %37, align 8
  %39 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds %struct.soc_pcmcia_timing, %struct.soc_pcmcia_timing* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %38(%struct.soc_pcmcia_socket* %39, i32 %40, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = load i64, i64* @MECR, align 8
  store i64 %46, i64* %6, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %49 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @MECR_FAST_SET(i64 %47, i32 %50, i32 0)
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %54 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @MECR_BSIO_SET(i64 %52, i32 %55, i32 %56)
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %60 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @MECR_BSA_SET(i64 %58, i32 %61, i32 %62)
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %66 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @MECR_BSM_SET(i64 %64, i32 %67, i32 %68)
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %2
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* @MECR, align 8
  br label %75

75:                                               ; preds = %73, %2
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @local_irq_restore(i64 %76)
  %78 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %81 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @MECR_FAST_GET(i64 %79, i32 %82)
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %86 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @MECR_BSM_GET(i64 %84, i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %91 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @MECR_BSA_GET(i64 %89, i32 %92)
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %96 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @MECR_BSIO_GET(i64 %94, i32 %97)
  %99 = call i32 @debug(%struct.soc_pcmcia_socket* %78, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %88, i32 %93, i32 %98)
  ret i32 0
}

declare dso_local i32 @soc_common_pcmcia_get_timing(%struct.soc_pcmcia_socket*, %struct.soc_pcmcia_timing*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @MECR_FAST_SET(i64, i32, i32) #1

declare dso_local i32 @MECR_BSIO_SET(i64, i32, i32) #1

declare dso_local i32 @MECR_BSA_SET(i64, i32, i32) #1

declare dso_local i32 @MECR_BSM_SET(i64, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @debug(%struct.soc_pcmcia_socket*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @MECR_FAST_GET(i64, i32) #1

declare dso_local i32 @MECR_BSM_GET(i64, i32) #1

declare dso_local i32 @MECR_BSA_GET(i64, i32) #1

declare dso_local i32 @MECR_BSIO_GET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
