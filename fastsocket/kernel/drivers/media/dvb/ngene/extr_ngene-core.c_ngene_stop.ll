; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_ngene_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_ngene_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NGENE_INT_ENABLE = common dso_local global i32 0, align 4
@NGENE_COMMAND = common dso_local global i32 0, align 4
@NGENE_COMMAND_HI = common dso_local global i32 0, align 4
@NGENE_STATUS = common dso_local global i32 0, align 4
@NGENE_STATUS_HI = common dso_local global i32 0, align 4
@NGENE_EVENT = common dso_local global i32 0, align 4
@NGENE_EVENT_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @ngene_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngene_stop(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %3 = load %struct.ngene*, %struct.ngene** %2, align 8
  %4 = getelementptr inbounds %struct.ngene, %struct.ngene* %3, i32 0, i32 3
  %5 = call i32 @down(i32* %4)
  %6 = load %struct.ngene*, %struct.ngene** %2, align 8
  %7 = getelementptr inbounds %struct.ngene, %struct.ngene* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @i2c_del_adapter(i32* %10)
  %12 = load %struct.ngene*, %struct.ngene** %2, align 8
  %13 = getelementptr inbounds %struct.ngene, %struct.ngene* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @i2c_del_adapter(i32* %16)
  %18 = load i32, i32* @NGENE_INT_ENABLE, align 4
  %19 = call i32 @ngwritel(i32 0, i32 %18)
  %20 = load i32, i32* @NGENE_COMMAND, align 4
  %21 = call i32 @ngwritel(i32 0, i32 %20)
  %22 = load i32, i32* @NGENE_COMMAND_HI, align 4
  %23 = call i32 @ngwritel(i32 0, i32 %22)
  %24 = load i32, i32* @NGENE_STATUS, align 4
  %25 = call i32 @ngwritel(i32 0, i32 %24)
  %26 = load i32, i32* @NGENE_STATUS_HI, align 4
  %27 = call i32 @ngwritel(i32 0, i32 %26)
  %28 = load i32, i32* @NGENE_EVENT, align 4
  %29 = call i32 @ngwritel(i32 0, i32 %28)
  %30 = load i32, i32* @NGENE_EVENT_HI, align 4
  %31 = call i32 @ngwritel(i32 0, i32 %30)
  %32 = load %struct.ngene*, %struct.ngene** %2, align 8
  %33 = getelementptr inbounds %struct.ngene, %struct.ngene* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ngene*, %struct.ngene** %2, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.ngene* %37)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @ngwritel(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ngene*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
