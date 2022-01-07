; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @sis630_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis630_transaction(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sis630_transaction_start(%struct.i2c_adapter* %7, i32 %8, i32* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @sis630_transaction_wait(%struct.i2c_adapter* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sis630_transaction_end(%struct.i2c_adapter* %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @sis630_transaction_start(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local i32 @sis630_transaction_wait(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @sis630_transaction_end(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
