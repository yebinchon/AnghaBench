; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpnp_read_hdlc_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpnp_read_hdlc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_adapter = type { i32, i64 }

@AVM_IDX_HDLC_2 = common dso_local global i8 0, align 1
@AVM_IDX_HDLC_1 = common dso_local global i8 0, align 1
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@HDLC_INT_RPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fritz_adapter*, i32)* @fcpnp_read_hdlc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcpnp_read_hdlc_status(%struct.fritz_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.fritz_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fritz_adapter* %0, %struct.fritz_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8, i8* @AVM_IDX_HDLC_2, align 1
  %12 = zext i8 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = load i8, i8* @AVM_IDX_HDLC_1, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  %19 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i8, i8* %5, align 1
  %24 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AVM_INDEX, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i8 zeroext %23, i64 %28)
  %30 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AVM_DATA, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @HDLC_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @inb(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HDLC_INT_RPR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %16
  %43 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AVM_DATA, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @HDLC_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = add nsw i64 %49, 1
  %51 = call i32 @inb(i64 %50)
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %42, %16
  %56 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
