; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.raw3270_request = type { i32, i32 }
%struct.irb = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@SNS0_INTERVENTION_REQ = common dso_local global i32 0, align 4
@RAW3270_FLAGS_BUSY = common dso_local global i32 0, align 4
@RAW3270_IO_BUSY = common dso_local global i32 0, align 4
@SNS0_CMD_REJECT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@RAW3270_FLAGS_ATTN = common dso_local global i32 0, align 4
@raw3270_wait_queue = common dso_local global i32 0, align 4
@RAW3270_IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270_view*, %struct.raw3270_request*, %struct.irb*)* @raw3270_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw3270_init_irq(%struct.raw3270_view* %0, %struct.raw3270_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw3270_view*, align 8
  %6 = alloca %struct.raw3270_request*, align 8
  %7 = alloca %struct.irb*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %5, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %8 = load %struct.irb*, %struct.irb** %7, align 8
  %9 = getelementptr inbounds %struct.irb, %struct.irb* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.irb*, %struct.irb** %7, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SNS0_INTERVENTION_REQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load i32, i32* @RAW3270_FLAGS_BUSY, align 4
  %27 = load %struct.raw3270_view*, %struct.raw3270_view** %5, align 8
  %28 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %26, i32* %30)
  %32 = load i32, i32* @RAW3270_IO_BUSY, align 4
  store i32 %32, i32* %4, align 4
  br label %94

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.raw3270_request*, %struct.raw3270_request** %6, align 8
  %36 = icmp ne %struct.raw3270_request* %35, null
  br i1 %36, label %37, label %75

37:                                               ; preds = %34
  %38 = load %struct.irb*, %struct.irb** %7, align 8
  %39 = getelementptr inbounds %struct.irb, %struct.irb* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %37
  %47 = load %struct.irb*, %struct.irb** %7, align 8
  %48 = getelementptr inbounds %struct.irb, %struct.irb* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SNS0_CMD_REJECT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.raw3270_request*, %struct.raw3270_request** %6, align 8
  %59 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %65

60:                                               ; preds = %46
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.raw3270_request*, %struct.raw3270_request** %6, align 8
  %64 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %74

66:                                               ; preds = %37
  %67 = load %struct.irb*, %struct.irb** %7, align 8
  %68 = getelementptr inbounds %struct.irb, %struct.irb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.raw3270_request*, %struct.raw3270_request** %6, align 8
  %73 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %65
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.irb*, %struct.irb** %7, align 8
  %77 = getelementptr inbounds %struct.irb, %struct.irb* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load i32, i32* @RAW3270_FLAGS_ATTN, align 4
  %86 = load %struct.raw3270_view*, %struct.raw3270_view** %5, align 8
  %87 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %85, i32* %89)
  %91 = call i32 @wake_up(i32* @raw3270_wait_queue)
  br label %92

92:                                               ; preds = %84, %75
  %93 = load i32, i32* @RAW3270_IO_DONE, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %25
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
