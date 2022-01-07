; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_tmdc.c_tmdc_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_tmdc.c_tmdc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.tmdc = type { %struct.tmdc**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @tmdc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmdc_disconnect(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.tmdc*, align 8
  %4 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %5 = load %struct.gameport*, %struct.gameport** %2, align 8
  %6 = call %struct.tmdc* @gameport_get_drvdata(%struct.gameport* %5)
  store %struct.tmdc* %6, %struct.tmdc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %42

10:                                               ; preds = %7
  %11 = load %struct.tmdc*, %struct.tmdc** %3, align 8
  %12 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %11, i32 0, i32 0
  %13 = load %struct.tmdc**, %struct.tmdc*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tmdc*, %struct.tmdc** %13, i64 %15
  %17 = load %struct.tmdc*, %struct.tmdc** %16, align 8
  %18 = icmp ne %struct.tmdc* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %10
  %20 = load %struct.tmdc*, %struct.tmdc** %3, align 8
  %21 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %20, i32 0, i32 0
  %22 = load %struct.tmdc**, %struct.tmdc*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tmdc*, %struct.tmdc** %22, i64 %24
  %26 = load %struct.tmdc*, %struct.tmdc** %25, align 8
  %27 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @input_unregister_device(i32 %28)
  %30 = load %struct.tmdc*, %struct.tmdc** %3, align 8
  %31 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %30, i32 0, i32 0
  %32 = load %struct.tmdc**, %struct.tmdc*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tmdc*, %struct.tmdc** %32, i64 %34
  %36 = load %struct.tmdc*, %struct.tmdc** %35, align 8
  %37 = call i32 @kfree(%struct.tmdc* %36)
  br label %38

38:                                               ; preds = %19, %10
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %7

42:                                               ; preds = %7
  %43 = load %struct.gameport*, %struct.gameport** %2, align 8
  %44 = call i32 @gameport_close(%struct.gameport* %43)
  %45 = load %struct.gameport*, %struct.gameport** %2, align 8
  %46 = call i32 @gameport_set_drvdata(%struct.gameport* %45, i32* null)
  %47 = load %struct.tmdc*, %struct.tmdc** %3, align 8
  %48 = call i32 @kfree(%struct.tmdc* %47)
  ret void
}

declare dso_local %struct.tmdc* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.tmdc*) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
