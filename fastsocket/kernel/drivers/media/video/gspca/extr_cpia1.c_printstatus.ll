; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_printstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_printstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"status: %02x %02x %02x %02x %02x %02x %02x %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_params*)* @printstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printstatus(%struct.cam_params* %0) #0 {
  %2 = alloca %struct.cam_params*, align 8
  store %struct.cam_params* %0, %struct.cam_params** %2, align 8
  %3 = load i32, i32* @D_PROBE, align 4
  %4 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %5 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %9 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %13 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %17 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %21 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %25 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %29 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cam_params*, %struct.cam_params** %2, align 8
  %33 = getelementptr inbounds %struct.cam_params, %struct.cam_params* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35)
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
