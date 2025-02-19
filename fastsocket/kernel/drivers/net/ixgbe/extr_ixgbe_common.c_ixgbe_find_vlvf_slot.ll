; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_find_vlvf_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_find_vlvf_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VLVF_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No space in VLVF.\0A\00", align 1
@IXGBE_ERR_NO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_find_vlvf_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_find_vlvf_slot(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IXGBE_VLVF_ENTRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @IXGBE_VLVF(i32 %19)
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %7, align 4
  br label %36

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 4095
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %40

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %13

40:                                               ; preds = %34, %13
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @IXGBE_VLVF_ENTRIES, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %44
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = call i32 @hw_dbg(%struct.ixgbe_hw* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @IXGBE_ERR_NO_SPACE, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %47
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VLVF(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
