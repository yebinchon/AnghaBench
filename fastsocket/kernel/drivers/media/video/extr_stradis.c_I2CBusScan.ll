; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CBusScan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CBusScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*)* @I2CBusScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @I2CBusScan(%struct.saa7146* %0) #0 {
  %2 = alloca %struct.saa7146*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 255
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @I2CRead(%struct.saa7146* %8, i32 %9, i32 0, i32 0)
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @attach_inform(%struct.saa7146* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %7
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  ret void
}

declare dso_local i64 @I2CRead(%struct.saa7146*, i32, i32, i32) #1

declare dso_local i32 @attach_inform(%struct.saa7146*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
