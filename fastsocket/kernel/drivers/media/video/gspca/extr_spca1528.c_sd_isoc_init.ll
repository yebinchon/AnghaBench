; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca1528.c_sd_isoc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca1528.c_sd_isoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_isoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_isoc_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = call i32 @reg_r(%struct.gspca_dev* %4, i32 0, i32 9504, i32 1)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @wait_status_0(%struct.gspca_dev* %6)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = call i32 @reg_w(%struct.gspca_dev* %8, i32 197, i32 3, i32 0)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @wait_status_1(%struct.gspca_dev* %10)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @wait_status_0(%struct.gspca_dev* %12)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @reg_wb(%struct.gspca_dev* %24, i32 37, i32 0, i32 4, i32 %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @reg_r(%struct.gspca_dev* %27, i32 37, i32 4, i32 1)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @reg_wb(%struct.gspca_dev* %29, i32 39, i32 0, i32 0, i32 6)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @reg_r(%struct.gspca_dev* %31, i32 39, i32 0, i32 1)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  ret i32 %35
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @wait_status_0(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @wait_status_1(%struct.gspca_dev*) #1

declare dso_local i32 @reg_wb(%struct.gspca_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
