; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_disconnect_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_disconnect_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, %struct.serio*, %struct.serio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @serio_disconnect_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_disconnect_port(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.serio*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 2
  %7 = load %struct.serio*, %struct.serio** %6, align 8
  %8 = icmp ne %struct.serio* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.serio*, %struct.serio** %2, align 8
  store %struct.serio* %10, %struct.serio** %3, align 8
  br label %11

11:                                               ; preds = %17, %9
  %12 = load %struct.serio*, %struct.serio** %3, align 8
  %13 = getelementptr inbounds %struct.serio, %struct.serio* %12, i32 0, i32 2
  %14 = load %struct.serio*, %struct.serio** %13, align 8
  %15 = icmp ne %struct.serio* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.serio*, %struct.serio** %3, align 8
  %19 = getelementptr inbounds %struct.serio, %struct.serio* %18, i32 0, i32 2
  %20 = load %struct.serio*, %struct.serio** %19, align 8
  store %struct.serio* %20, %struct.serio** %3, align 8
  br label %11

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %31, %21
  %23 = load %struct.serio*, %struct.serio** %3, align 8
  %24 = getelementptr inbounds %struct.serio, %struct.serio* %23, i32 0, i32 1
  %25 = load %struct.serio*, %struct.serio** %24, align 8
  store %struct.serio* %25, %struct.serio** %4, align 8
  %26 = load %struct.serio*, %struct.serio** %3, align 8
  %27 = getelementptr inbounds %struct.serio, %struct.serio* %26, i32 0, i32 0
  %28 = call i32 @device_release_driver(i32* %27)
  %29 = load %struct.serio*, %struct.serio** %3, align 8
  %30 = call i32 @serio_destroy_port(%struct.serio* %29)
  br label %31

31:                                               ; preds = %22
  %32 = load %struct.serio*, %struct.serio** %4, align 8
  store %struct.serio* %32, %struct.serio** %3, align 8
  %33 = load %struct.serio*, %struct.serio** %2, align 8
  %34 = icmp ne %struct.serio* %32, %33
  br i1 %34, label %22, label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.serio*, %struct.serio** %2, align 8
  %38 = getelementptr inbounds %struct.serio, %struct.serio* %37, i32 0, i32 0
  %39 = call i32 @device_release_driver(i32* %38)
  ret void
}

declare dso_local i32 @device_release_driver(i32*) #1

declare dso_local i32 @serio_destroy_port(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
