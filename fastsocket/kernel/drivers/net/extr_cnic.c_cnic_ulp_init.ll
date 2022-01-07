; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_ulp_ops = type { i32 (%struct.cnic_dev.0*)* }
%struct.cnic_dev.0 = type opaque
%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32* }

@MAX_CNIC_ULP_TYPE_EXT = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@cnic_ulp_tbl = common dso_local global %struct.cnic_ulp_ops** null, align 8
@ULP_F_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_ulp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_init(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_CNIC_ULP_TYPE_EXT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = call i32 @mutex_lock(i32* @cnic_lock)
  %15 = load %struct.cnic_ulp_ops**, %struct.cnic_ulp_ops*** @cnic_ulp_tbl, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %15, i64 %17
  %19 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %18, align 8
  store %struct.cnic_ulp_ops* %19, %struct.cnic_ulp_ops** %5, align 8
  %20 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %21 = icmp ne %struct.cnic_ulp_ops* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %24 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %24, align 8
  %26 = icmp ne i32 (%struct.cnic_dev.0*)* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %13
  %28 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %52

29:                                               ; preds = %22
  %30 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %31 = call i32 @ulp_get(%struct.cnic_ulp_ops* %30)
  %32 = call i32 @mutex_unlock(i32* @cnic_lock)
  %33 = load i32, i32* @ULP_F_INIT, align 4
  %34 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @test_and_set_bit(i32 %33, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %44 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %44, align 8
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %47 = bitcast %struct.cnic_dev* %46 to %struct.cnic_dev.0*
  %48 = call i32 %45(%struct.cnic_dev.0* %47)
  br label %49

49:                                               ; preds = %42, %29
  %50 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %51 = call i32 @ulp_put(%struct.cnic_ulp_ops* %50)
  br label %52

52:                                               ; preds = %49, %27
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %9

55:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ulp_get(%struct.cnic_ulp_ops*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ulp_put(%struct.cnic_ulp_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
