; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_mbx_pf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_mbx.c_ixgbe_read_mbx_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IXGBE_PFMAILBOX_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i64, i64)* @ixgbe_read_mbx_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_mbx_pf(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw* %11, i64 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %46

17:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @IXGBE_PFMBMEM(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %23, i32 %25, i64 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @IXGBE_PFMAILBOX(i64 %36)
  %38 = load i32, i32* @IXGBE_PFMAILBOX_ACK, align 4
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %37, i32 %38)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %34, %16
  %47 = load i64, i64* %9, align 8
  ret i64 %47
}

declare dso_local i64 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_PFMBMEM(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_PFMAILBOX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
