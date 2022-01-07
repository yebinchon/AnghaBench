; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_create_ah_from_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_create_ah_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_ah_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @ib_create_ah_from_wc(%struct.ib_pd* %0, %struct.ib_wc* %1, %struct.ib_grh* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_ah*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.ib_grh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ah_attr, align 4
  %11 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %7, align 8
  store %struct.ib_grh* %2, %struct.ib_grh** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %13 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %17 = load %struct.ib_grh*, %struct.ib_grh** %8, align 8
  %18 = call i32 @ib_init_ah_from_wc(i32 %14, i32 %15, %struct.ib_wc* %16, %struct.ib_grh* %17, %struct.ib_ah_attr* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.ib_ah* @ERR_PTR(i32 %22)
  store %struct.ib_ah* %23, %struct.ib_ah** %5, align 8
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %26 = call %struct.ib_ah* @ib_create_ah(%struct.ib_pd* %25, %struct.ib_ah_attr* %10)
  store %struct.ib_ah* %26, %struct.ib_ah** %5, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  ret %struct.ib_ah* %28
}

declare dso_local i32 @ib_init_ah_from_wc(i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_ah_attr*) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.ib_ah* @ib_create_ah(%struct.ib_pd*, %struct.ib_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
