; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_stats_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_stats_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_port_s = type { i32 }
%union.bfa_port_stats_u = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_port_s*, %union.bfa_port_stats_u*)* @bfa_port_stats_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_port_stats_swap(%struct.bfa_port_s* %0, %union.bfa_port_stats_u* %1) #0 {
  %3 = alloca %struct.bfa_port_s*, align 8
  %4 = alloca %union.bfa_port_stats_u*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfa_port_s* %0, %struct.bfa_port_s** %3, align 8
  store %union.bfa_port_stats_u* %1, %union.bfa_port_stats_u** %4, align 8
  %9 = load %union.bfa_port_stats_u*, %union.bfa_port_stats_u** %4, align 8
  %10 = bitcast %union.bfa_port_stats_u* %9 to i32*
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %15
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %8, align 4
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
