; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000e_write_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000e_write_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { i64 }

@ITR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_write_itr(%struct.e1000_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 2
  store %struct.e1000_hw* %9, %struct.e1000_hw** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 256
  %15 = sdiv i32 1000000000, %14
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 0, %16 ]
  store i32 %18, i32* %6, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @E1000_EITR_82574(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel(i32 %31, i64 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %24

42:                                               ; preds = %24
  br label %47

43:                                               ; preds = %17
  %44 = load i32, i32* @ITR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ew32(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @E1000_EITR_82574(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
