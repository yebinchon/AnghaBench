; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_ugeth_graceful_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_ugeth_graceful_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.TYPE_3__*, %struct.ucc_fast_private* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ucc_fast_private = type { i32, i32, i32 }

@UCC_GETH_UCCE_GRA = common dso_local global i32 0, align 4
@QE_GRACEFUL_STOP_TX = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*)* @ugeth_graceful_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugeth_graceful_stop_tx(%struct.ucc_geth_private* %0) #0 {
  %2 = alloca %struct.ucc_geth_private*, align 8
  %3 = alloca %struct.ucc_fast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %2, align 8
  store i32 10, i32* %6, align 4
  %7 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %8 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %7, i32 0, i32 1
  %9 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  store %struct.ucc_fast_private* %9, %struct.ucc_fast_private** %3, align 8
  %10 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %3, align 8
  %11 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UCC_GETH_UCCE_GRA, align 4
  %14 = call i32 @clrbits32(i32 %12, i32 %13)
  %15 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %3, align 8
  %16 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCC_GETH_UCCE_GRA, align 4
  %19 = call i32 @out_be32(i32 %17, i32 %18)
  %20 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %21 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ucc_fast_get_qe_cr_subblock(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @QE_GRACEFUL_STOP_TX, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @QE_CR_PROTOCOL_ETHERNET, align 4
  %30 = call i32 @qe_issue_cmd(i32 %27, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %46, %1
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %3, align 8
  %34 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @in_be32(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UCC_GETH_UCCE_GRA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %31, label %48

48:                                               ; preds = %46
  %49 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %3, align 8
  %50 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  ret i32 0
}

declare dso_local i32 @clrbits32(i32, i32) #1

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @ucc_fast_get_qe_cr_subblock(i32) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @in_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
