; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, i32 (%struct.psmouse*, i32)*, i32, i32 (%struct.psmouse*, i32)* }

@psmouse_max_proto = common dso_local global i64 0, align 8
@PSMOUSE_PS2 = common dso_local global i64 0, align 8
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @psmouse_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_initialize(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %3 = load i64, i64* @psmouse_max_proto, align 8
  %4 = load i64, i64* @PSMOUSE_PS2, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 4
  %9 = load i32 (%struct.psmouse*, i32)*, i32 (%struct.psmouse*, i32)** %8, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 %9(%struct.psmouse* %10, i32 %13)
  %15 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 2
  %17 = load i32 (%struct.psmouse*, i32)*, i32 (%struct.psmouse*, i32)** %16, align 8
  %18 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %17(%struct.psmouse* %18, i32 %21)
  %23 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 0
  %25 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %26 = call i32 @ps2_command(i32* %24, i32* null, i32 %25)
  br label %27

27:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @ps2_command(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
