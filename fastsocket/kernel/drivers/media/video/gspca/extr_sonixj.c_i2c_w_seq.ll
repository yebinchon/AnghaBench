; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_i2c_w_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_i2c_w_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, [8 x i64]*)* @i2c_w_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_w_seq(%struct.gspca_dev* %0, [8 x i64]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [8 x i64]*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [8 x i64]* %1, [8 x i64]** %4, align 8
  br label %5

5:                                                ; preds = %26, %2
  %6 = load [8 x i64]*, [8 x i64]** %4, align 8
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load [8 x i64]*, [8 x i64]** %4, align 8
  %12 = getelementptr inbounds [8 x i64], [8 x i64]* %11, i64 0, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DELAY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = load [8 x i64]*, [8 x i64]** %4, align 8
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 0
  %20 = call i32 @i2c_w8(%struct.gspca_dev* %17, i64* %19)
  br label %26

21:                                               ; preds = %10
  %22 = load [8 x i64]*, [8 x i64]** %4, align 8
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %22, i64 0, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @msleep(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load [8 x i64]*, [8 x i64]** %4, align 8
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %27, i32 1
  store [8 x i64]* %28, [8 x i64]** %4, align 8
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i64*) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
