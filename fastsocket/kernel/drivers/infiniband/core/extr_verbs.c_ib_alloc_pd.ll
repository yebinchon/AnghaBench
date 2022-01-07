; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32, i32*, %struct.ib_device* }
%struct.ib_device = type { %struct.ib_pd* (%struct.ib_device*, i32*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_pd* @ib_alloc_pd(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_pd*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %5 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %4, i32 0, i32 0
  %6 = load %struct.ib_pd* (%struct.ib_device*, i32*, i32*)*, %struct.ib_pd* (%struct.ib_device*, i32*, i32*)** %5, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = call %struct.ib_pd* %6(%struct.ib_device* %7, i32* null, i32* null)
  store %struct.ib_pd* %8, %struct.ib_pd** %3, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %10 = call i32 @IS_ERR(%struct.ib_pd* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %15 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %14, i32 0, i32 2
  store %struct.ib_device* %13, %struct.ib_device** %15, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %17 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 0
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  ret %struct.ib_pd* %22
}

declare dso_local i32 @IS_ERR(%struct.ib_pd*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
