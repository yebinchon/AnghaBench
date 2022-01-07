; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_dealloc_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mr.c_ipath_dealloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32, i32 }
%struct.ipath_fmr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ipath_fmr** }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_dealloc_fmr(%struct.ib_fmr* %0) #0 {
  %2 = alloca %struct.ib_fmr*, align 8
  %3 = alloca %struct.ipath_fmr*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_fmr* %0, %struct.ib_fmr** %2, align 8
  %5 = load %struct.ib_fmr*, %struct.ib_fmr** %2, align 8
  %6 = call %struct.ipath_fmr* @to_ifmr(%struct.ib_fmr* %5)
  store %struct.ipath_fmr* %6, %struct.ipath_fmr** %3, align 8
  %7 = load %struct.ib_fmr*, %struct.ib_fmr** %2, align 8
  %8 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_4__* @to_idev(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ib_fmr*, %struct.ib_fmr** %2, align 8
  %13 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ipath_free_lkey(i32* %11, i32 %14)
  %16 = load %struct.ipath_fmr*, %struct.ipath_fmr** %3, align 8
  %17 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %23, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.ipath_fmr*, %struct.ipath_fmr** %3, align 8
  %25 = getelementptr inbounds %struct.ipath_fmr, %struct.ipath_fmr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.ipath_fmr**, %struct.ipath_fmr*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ipath_fmr*, %struct.ipath_fmr** %27, i64 %30
  %32 = load %struct.ipath_fmr*, %struct.ipath_fmr** %31, align 8
  %33 = call i32 @kfree(%struct.ipath_fmr* %32)
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.ipath_fmr*, %struct.ipath_fmr** %3, align 8
  %36 = call i32 @kfree(%struct.ipath_fmr* %35)
  ret i32 0
}

declare dso_local %struct.ipath_fmr* @to_ifmr(%struct.ib_fmr*) #1

declare dso_local i32 @ipath_free_lkey(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @to_idev(i32) #1

declare dso_local i32 @kfree(%struct.ipath_fmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
