; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_db9.c_db9_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_db9.c_db9_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.db9 = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.parport* }
%struct.parport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @db9_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db9_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.db9*, align 8
  %4 = alloca %struct.parport*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.db9* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.db9* %6, %struct.db9** %3, align 8
  %7 = load %struct.db9*, %struct.db9** %3, align 8
  %8 = getelementptr inbounds %struct.db9, %struct.db9* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.parport*, %struct.parport** %10, align 8
  store %struct.parport* %11, %struct.parport** %4, align 8
  %12 = load %struct.db9*, %struct.db9** %3, align 8
  %13 = getelementptr inbounds %struct.db9, %struct.db9* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.db9*, %struct.db9** %3, align 8
  %16 = getelementptr inbounds %struct.db9, %struct.db9* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load %struct.db9*, %struct.db9** %3, align 8
  %22 = getelementptr inbounds %struct.db9, %struct.db9* %21, i32 0, i32 2
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.parport*, %struct.parport** %4, align 8
  %25 = call i32 @parport_write_control(%struct.parport* %24, i32 0)
  %26 = load %struct.parport*, %struct.parport** %4, align 8
  %27 = call i32 @parport_data_forward(%struct.parport* %26)
  %28 = load %struct.db9*, %struct.db9** %3, align 8
  %29 = getelementptr inbounds %struct.db9, %struct.db9* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @parport_release(%struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %20, %1
  %33 = load %struct.db9*, %struct.db9** %3, align 8
  %34 = getelementptr inbounds %struct.db9, %struct.db9* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.db9* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @parport_write_control(%struct.parport*, i32) #1

declare dso_local i32 @parport_data_forward(%struct.parport*) #1

declare dso_local i32 @parport_release(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
