; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_allmulti_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_allmulti_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, i32 }

@BNA_RXMODE_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_allmulti_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_allmulti_disable(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %8 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_allmulti_disable(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %54

20:                                               ; preds = %12
  %21 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %22 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %25 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_allmulti_enable(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %34 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @allmulti_inactive(i32 %32, i32 %35)
  br label %53

37:                                               ; preds = %20
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %39 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %46 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %49 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @allmulti_disable(i32 %47, i32 %50)
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %37
  br label %53

53:                                               ; preds = %52, %29
  br label %54

54:                                               ; preds = %53, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @is_allmulti_disable(i32, i32) #1

declare dso_local i64 @is_allmulti_enable(i32, i32) #1

declare dso_local i32 @allmulti_inactive(i32, i32) #1

declare dso_local i32 @allmulti_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
