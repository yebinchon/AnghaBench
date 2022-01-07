; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.h_asd_init_ascb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.h_asd_init_ascb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_ascb = type { i32, %struct.TYPE_4__, %struct.asd_ha_struct*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, %struct.asd_ascb*)* @asd_init_ascb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_ascb(%struct.asd_ha_struct* %0, %struct.asd_ascb* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_ascb*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_ascb* %1, %struct.asd_ascb** %4, align 8
  %5 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %6 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %5, i32 0, i32 5
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %9 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %13 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %15 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %16 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %15, i32 0, i32 2
  store %struct.asd_ha_struct* %14, %struct.asd_ha_struct** %16, align 8
  %17 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %18 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %21 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %20, i32 0, i32 1
  %22 = call i32 @init_timer(%struct.TYPE_4__* %21)
  %23 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %24 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
