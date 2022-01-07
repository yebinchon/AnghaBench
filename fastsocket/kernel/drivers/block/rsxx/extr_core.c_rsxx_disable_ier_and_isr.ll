; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_disable_ier_and_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_disable_ier_and_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, i32, i32, i32 }

@IER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %6 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__disable_intr(i32* %13, i32 %14)
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @__disable_intr(i32* %17, i32 %18)
  %20 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %21 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %24 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IER, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite32(i32 %22, i64 %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__disable_intr(i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
