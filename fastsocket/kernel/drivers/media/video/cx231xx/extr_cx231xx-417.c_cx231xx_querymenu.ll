; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_cx231xx_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_cx231xx_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.v4l2_querymenu = type { i32 }
%struct.v4l2_queryctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.v4l2_querymenu*)* @cx231xx_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_querymenu(%struct.cx231xx* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca %struct.v4l2_querymenu*, align 8
  %5 = alloca %struct.v4l2_queryctrl, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %4, align 8
  %6 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %11 = call i32 @cx231xx_queryctrl(%struct.cx231xx* %10, %struct.v4l2_queryctrl* %5)
  %12 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %13 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cx2341x_ctrl_get_menu(i32* %14, i32 %17)
  %19 = call i32 @v4l2_ctrl_query_menu(%struct.v4l2_querymenu* %12, %struct.v4l2_queryctrl* %5, i32 %18)
  ret i32 %19
}

declare dso_local i32 @cx231xx_queryctrl(%struct.cx231xx*, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @v4l2_ctrl_query_menu(%struct.v4l2_querymenu*, %struct.v4l2_queryctrl*, i32) #1

declare dso_local i32 @cx2341x_ctrl_get_menu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
