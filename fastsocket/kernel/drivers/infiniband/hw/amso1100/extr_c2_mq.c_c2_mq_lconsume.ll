; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mq.c_c2_mq_lconsume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mq.c_c2_mq_lconsume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_mq = type { i64, i64, i32, i32* }

@C2_MQ_MAGIC = common dso_local global i64 0, align 8
@C2_MQ_ADAPTER_TARGET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2_mq_lconsume(%struct.c2_mq* %0, i32 %1) #0 {
  %3 = alloca %struct.c2_mq*, align 8
  %4 = alloca i32, align 4
  store %struct.c2_mq* %0, %struct.c2_mq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %6 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @C2_MQ_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %13 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @C2_MQ_ADAPTER_TARGET, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  br label %19

19:                                               ; preds = %23, %2
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %25 = call i32 @c2_mq_empty(%struct.c2_mq* %24)
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %28 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be16_to_cpu(i32 %30)
  %32 = add nsw i32 %31, 1
  %33 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %34 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %32, %35
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = load %struct.c2_mq*, %struct.c2_mq** %3, align 8
  %39 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32 %37, i32* %40, align 4
  br label %19

41:                                               ; preds = %19
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @c2_mq_empty(%struct.c2_mq*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
