; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_sd_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_sd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sd*)* }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Disconnecting the stv06xx device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @sd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.gspca_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.gspca_dev* %6, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load i32, i32* @D_PROBE, align 4
  %10 = call i32 @PDEBUG(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %14, align 8
  %16 = icmp ne i32 (%struct.sd*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %21, align 8
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = call i32 %22(%struct.sd* %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = call i32 @gspca_disconnect(%struct.usb_interface* %26)
  ret void
}

declare dso_local %struct.gspca_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @gspca_disconnect(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
