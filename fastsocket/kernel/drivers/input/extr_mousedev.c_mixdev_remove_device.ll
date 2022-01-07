; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mixdev_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mixdev_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mousedev = type { i32, i32, i64 }

@mousedev_mix = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev*)* @mixdev_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixdev_remove_device(%struct.mousedev* %0) #0 {
  %2 = alloca %struct.mousedev*, align 8
  store %struct.mousedev* %0, %struct.mousedev** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mousedev_mix, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %7 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %12 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %14 = call i32 @mousedev_close_device(%struct.mousedev* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %17 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %16, i32 0, i32 1
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mousedev_mix, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %23 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %22, i32 0, i32 0
  %24 = call i32 @put_device(i32* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mousedev_close_device(%struct.mousedev*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
