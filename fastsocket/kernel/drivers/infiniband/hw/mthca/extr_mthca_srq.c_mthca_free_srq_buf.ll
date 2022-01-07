; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_free_srq_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_free_srq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_srq = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_srq*)* @mthca_free_srq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_free_srq_buf(%struct.mthca_dev* %0, %struct.mthca_srq* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_srq*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_srq* %1, %struct.mthca_srq** %4, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %10 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %8, %11
  %13 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %14 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %13, i32 0, i32 5
  %15 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %16 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %19 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %18, i32 0, i32 3
  %20 = call i32 @mthca_buf_free(%struct.mthca_dev* %5, i32 %12, i32* %14, i32 %17, i32* %19)
  %21 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %22 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  ret void
}

declare dso_local i32 @mthca_buf_free(%struct.mthca_dev*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
