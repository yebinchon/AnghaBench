; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mac_addr_set_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mac_addr_set_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnad_mac_addr_set_locked(%struct.bnad* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @is_valid_ether_addr(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EADDRNOTAVAIL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.bnad*, %struct.bnad** %4, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %13
  %23 = load %struct.bnad*, %struct.bnad** %4, align 8
  %24 = getelementptr inbounds %struct.bnad, %struct.bnad* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @bna_rx_ucast_set(i32 %28, i32* %29, i32* null)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34, %21, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @bna_rx_ucast_set(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
