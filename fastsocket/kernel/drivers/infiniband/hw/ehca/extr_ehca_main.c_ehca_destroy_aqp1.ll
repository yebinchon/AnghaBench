; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_destroy_aqp1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_destroy_aqp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_sport = type { i32, i32* }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Cannot destroy AQP1 QP. ret=%i\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot destroy AQP1 CQ. ret=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_sport*)* @ehca_destroy_aqp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_destroy_aqp1(%struct.ehca_sport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehca_sport*, align 8
  %4 = alloca i32, align 4
  store %struct.ehca_sport* %0, %struct.ehca_sport** %3, align 8
  %5 = load %struct.ehca_sport*, %struct.ehca_sport** %3, align 8
  %6 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @IB_QPT_GSI, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ib_destroy_qp(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.ehca_sport*, %struct.ehca_sport** %3, align 8
  %20 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ib_destroy_cq(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ib_destroy_qp(i32) #1

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

declare dso_local i32 @ib_destroy_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
