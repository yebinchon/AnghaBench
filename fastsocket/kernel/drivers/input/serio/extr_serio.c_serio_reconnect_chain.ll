; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_reconnect_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_reconnect_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @serio_reconnect_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_reconnect_chain(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  br label %3

3:                                                ; preds = %12, %1
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call i64 @serio_reconnect_port(%struct.serio* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %15

8:                                                ; preds = %3
  %9 = load %struct.serio*, %struct.serio** %2, align 8
  %10 = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 0
  %11 = load %struct.serio*, %struct.serio** %10, align 8
  store %struct.serio* %11, %struct.serio** %2, align 8
  br label %12

12:                                               ; preds = %8
  %13 = load %struct.serio*, %struct.serio** %2, align 8
  %14 = icmp ne %struct.serio* %13, null
  br i1 %14, label %3, label %15

15:                                               ; preds = %12, %7
  ret void
}

declare dso_local i64 @serio_reconnect_port(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
