; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_initialize_cs4341.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_initialize_cs4341.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"stradis%d: CS4341 initialized (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*)* @initialize_cs4341 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_cs4341(%struct.saa7146* %0) #0 {
  %2 = alloca %struct.saa7146*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 200
  br i1 %6, label %7, label %27

7:                                                ; preds = %4
  %8 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %9 = call i32 @I2CWrite(%struct.saa7146* %8, i32 34, i32 1, i32 17, i32 2)
  %10 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %11 = call i32 @I2CWrite(%struct.saa7146* %10, i32 34, i32 2, i32 73, i32 2)
  %12 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %13 = call i32 @I2CWrite(%struct.saa7146* %12, i32 34, i32 3, i32 0, i32 2)
  %14 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %15 = call i32 @I2CWrite(%struct.saa7146* %14, i32 34, i32 4, i32 0, i32 2)
  %16 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %17 = call i32 @I2CWrite(%struct.saa7146* %16, i32 34, i32 1, i32 16, i32 2)
  %18 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %19 = call i32 @I2CRead(%struct.saa7146* %18, i32 34, i32 2, i32 1)
  %20 = icmp eq i32 %19, 73
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %27

22:                                               ; preds = %7
  %23 = call i32 (...) @schedule()
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %21, %4
  %28 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %29 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @I2CWrite(%struct.saa7146*, i32, i32, i32, i32) #1

declare dso_local i32 @I2CRead(%struct.saa7146*, i32, i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
