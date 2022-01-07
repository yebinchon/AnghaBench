; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_check_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_check_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cqe = type { i32, i32, i64 }

@EHEA_CQE_TYPE_RQ = common dso_local global i32 0, align 4
@EHEA_CQE_STAT_ERR_MASK = common dso_local global i32 0, align 4
@EHEA_CQE_STAT_ERR_TCP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_cqe*, i32*)* @ehea_check_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_check_cqe(%struct.ehea_cqe* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehea_cqe*, align 8
  %5 = alloca i32*, align 8
  store %struct.ehea_cqe* %0, %struct.ehea_cqe** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ehea_cqe*, %struct.ehea_cqe** %4, align 8
  %7 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @EHEA_CQE_TYPE_RQ, align 4
  %10 = and i32 %8, %9
  %11 = ashr i32 %10, 5
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ehea_cqe*, %struct.ehea_cqe** %4, align 8
  %14 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EHEA_CQE_STAT_ERR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.ehea_cqe*, %struct.ehea_cqe** %4, align 8
  %22 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EHEA_CQE_STAT_ERR_TCP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.ehea_cqe*, %struct.ehea_cqe** %4, align 8
  %29 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %32, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
