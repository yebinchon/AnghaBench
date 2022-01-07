; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_cq_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_qp = type { i32 }
%struct.c2_cq = type { i32, %struct.c2_mq }
%struct.c2_mq = type { i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.c2wr_ce = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2_cq_clean(%struct.c2_dev* %0, %struct.c2_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca %struct.c2_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.c2_cq*, align 8
  %8 = alloca %struct.c2_mq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.c2wr_ce*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %4, align 8
  store %struct.c2_qp* %1, %struct.c2_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.c2_cq* @c2_cq_get(%struct.c2_dev* %11, i32 %12)
  store %struct.c2_cq* %13, %struct.c2_cq** %7, align 8
  %14 = load %struct.c2_cq*, %struct.c2_cq** %7, align 8
  %15 = icmp ne %struct.c2_cq* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %77

17:                                               ; preds = %3
  %18 = load %struct.c2_cq*, %struct.c2_cq** %7, align 8
  %19 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.c2_cq*, %struct.c2_cq** %7, align 8
  %22 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %21, i32 0, i32 1
  store %struct.c2_mq* %22, %struct.c2_mq** %8, align 8
  %23 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %24 = icmp ne %struct.c2_mq* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %17
  %26 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %27 = call i32 @c2_mq_empty(%struct.c2_mq* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %31 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %63, %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %36 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %43 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %48 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = inttoptr i64 %52 to %struct.c2wr_ce*
  store %struct.c2wr_ce* %53, %struct.c2wr_ce** %10, align 8
  %54 = load %struct.c2wr_ce*, %struct.c2wr_ce** %10, align 8
  %55 = getelementptr inbounds %struct.c2wr_ce, %struct.c2wr_ce* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.c2_qp*, %struct.c2_qp** %5, align 8
  %58 = ptrtoint %struct.c2_qp* %57 to i64
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load %struct.c2wr_ce*, %struct.c2wr_ce** %10, align 8
  %62 = getelementptr inbounds %struct.c2wr_ce, %struct.c2wr_ce* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.c2_mq*, %struct.c2_mq** %8, align 8
  %67 = getelementptr inbounds %struct.c2_mq, %struct.c2_mq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %65, %68
  store i32 %69, i32* %9, align 4
  br label %33

70:                                               ; preds = %33
  br label %71

71:                                               ; preds = %70, %25, %17
  %72 = load %struct.c2_cq*, %struct.c2_cq** %7, align 8
  %73 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.c2_cq*, %struct.c2_cq** %7, align 8
  %76 = call i32 @c2_cq_put(%struct.c2_cq* %75)
  br label %77

77:                                               ; preds = %71, %16
  ret void
}

declare dso_local %struct.c2_cq* @c2_cq_get(%struct.c2_dev*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @c2_mq_empty(%struct.c2_mq*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @c2_cq_put(%struct.c2_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
