; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_retry_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_retry_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_send_wr_private*)* @retry_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_send(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  %5 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %6 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ETIMEDOUT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %14 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %18 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %23 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %28 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %30 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %12
  %37 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %38 = call i32 @ib_retry_rmpp(%struct.ib_mad_send_wr_private* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %44 [
    i32 128, label %40
    i32 129, label %43
  ]

40:                                               ; preds = %36
  %41 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %42 = call i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %41)
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @ECOMM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %43, %40
  br label %51

48:                                               ; preds = %12
  %49 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %50 = call i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %56 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %60 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %59, i32 0, i32 1
  %61 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %62 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %60, i32* %64)
  br label %66

66:                                               ; preds = %54, %51
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ib_retry_rmpp(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @ib_send_mad(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
