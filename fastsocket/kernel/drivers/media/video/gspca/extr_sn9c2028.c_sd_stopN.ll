; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sd_stopN.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c2028.c_sd_stopN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Camera Stop read failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Camera Stop command failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stopN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stopN(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = call i32 @sn9c2028_read1(%struct.gspca_dev* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @D_ERR, align 4
  %11 = call i32 @PDEBUG(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 6)
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  store i32 20, i32* %15, align 16
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %18 = call i32 @sn9c2028_command(%struct.gspca_dev* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @D_ERR, align 4
  %23 = call i32 @PDEBUG(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @sn9c2028_read1(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sn9c2028_command(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
