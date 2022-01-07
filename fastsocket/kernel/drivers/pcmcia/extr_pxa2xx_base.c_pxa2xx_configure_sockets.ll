; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_base.c_pxa2xx_configure_sockets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pxa2xx_base.c_pxa2xx_configure_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.pcmcia_low_level* }
%struct.pcmcia_low_level = type { i32, i32 }

@MECR_CIT = common dso_local global i32 0, align 4
@MECR = common dso_local global i32 0, align 4
@MECR_NOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @pxa2xx_configure_sockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa2xx_configure_sockets(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pcmcia_low_level*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %5, align 8
  store %struct.pcmcia_low_level* %6, %struct.pcmcia_low_level** %3, align 8
  %7 = load i32, i32* @MECR_CIT, align 4
  %8 = load i32, i32* @MECR, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @MECR, align 4
  %10 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = call i64 (...) @machine_is_viper()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @MECR_NOS, align 4
  %23 = load i32, i32* @MECR, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @MECR, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @MECR_NOS, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @MECR, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* @MECR, align 4
  br label %30

30:                                               ; preds = %25, %21
  ret void
}

declare dso_local i64 @machine_is_viper(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
