; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_poll_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_poll_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@poll_sensor.poll1 = internal constant [26 x i32] [i32 103, i32 5, i32 104, i32 129, i32 105, i32 128, i32 106, i32 130, i32 107, i32 104, i32 108, i32 105, i32 114, i32 217, i32 115, i32 52, i32 116, i32 50, i32 117, i32 146, i32 118, i32 0, i32 9, i32 1, i32 96, i32 20], align 16
@poll_sensor.poll2 = internal constant [14 x i32] [i32 103, i32 2, i32 104, i32 113, i32 105, i32 114, i32 114, i32 169, i32 115, i32 2, i32 115, i32 2, i32 96, i32 20], align 16
@poll_sensor.noise03 = internal constant [20 x i32] [i32 166, i32 10, i32 234, i32 207, i32 190, i32 38, i32 177, i32 95, i32 161, i32 177, i32 218, i32 107, i32 219, i32 152, i32 223, i32 12, i32 194, i32 128, i32 195, i32 16], align 16
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"[Sensor requires polling]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @poll_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load i32, i32* @D_STREAM, align 4
  %4 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = call i32 @reg_w_buf(%struct.gspca_dev* %5, i32* getelementptr inbounds ([26 x i32], [26 x i32]* @poll_sensor.poll1, i64 0, i64 0), i32 104)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @reg_w_buf(%struct.gspca_dev* %7, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @poll_sensor.poll2, i64 0, i64 0), i32 56)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @reg_w_buf(%struct.gspca_dev* %9, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @poll_sensor.noise03, i64 0, i64 0), i32 80)
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
