; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_rcv_netevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_rcv_netevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i8**, i32* }
%struct.cnic_ulp_ops = type { i32 (i8*, i64, i32)* }

@MAX_CNIC_ULP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_local*, i64, i32)* @cnic_rcv_netevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_rcv_netevent(%struct.cnic_local* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cnic_ulp_ops*, align 8
  %9 = alloca i8*, align 8
  store %struct.cnic_local* %0, %struct.cnic_local** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MAX_CNIC_ULP_TYPE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cnic_ulp_ops* @rcu_dereference(i32 %22)
  store %struct.cnic_ulp_ops* %23, %struct.cnic_ulp_ops** %8, align 8
  %24 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %8, align 8
  %25 = icmp ne %struct.cnic_ulp_ops* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %8, align 8
  %28 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %27, i32 0, i32 0
  %29 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %28, align 8
  %30 = icmp ne i32 (i8*, i64, i32)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %15
  br label %47

32:                                               ; preds = %26
  %33 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %34 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load %struct.cnic_ulp_ops*, %struct.cnic_ulp_ops** %8, align 8
  %41 = getelementptr inbounds %struct.cnic_ulp_ops, %struct.cnic_ulp_ops* %40, i32 0, i32 0
  %42 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %41, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 %42(i8* %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %32, %31
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %11

50:                                               ; preds = %11
  %51 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cnic_ulp_ops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
