; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-f300.c_f300_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-f300.c_f300_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f300_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  store i32 5, i32* %6, align 16
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  store i32 56, i32* %7, align 4
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %22 [
    i32 130, label %10
    i32 129, label %14
    i32 128, label %18
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  store i32 2, i32* %12, align 16
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  store i32 0, i32* %13, align 4
  br label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  store i32 2, i32* %16, align 16
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  store i32 1, i32* %17, align 4
  br label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %20, align 16
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %2, %18, %14, %10
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %25 = call i32 @f300_xfer(%struct.dvb_frontend* %23, i32* %24)
  ret i32 %25
}

declare dso_local i32 @f300_xfer(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
