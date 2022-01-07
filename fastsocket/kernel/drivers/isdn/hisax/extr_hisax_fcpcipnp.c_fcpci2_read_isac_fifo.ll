; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_read_isac_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_read_isac_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i64 }

@AVM_ISACSX_INDEX = common dso_local global i64 0, align 8
@AVM_ISACSX_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*, i8*, i32)* @fcpci2_read_isac_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcpci2_read_isac_fifo(%struct.isac* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.isac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fritz_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.isac* %0, %struct.isac** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.isac*, %struct.isac** %4, align 8
  %11 = getelementptr inbounds %struct.isac, %struct.isac* %10, i32 0, i32 0
  %12 = load %struct.fritz_adapter*, %struct.fritz_adapter** %11, align 8
  store %struct.fritz_adapter* %12, %struct.fritz_adapter** %7, align 8
  %13 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AVM_ISACSX_INDEX, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 0, i64 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %38, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVM_ISACSX_DATA, align 8
  %32 = add nsw i64 %30, %31
  %33 = call zeroext i8 @inl(i64 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local zeroext i8 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
