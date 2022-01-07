; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_replay_modify_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_replay_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_sport = type { i32, i64* }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_sport*)* @replay_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replay_modify_qp(%struct.ehca_sport* %0) #0 {
  %2 = alloca %struct.ehca_sport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ehca_sport* %0, %struct.ehca_sport** %2, align 8
  %5 = load %struct.ehca_sport*, %struct.ehca_sport** %2, align 8
  %6 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ehca_sport*, %struct.ehca_sport** %2, align 8
  %10 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @IB_QPT_GSI, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ehca_sport*, %struct.ehca_sport** %2, align 8
  %19 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @IB_QPT_SMI, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.ehca_sport*, %struct.ehca_sport** %2, align 8
  %27 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @IB_QPT_SMI, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ehca_recover_sqp(i64 %31)
  br label %33

33:                                               ; preds = %25, %1
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load %struct.ehca_sport*, %struct.ehca_sport** %2, align 8
  %38 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @IB_QPT_GSI, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ehca_recover_sqp(i64 %42)
  br label %44

44:                                               ; preds = %36, %33
  %45 = load %struct.ehca_sport*, %struct.ehca_sport** %2, align 8
  %46 = getelementptr inbounds %struct.ehca_sport, %struct.ehca_sport* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ehca_recover_sqp(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
