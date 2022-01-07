; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_i4l.c_gigaset_i4l_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_i4l.c_gigaset_i4l_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_i4l_cmd(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %7 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %15, align 8
  %17 = call i32 %16(%struct.TYPE_5__* %5)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
