; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { %struct.TYPE_2__*, %struct.ib_pd*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %7 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %6, i32 0, i32 2
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %15 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %14, i32 0, i32 1
  %16 = load %struct.ib_pd*, %struct.ib_pd** %15, align 8
  store %struct.ib_pd* %16, %struct.ib_pd** %4, align 8
  %17 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %18 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.ib_mr*)**
  %22 = load i32 (%struct.ib_mr*)*, i32 (%struct.ib_mr*)** %21, align 8
  %23 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %24 = call i32 %22(%struct.ib_mr* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %13
  %28 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %29 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec(i32* %29)
  br label %31

31:                                               ; preds = %27, %13
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
