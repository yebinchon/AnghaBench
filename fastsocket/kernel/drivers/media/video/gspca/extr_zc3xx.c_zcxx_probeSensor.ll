; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_zcxx_probeSensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_zcxx_probeSensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @zcxx_probeSensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcxx_probeSensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 130, label %12
    i32 128, label %13
  ]

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @sif_probe(%struct.gspca_dev* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %1, %20
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @vga_2wr_probe(%struct.gspca_dev* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @vga_3wr_probe(%struct.gspca_dev* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %26, %18, %12, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @sif_probe(%struct.gspca_dev*) #1

declare dso_local i32 @vga_2wr_probe(%struct.gspca_dev*) #1

declare dso_local i32 @vga_3wr_probe(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
