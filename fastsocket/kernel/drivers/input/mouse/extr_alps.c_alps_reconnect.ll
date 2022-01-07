; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_reconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.alps_data* }
%struct.alps_data = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_reconnect(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 0
  %7 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  store %struct.alps_data* %7, %struct.alps_data** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = call i32 @psmouse_reset(%struct.psmouse* %8)
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %12 = call i64 @alps_identify(%struct.psmouse* %10, %struct.alps_data* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %17 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.psmouse*)**
  %19 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %18, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = call i32 %19(%struct.psmouse* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @alps_identify(%struct.psmouse*, %struct.alps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
