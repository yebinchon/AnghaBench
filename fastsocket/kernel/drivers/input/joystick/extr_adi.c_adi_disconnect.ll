; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.adi_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @adi_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adi_disconnect(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adi_port*, align 8
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %5 = load %struct.gameport*, %struct.gameport** %2, align 8
  %6 = call %struct.adi_port* @gameport_get_drvdata(%struct.gameport* %5)
  store %struct.adi_port* %6, %struct.adi_port** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load %struct.adi_port*, %struct.adi_port** %4, align 8
  %12 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = load %struct.adi_port*, %struct.adi_port** %4, align 8
  %22 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @input_unregister_device(i32 %28)
  br label %30

30:                                               ; preds = %20, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.gameport*, %struct.gameport** %2, align 8
  %36 = call i32 @gameport_close(%struct.gameport* %35)
  %37 = load %struct.gameport*, %struct.gameport** %2, align 8
  %38 = call i32 @gameport_set_drvdata(%struct.gameport* %37, i32* null)
  %39 = load %struct.adi_port*, %struct.adi_port** %4, align 8
  %40 = call i32 @kfree(%struct.adi_port* %39)
  ret void
}

declare dso_local %struct.adi_port* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, i32*) #1

declare dso_local i32 @kfree(%struct.adi_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
