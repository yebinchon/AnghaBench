; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_gsc.h_parport_gsc_read_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_gsc.h_parport_gsc_read_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport_gsc_private* }
%struct.parport_gsc_private = type { i8 }

@PARPORT_CONTROL_STROBE = common dso_local global i8 0, align 1
@PARPORT_CONTROL_AUTOFD = common dso_local global i8 0, align 1
@PARPORT_CONTROL_INIT = common dso_local global i8 0, align 1
@PARPORT_CONTROL_SELECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*)* @parport_gsc_read_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_gsc_read_control(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.parport_gsc_private*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %5 = load i8, i8* @PARPORT_CONTROL_STROBE, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @PARPORT_CONTROL_AUTOFD, align 1
  %8 = zext i8 %7 to i32
  %9 = or i32 %6, %8
  %10 = load i8, i8* @PARPORT_CONTROL_INIT, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i8, i8* @PARPORT_CONTROL_SELECT, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  %17 = load %struct.parport*, %struct.parport** %2, align 8
  %18 = getelementptr inbounds %struct.parport, %struct.parport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.parport_gsc_private*, %struct.parport_gsc_private** %20, align 8
  store %struct.parport_gsc_private* %21, %struct.parport_gsc_private** %4, align 8
  %22 = load %struct.parport_gsc_private*, %struct.parport_gsc_private** %4, align 8
  %23 = getelementptr inbounds %struct.parport_gsc_private, %struct.parport_gsc_private* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = trunc i32 %28 to i8
  ret i8 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
