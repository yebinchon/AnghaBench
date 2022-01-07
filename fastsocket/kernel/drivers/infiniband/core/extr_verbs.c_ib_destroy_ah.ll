; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { %struct.TYPE_2__*, %struct.ib_pd* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_ah(%struct.ib_ah* %0) #0 {
  %2 = alloca %struct.ib_ah*, align 8
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %2, align 8
  %5 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %6 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %5, i32 0, i32 1
  %7 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  store %struct.ib_pd* %7, %struct.ib_pd** %3, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %9 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.ib_ah*)**
  %13 = load i32 (%struct.ib_ah*)*, i32 (%struct.ib_ah*)** %12, align 8
  %14 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %15 = call i32 %13(%struct.ib_ah* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = call i32 @atomic_dec(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
