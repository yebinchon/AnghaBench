; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_frob_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_frob_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.ax_drvdata = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"frob: mask=%02x, val=%02x, old=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*, i8, i8)* @parport_ax88796_frob_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_ax88796_frob_control(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.ax_drvdata*, align 8
  %8 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.parport*, %struct.parport** %4, align 8
  %10 = call %struct.ax_drvdata* @pp_to_drv(%struct.parport* %9)
  store %struct.ax_drvdata* %10, %struct.ax_drvdata** %7, align 8
  %11 = load %struct.parport*, %struct.parport** %4, align 8
  %12 = call zeroext i8 @parport_ax88796_read_control(%struct.parport* %11)
  store i8 %12, i8* %8, align 1
  %13 = load %struct.ax_drvdata*, %struct.ax_drvdata** %7, align 8
  %14 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8, i8* %5, align 1
  %17 = load i8, i8* %6, align 1
  %18 = load i8, i8* %8, align 1
  %19 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 zeroext %16, i8 zeroext %17, i8 zeroext %18)
  %20 = load %struct.parport*, %struct.parport** %4, align 8
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  %31 = call i32 @parport_ax88796_write_control(%struct.parport* %20, i8 zeroext %30)
  %32 = load i8, i8* %8, align 1
  ret i8 %32
}

declare dso_local %struct.ax_drvdata* @pp_to_drv(%struct.parport*) #1

declare dso_local zeroext i8 @parport_ax88796_read_control(%struct.parport*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @parport_ax88796_write_control(%struct.parport*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
