; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_sharpsl.c_sharpsl_pcmcia_init_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_sharpsl.c_sharpsl_pcmcia_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scoop_pcmcia_dev = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i64)* }
%struct.soc_pcmcia_socket = type { i64 }

@SCOOP_DEV = common dso_local global %struct.scoop_pcmcia_dev* null, align 8
@platform_scoop_config = common dso_local global %struct.TYPE_2__* null, align 8
@SCOOP_CPR = common dso_local global i32 0, align 4
@NO_KEEP_VS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*)* @sharpsl_pcmcia_init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_pcmcia_init_reset(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca %struct.scoop_pcmcia_dev*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %4 = load %struct.scoop_pcmcia_dev*, %struct.scoop_pcmcia_dev** @SCOOP_DEV, align 8
  %5 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %6 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.scoop_pcmcia_dev, %struct.scoop_pcmcia_dev* %4, i64 %7
  store %struct.scoop_pcmcia_dev* %8, %struct.scoop_pcmcia_dev** %3, align 8
  %9 = load %struct.scoop_pcmcia_dev*, %struct.scoop_pcmcia_dev** %3, align 8
  %10 = getelementptr inbounds %struct.scoop_pcmcia_dev, %struct.scoop_pcmcia_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @reset_scoop(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_scoop_config, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %14, align 8
  %16 = icmp ne i32 (i32, i32, i64)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_scoop_config, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %19, align 8
  %21 = load %struct.scoop_pcmcia_dev*, %struct.scoop_pcmcia_dev** %3, align 8
  %22 = getelementptr inbounds %struct.scoop_pcmcia_dev, %struct.scoop_pcmcia_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 %20(i32 %23, i32 0, i64 %26)
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.scoop_pcmcia_dev*, %struct.scoop_pcmcia_dev** %3, align 8
  %30 = getelementptr inbounds %struct.scoop_pcmcia_dev, %struct.scoop_pcmcia_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCOOP_CPR, align 4
  %33 = call i32 @write_scoop_reg(i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %28, %17
  %35 = load i32, i32* @NO_KEEP_VS, align 4
  %36 = load %struct.scoop_pcmcia_dev*, %struct.scoop_pcmcia_dev** %3, align 8
  %37 = getelementptr inbounds %struct.scoop_pcmcia_dev, %struct.scoop_pcmcia_dev* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.scoop_pcmcia_dev*, %struct.scoop_pcmcia_dev** %3, align 8
  %39 = getelementptr inbounds %struct.scoop_pcmcia_dev, %struct.scoop_pcmcia_dev* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local i32 @reset_scoop(i32) #1

declare dso_local i32 @write_scoop_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
