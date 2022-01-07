; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mthca_init_ib_param = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"INIT_IB failed, return code %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32)* @init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_port(%struct.mthca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_init_ib_param, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.mthca_init_ib_param* %6, i32 0, i32 20)
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %6, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %6, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mthca_init_ib_param, %struct.mthca_init_ib_param* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mthca_INIT_IB(%struct.mthca_dev* %33, %struct.mthca_init_ib_param* %6, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mthca_warn(%struct.mthca_dev* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @memset(%struct.mthca_init_ib_param*, i32, i32) #1

declare dso_local i32 @mthca_INIT_IB(%struct.mthca_dev*, %struct.mthca_init_ib_param*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
