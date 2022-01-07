; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa5246a_device = type { i32 }

@SAA5246A_REGISTER_R1 = common dso_local global i32 0, align 4
@R1_INTERLACED_312_AND_HALF_312_AND_HALF_LINES = common dso_local global i32 0, align 4
@R1_DEW = common dso_local global i32 0, align 4
@R1_EXTENDED_PACKET_DISABLE = common dso_local global i32 0, align 4
@R1_DAUS_ALL_OFF = common dso_local global i32 0, align 4
@R1_8_BITS_NO_PARITY = common dso_local global i32 0, align 4
@R1_VCS_TO_SCS = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @saa5246a_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.saa5246a_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.saa5246a_device* @video_drvdata(%struct.file* %4)
  store %struct.saa5246a_device* %5, %struct.saa5246a_device** %3, align 8
  %6 = load %struct.saa5246a_device*, %struct.saa5246a_device** %3, align 8
  %7 = load i32, i32* @SAA5246A_REGISTER_R1, align 4
  %8 = load i32, i32* @R1_INTERLACED_312_AND_HALF_312_AND_HALF_LINES, align 4
  %9 = load i32, i32* @R1_DEW, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @R1_EXTENDED_PACKET_DISABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @R1_DAUS_ALL_OFF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @R1_8_BITS_NO_PARITY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @R1_VCS_TO_SCS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @COMMAND_END, align 4
  %20 = call i32 @i2c_senddata(%struct.saa5246a_device* %6, i32 %7, i32 %18, i32 %19)
  %21 = load %struct.saa5246a_device*, %struct.saa5246a_device** %3, align 8
  %22 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 0, i32* %22)
  ret i32 0
}

declare dso_local %struct.saa5246a_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @i2c_senddata(%struct.saa5246a_device*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
