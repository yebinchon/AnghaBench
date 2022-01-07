; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_write_sensor_72a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_write_sensor_72a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, [2 x i64]*)* @write_sensor_72a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_sensor_72a(%struct.gspca_dev* %0, [2 x i64]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [2 x i64]*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [2 x i64]* %1, [2 x i64]** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load [2 x i64]*, [2 x i64]** %4, align 8
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = load [2 x i64]*, [2 x i64]** %4, align 8
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = load [2 x i64]*, [2 x i64]** %4, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @i2c_write(%struct.gspca_dev* %11, i64 %14, i64 %17)
  %19 = load [2 x i64]*, [2 x i64]** %4, align 8
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i32 1
  store [2 x i64]* %20, [2 x i64]** %4, align 8
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
