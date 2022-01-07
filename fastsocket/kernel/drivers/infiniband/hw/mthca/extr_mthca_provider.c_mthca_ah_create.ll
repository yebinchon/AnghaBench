; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_ah_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_ah_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32 }
%struct.mthca_ah = type { %struct.ib_ah }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*)* @mthca_ah_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @mthca_ah_create(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_ah*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.mthca_ah* @kmalloc(i32 4, i32 %8)
  store %struct.mthca_ah* %9, %struct.mthca_ah** %7, align 8
  %10 = load %struct.mthca_ah*, %struct.mthca_ah** %7, align 8
  %11 = icmp ne %struct.mthca_ah* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_ah* @ERR_PTR(i32 %14)
  store %struct.ib_ah* %15, %struct.ib_ah** %3, align 8
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @to_mdev(i32 %19)
  %21 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %22 = call i32 @to_mpd(%struct.ib_pd* %21)
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %24 = load %struct.mthca_ah*, %struct.mthca_ah** %7, align 8
  %25 = call i32 @mthca_create_ah(i32 %20, i32 %22, %struct.ib_ah_attr* %23, %struct.mthca_ah* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.mthca_ah*, %struct.mthca_ah** %7, align 8
  %30 = call i32 @kfree(%struct.mthca_ah* %29)
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.ib_ah* @ERR_PTR(i32 %31)
  store %struct.ib_ah* %32, %struct.ib_ah** %3, align 8
  br label %36

33:                                               ; preds = %16
  %34 = load %struct.mthca_ah*, %struct.mthca_ah** %7, align 8
  %35 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %34, i32 0, i32 0
  store %struct.ib_ah* %35, %struct.ib_ah** %3, align 8
  br label %36

36:                                               ; preds = %33, %28, %12
  %37 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  ret %struct.ib_ah* %37
}

declare dso_local %struct.mthca_ah* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i32 @mthca_create_ah(i32, i32, %struct.ib_ah_attr*, %struct.mthca_ah*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @kfree(%struct.mthca_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
