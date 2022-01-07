; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_read_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ax88796.c_parport_ax88796_read_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.ax_drvdata = type { i32 }

@AX_CPR_STRB = common dso_local global i32 0, align 4
@PARPORT_CONTROL_STROBE = common dso_local global i32 0, align 4
@AX_CPR_ATFD = common dso_local global i32 0, align 4
@PARPORT_CONTROL_AUTOFD = common dso_local global i32 0, align 4
@AX_CPR_nINIT = common dso_local global i32 0, align 4
@PARPORT_CONTROL_INIT = common dso_local global i32 0, align 4
@AX_CPR_SLCTIN = common dso_local global i32 0, align 4
@PARPORT_CONTROL_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*)* @parport_ax88796_read_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_ax88796_read_control(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.ax_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %6 = load %struct.parport*, %struct.parport** %2, align 8
  %7 = call %struct.ax_drvdata* @pp_to_drv(%struct.parport* %6)
  store %struct.ax_drvdata* %7, %struct.ax_drvdata** %3, align 8
  %8 = load %struct.ax_drvdata*, %struct.ax_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readb(i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AX_CPR_STRB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @PARPORT_CONTROL_STROBE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AX_CPR_ATFD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @AX_CPR_nINIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @PARPORT_CONTROL_INIT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AX_CPR_SLCTIN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %5, align 4
  %49 = trunc i32 %48 to i8
  ret i8 %49
}

declare dso_local %struct.ax_drvdata* @pp_to_drv(%struct.parport*) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
