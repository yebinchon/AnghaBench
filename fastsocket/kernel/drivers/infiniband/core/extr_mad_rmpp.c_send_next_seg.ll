; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_send_next_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_send_next_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i8* }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_FIRST = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_DATA = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_send_wr_private*)* @send_next_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_next_seg(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca %struct.ib_mad_send_wr_private*, align 8
  %3 = alloca %struct.ib_rmpp_mad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %7 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  store %struct.ib_rmpp_mad* %9, %struct.ib_rmpp_mad** %3, align 8
  %10 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %11 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %10, i32 0, i32 0
  %12 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %13 = call i32 @ib_set_rmpp_flags(%struct.TYPE_4__* %11, i32 %12)
  %14 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %15 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %20 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  %22 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %23 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load i32, i32* @IB_MGMT_RMPP_FLAG_FIRST, align 4
  %28 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %29 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %34 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IB_MGMT_RMPP_DATA, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %40 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %26, %1
  %44 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %45 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %48 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load i32, i32* @IB_MGMT_RMPP_FLAG_LAST, align 4
  %54 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %55 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @IB_MGMT_RMPP_DATA, align 4
  %60 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %61 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %52, %43
  %65 = load i32, i32* %5, align 4
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %68 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %71 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 2000
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %64
  %80 = call i32 @msecs_to_jiffies(i32 2000)
  %81 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %82 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %85 = call i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %84)
  ret i32 %85
}

declare dso_local i32 @ib_set_rmpp_flags(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ib_send_mad(%struct.ib_mad_send_wr_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
