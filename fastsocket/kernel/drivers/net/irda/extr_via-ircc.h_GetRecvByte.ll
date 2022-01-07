; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_GetRecvByte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_GetRecvByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_ircc_cb = type { i32 }

@RX_P_L = common dso_local global i32 0, align 4
@RX_P_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.via_ircc_cb*)* @GetRecvByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetRecvByte(i32 %0, %struct.via_ircc_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.via_ircc_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.via_ircc_cb* %1, %struct.via_ircc_cb** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @RX_P_L, align 4
  %12 = call i32 @ReadReg(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RX_P_H, align 4
  %15 = call i32 @ReadReg(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 8
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %4, align 8
  %23 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %4, align 8
  %29 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %9, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %4, align 8
  %34 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 32768, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.via_ircc_cb*, %struct.via_ircc_cb** %4, align 8
  %42 = getelementptr inbounds %struct.via_ircc_cb, %struct.via_ircc_cb* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @ReadReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
