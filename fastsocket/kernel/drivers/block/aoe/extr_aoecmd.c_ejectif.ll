; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ejectif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ejectif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { %struct.aoeif* }
%struct.aoeif = type { %struct.net_device* }
%struct.net_device = type { i32 }

@NAOEIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoetgt*, %struct.aoeif*)* @ejectif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ejectif(%struct.aoetgt* %0, %struct.aoeif* %1) #0 {
  %3 = alloca %struct.aoetgt*, align 8
  %4 = alloca %struct.aoeif*, align 8
  %5 = alloca %struct.aoeif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.aoetgt* %0, %struct.aoetgt** %3, align 8
  store %struct.aoeif* %1, %struct.aoeif** %4, align 8
  %8 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %9 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %12 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %11, i32 0, i32 0
  %13 = load %struct.aoeif*, %struct.aoeif** %12, align 8
  %14 = load i32, i32* @NAOEIFS, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %13, i64 %15
  %17 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %16, i64 -1
  store %struct.aoeif* %17, %struct.aoeif** %5, align 8
  %18 = load %struct.aoeif*, %struct.aoeif** %5, align 8
  %19 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %20 = ptrtoint %struct.aoeif* %18 to i64
  %21 = ptrtoint %struct.aoeif* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %27 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %28 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %27, i64 1
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @memmove(%struct.aoeif* %26, %struct.aoeif* %28, i32 %29)
  %31 = load %struct.aoeif*, %struct.aoeif** %5, align 8
  %32 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %31, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call i32 @dev_put(%struct.net_device* %33)
  ret void
}

declare dso_local i32 @memmove(%struct.aoeif*, %struct.aoeif*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
