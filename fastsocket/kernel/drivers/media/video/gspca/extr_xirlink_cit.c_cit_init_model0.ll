; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_init_model0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_init_model0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_init_model0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_init_model0(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @cit_write_reg(%struct.gspca_dev* %3, i32 0, i32 256)
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = call i32 @cit_write_reg(%struct.gspca_dev* %5, i32 1, i32 274)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @cit_write_reg(%struct.gspca_dev* %7, i32 0, i32 1024)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @cit_write_reg(%struct.gspca_dev* %9, i32 1, i32 1024)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @cit_write_reg(%struct.gspca_dev* %11, i32 0, i32 1056)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @cit_write_reg(%struct.gspca_dev* %13, i32 1, i32 1056)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @cit_write_reg(%struct.gspca_dev* %15, i32 13, i32 1033)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @cit_write_reg(%struct.gspca_dev* %17, i32 2, i32 1034)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i32 24, i32 1029)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @cit_write_reg(%struct.gspca_dev* %21, i32 8, i32 1077)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @cit_write_reg(%struct.gspca_dev* %23, i32 38, i32 1035)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @cit_write_reg(%struct.gspca_dev* %25, i32 7, i32 1079)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @cit_write_reg(%struct.gspca_dev* %27, i32 21, i32 1071)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @cit_write_reg(%struct.gspca_dev* %29, i32 43, i32 1081)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @cit_write_reg(%struct.gspca_dev* %31, i32 38, i32 1082)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @cit_write_reg(%struct.gspca_dev* %33, i32 8, i32 1080)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @cit_write_reg(%struct.gspca_dev* %35, i32 30, i32 1067)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @cit_write_reg(%struct.gspca_dev* %37, i32 65, i32 1068)
  ret i32 0
}

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
