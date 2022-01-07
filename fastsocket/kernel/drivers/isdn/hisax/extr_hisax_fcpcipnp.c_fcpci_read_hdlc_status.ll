; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_read_hdlc_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_read_hdlc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_adapter = type { i32, i64 }

@AVM_IDX_HDLC_2 = common dso_local global i32 0, align 4
@AVM_IDX_HDLC_1 = common dso_local global i32 0, align 4
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fritz_adapter*, i32)* @fcpci_read_hdlc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcpci_read_hdlc_status(%struct.fritz_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.fritz_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fritz_adapter* %0, %struct.fritz_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AVM_IDX_HDLC_2, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @AVM_IDX_HDLC_1, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %6, align 4
  %16 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AVM_INDEX, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outl(i32 %20, i64 %25)
  %27 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AVM_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @HDLC_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inl(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
