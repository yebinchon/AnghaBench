; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_walkera0701.c_walkera0701_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_walkera0701.c_walkera0701_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walkera_dev = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.walkera_dev*)* @walkera0701_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walkera0701_disconnect(%struct.walkera_dev* %0) #0 {
  %2 = alloca %struct.walkera_dev*, align 8
  store %struct.walkera_dev* %0, %struct.walkera_dev** %2, align 8
  %3 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %4 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %3, i32 0, i32 3
  %5 = call i32 @hrtimer_cancel(i32* %4)
  %6 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %7 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @input_unregister_device(i32 %8)
  %10 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %11 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @parport_release(i32 %12)
  %14 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %15 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @parport_unregister_device(i32 %16)
  %18 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %19 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @parport_put_port(i32 %20)
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @parport_release(i32) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @parport_put_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
