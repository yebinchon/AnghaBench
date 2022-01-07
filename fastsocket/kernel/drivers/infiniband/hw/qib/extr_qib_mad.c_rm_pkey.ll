; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_rm_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_rm_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i64)* @rm_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_pkey(%struct.qib_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %7
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i64 @atomic_dec_and_test(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  store i32 1, i32* %6, align 4
  br label %46

41:                                               ; preds = %25
  br label %45

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7

45:                                               ; preds = %41, %7
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
