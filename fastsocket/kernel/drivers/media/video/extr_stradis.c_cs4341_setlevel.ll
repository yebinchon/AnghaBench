; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_cs4341_setlevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_cs4341_setlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*, i32, i32)* @cs4341_setlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4341_setlevel(%struct.saa7146* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7146*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 94
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 94, %10 ], [ %12, %11 ]
  %15 = call i32 @I2CWrite(%struct.saa7146* %7, i32 34, i32 3, i32 %14, i32 2)
  %16 = load %struct.saa7146*, %struct.saa7146** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 94
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 94, %19 ], [ %21, %20 ]
  %24 = call i32 @I2CWrite(%struct.saa7146* %16, i32 34, i32 4, i32 %23, i32 2)
  ret void
}

declare dso_local i32 @I2CWrite(%struct.saa7146*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
