; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_copy_ulp_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_copy_ulp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_ulp_ops = type { i32 (i32)* }
%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32* }

@cnic_lock = common dso_local global i32 0, align 4
@cnic_ulp_tbl = common dso_local global %struct.cnic_ulp_ops** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32)* @cnic_copy_ulp_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_copy_ulp_stats(%struct.cnic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.cnic_ulp_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %8, i32 0, i32 0
  %10 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  store %struct.cnic_local* %10, %struct.cnic_local** %5, align 8
  %11 = call i32 @mutex_lock(i32* @cnic_lock)
  %12 = load %struct.cnic_ulp_ops**, %struct.cnic_ulp_ops*** @cnic_ulp_tbl, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %12, i64 %14
  %16 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %15, align 8
  store %struct.cnic_ulp_ops* %16, %struct.cnic_ulp_ops** %6, align 8
  %17 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %6, align 8
  %18 = icmp ne %struct.cnic_ulp_ops* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %6, align 8
  %21 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = icmp ne i32 (i32)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %6, align 8
  %26 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %29 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %27(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %19, %2
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = call i32 @mutex_unlock(i32* @cnic_lock)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
