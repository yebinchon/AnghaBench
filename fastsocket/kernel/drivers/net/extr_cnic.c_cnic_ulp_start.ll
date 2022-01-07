; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32*, i32*, %struct.cnic_ulp_ops** }
%struct.cnic_ulp_ops = type { i32 (i32)* }

@MAX_CNIC_ULP_TYPE = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@ULP_F_CALL_PENDING = common dso_local global i32 0, align 4
@ULP_F_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_ulp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_start(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_CNIC_ULP_TYPE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  %14 = call i32 @mutex_lock(i32* @cnic_lock)
  %15 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 2
  %17 = load %struct.cnic_ulp_ops**, %struct.cnic_ulp_ops*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %17, i64 %19
  %21 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %20, align 8
  store %struct.cnic_ulp_ops* %21, %struct.cnic_ulp_ops** %5, align 8
  %22 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %23 = icmp ne %struct.cnic_ulp_ops* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %26 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = icmp ne i32 (i32)* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %13
  %30 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %71

31:                                               ; preds = %24
  %32 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %33 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %34 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @set_bit(i32 %32, i32* %38)
  %40 = call i32 @mutex_unlock(i32* @cnic_lock)
  %41 = load i32, i32* @ULP_F_START, align 4
  %42 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %43 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @test_and_set_bit(i32 %41, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %31
  %51 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %52 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %53(i32 %60)
  br label %62

62:                                               ; preds = %50, %31
  %63 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %64 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %65 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @clear_bit(i32 %63, i32* %69)
  br label %71

71:                                               ; preds = %62, %29
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %9

74:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
