; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32 }

@REG_IRQSTAT = common dso_local global i32 0, align 4
@ALLIRQS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@FRAMEIRQS = common dso_local global i32 0, align 4
@TWSIIRQS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cafe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cafe_camera*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cafe_camera*
  store %struct.cafe_camera* %9, %struct.cafe_camera** %6, align 8
  %10 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %11 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %14 = load i32, i32* @REG_IRQSTAT, align 4
  %15 = call i32 @cafe_reg_read(%struct.cafe_camera* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ALLIRQS, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %22 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FRAMEIRQS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cafe_frame_irq(%struct.cafe_camera* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TWSIIRQS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %41 = load i32, i32* @REG_IRQSTAT, align 4
  %42 = load i32, i32* @TWSIIRQS, align 4
  %43 = call i32 @cafe_reg_write(%struct.cafe_camera* %40, i32 %41, i32 %42)
  %44 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %45 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %44, i32 0, i32 1
  %46 = call i32 @wake_up(i32* %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %49 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cafe_reg_read(%struct.cafe_camera*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cafe_frame_irq(%struct.cafe_camera*, i32) #1

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
