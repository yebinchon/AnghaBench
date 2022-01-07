; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_commit_bop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_commit_bop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_metadata = type { i32 }
%struct.block_op = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_metadata*, %struct.block_op*)* @commit_bop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_bop(%struct.sm_metadata* %0, %struct.block_op* %1) #0 {
  %3 = alloca %struct.sm_metadata*, align 8
  %4 = alloca %struct.block_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sm_metadata* %0, %struct.sm_metadata** %3, align 8
  store %struct.block_op* %1, %struct.block_op** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.block_op*, %struct.block_op** %4, align 8
  %8 = getelementptr inbounds %struct.block_op, %struct.block_op* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %24 [
    i32 128, label %10
    i32 129, label %17
  ]

10:                                               ; preds = %2
  %11 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %11, i32 0, i32 0
  %13 = load %struct.block_op*, %struct.block_op** %4, align 8
  %14 = getelementptr inbounds %struct.block_op, %struct.block_op* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sm_ll_inc(i32* %12, i32 %15, i32* %6)
  store i32 %16, i32* %5, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %19 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %18, i32 0, i32 0
  %20 = load %struct.block_op*, %struct.block_op** %4, align 8
  %21 = getelementptr inbounds %struct.block_op, %struct.block_op* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sm_ll_dec(i32* %19, i32 %22, i32* %6)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %2, %17, %10
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @sm_ll_inc(i32*, i32, i32*) #1

declare dso_local i32 @sm_ll_dec(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
