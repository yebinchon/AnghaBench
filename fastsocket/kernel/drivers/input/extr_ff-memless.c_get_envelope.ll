; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-memless.c_get_envelope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-memless.c_get_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_envelope = type { i32 }
%struct.ff_effect = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ff_envelope }
%struct.TYPE_4__ = type { %struct.ff_envelope }

@get_envelope.empty_envelope = internal constant %struct.ff_envelope zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ff_envelope* (%struct.ff_effect*)* @get_envelope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ff_envelope* @get_envelope(%struct.ff_effect* %0) #0 {
  %2 = alloca %struct.ff_envelope*, align 8
  %3 = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %0, %struct.ff_effect** %3, align 8
  %4 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %5 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 128, label %7
    i32 129, label %12
  ]

7:                                                ; preds = %1
  %8 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %9 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ff_envelope* %11, %struct.ff_envelope** %2, align 8
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ff_envelope* %16, %struct.ff_envelope** %2, align 8
  br label %18

17:                                               ; preds = %1
  store %struct.ff_envelope* @get_envelope.empty_envelope, %struct.ff_envelope** %2, align 8
  br label %18

18:                                               ; preds = %17, %12, %7
  %19 = load %struct.ff_envelope*, %struct.ff_envelope** %2, align 8
  ret %struct.ff_envelope* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
