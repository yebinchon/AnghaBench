; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mq.c_c2_mq_consume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mq.c_c2_mq_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_mq = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@C2_MQ_MAGIC = common dso_local global i64 0, align 8
@C2_MQ_HOST_TARGET = common dso_local global i64 0, align 8
@CCWR_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @c2_mq_consume(%struct.c2_mq* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.c2_mq*, align 8
  store %struct.c2_mq* %0, %struct.c2_mq** %3, align 8
  %4 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %5 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @C2_MQ_MAGIC, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %12 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @C2_MQ_HOST_TARGET, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %19 = call i64 @c2_mq_empty(%struct.c2_mq* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %24 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %28 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %31 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %26, i64 %34
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @c2_mq_empty(%struct.c2_mq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
