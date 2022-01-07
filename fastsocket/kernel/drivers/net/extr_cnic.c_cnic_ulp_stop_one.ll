; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_stop_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_stop_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i32*, i32*, %struct.cnic_ulp_ops** }
%struct.cnic_ulp_ops = type { i32 (i32)* }

@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@ISCSI_KEVENT_IF_DOWN = common dso_local global i32 0, align 4
@cnic_lock = common dso_local global i32 0, align 4
@ULP_F_CALL_PENDING = common dso_local global i32 0, align 4
@ULP_F_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_local*, i32)* @cnic_ulp_stop_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_stop_one(%struct.cnic_local* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_ulp_ops*, align 8
  store %struct.cnic_local* %0, %struct.cnic_local** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %11 = load i32, i32* @ISCSI_KEVENT_IF_DOWN, align 4
  %12 = call i32 @cnic_send_nlmsg(%struct.cnic_local* %10, i32 %11, i32* null)
  br label %13

13:                                               ; preds = %9, %2
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
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = call i32 @mutex_unlock(i32* @cnic_lock)
  br label %66

26:                                               ; preds = %13
  %27 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %28 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %29 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @set_bit(i32 %27, i32* %33)
  %35 = call i32 @mutex_unlock(i32* @cnic_lock)
  %36 = load i32, i32* @ULP_F_START, align 4
  %37 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %38 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i64 @test_and_clear_bit(i32 %36, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %26
  %46 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %5, align 8
  %47 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %48(i32 %55)
  br label %57

57:                                               ; preds = %45, %26
  %58 = load i32, i32* @ULP_F_CALL_PENDING, align 4
  %59 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %60 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @clear_bit(i32 %58, i32* %64)
  br label %66

66:                                               ; preds = %57, %24
  ret void
}

declare dso_local i32 @cnic_send_nlmsg(%struct.cnic_local*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
