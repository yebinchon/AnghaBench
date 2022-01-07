; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_key_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_key_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mousedev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@mousedev_mix = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev*, i32, i32)* @mousedev_key_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_key_event(%struct.mousedev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mousedev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mousedev* %0, %struct.mousedev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %14 [
    i32 128, label %9
    i32 142, label %9
    i32 134, label %9
    i32 130, label %10
    i32 141, label %10
    i32 132, label %10
    i32 140, label %11
    i32 135, label %11
    i32 129, label %11
    i32 133, label %11
    i32 139, label %12
    i32 137, label %12
    i32 131, label %12
    i32 138, label %13
    i32 136, label %13
  ]

9:                                                ; preds = %3, %3, %3
  store i32 0, i32* %7, align 4
  br label %15

10:                                               ; preds = %3, %3, %3
  store i32 1, i32* %7, align 4
  br label %15

11:                                               ; preds = %3, %3, %3, %3
  store i32 2, i32* %7, align 4
  br label %15

12:                                               ; preds = %3, %3, %3
  store i32 3, i32* %7, align 4
  br label %15

13:                                               ; preds = %3, %3
  store i32 4, i32* %7, align 4
  br label %15

14:                                               ; preds = %3
  br label %40

15:                                               ; preds = %13, %12, %11, %10, %9
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mousedev*, %struct.mousedev** %4, align 8
  %21 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %19, i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mousedev_mix, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %24, i32* %27)
  br label %40

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mousedev*, %struct.mousedev** %4, align 8
  %32 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @clear_bit(i32 %30, i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mousedev_mix, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %35, i32* %38)
  br label %40

40:                                               ; preds = %14, %29, %18
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
