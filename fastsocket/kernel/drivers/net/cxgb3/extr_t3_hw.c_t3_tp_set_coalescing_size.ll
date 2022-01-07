; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_tp_set_coalescing_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_tp_set_coalescing_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@MAX_RX_COALESCING_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_TP_PARA_REG3 = common dso_local global i32 0, align 4
@F_RXCOALESCEENABLE = common dso_local global i32 0, align 4
@F_RXCOALESCEPSHEN = common dso_local global i32 0, align 4
@A_TP_PARA_REG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @t3_tp_set_coalescing_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_tp_set_coalescing_size(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MAX_RX_COALESCING_LEN, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = load i32, i32* @A_TP_PARA_REG3, align 4
  %18 = call i32 @t3_read_reg(%struct.adapter* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @F_RXCOALESCEENABLE, align 4
  %20 = load i32, i32* @F_RXCOALESCEPSHEN, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %15
  %28 = load i32, i32* @F_RXCOALESCEENABLE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @F_RXCOALESCEPSHEN, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @MAX_RX_COALESCING_LEN, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @min(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = load i32, i32* @A_TP_PARA_REG2, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @V_RXCOALESCESIZE(i32 %43)
  %45 = load i32, i32* @MAX_RX_COALESCING_LEN, align 4
  %46 = call i32 @V_MAXRXDATA(i32 %45)
  %47 = or i32 %44, %46
  %48 = call i32 @t3_write_reg(%struct.adapter* %41, i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %37, %15
  %50 = load %struct.adapter*, %struct.adapter** %5, align 8
  %51 = load i32, i32* @A_TP_PARA_REG3, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @t3_write_reg(%struct.adapter* %50, i32 %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %12
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RXCOALESCESIZE(i32) #1

declare dso_local i32 @V_MAXRXDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
