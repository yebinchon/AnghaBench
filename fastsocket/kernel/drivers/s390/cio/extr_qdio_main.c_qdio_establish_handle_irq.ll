; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_establish_handle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_establish_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qest irq\00", align 1
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%4x EQ:error\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ds: %2x cs:%2x\00", align 1
@QDIO_IRQ_STATE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32)* @qdio_establish_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_establish_handle_irq(%struct.ccw_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %11, align 8
  store %struct.qdio_irq* %12, %struct.qdio_irq** %7, align 8
  %13 = load i32, i32* @DBF_INFO, align 4
  %14 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %15 = call i32 @DBF_DEV_EVENT(i32 %13, %struct.qdio_irq* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %38

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %22 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %38

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28
  %35 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %36 = load i32, i32* @QDIO_IRQ_STATE_ESTABLISHED, align 4
  %37 = call i32 @qdio_set_state(%struct.qdio_irq* %35, i32 %36)
  br label %50

38:                                               ; preds = %33, %27, %18
  %39 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %40 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %48 = load i32, i32* @QDIO_IRQ_STATE_ERR, align 4
  %49 = call i32 @qdio_set_state(%struct.qdio_irq* %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
