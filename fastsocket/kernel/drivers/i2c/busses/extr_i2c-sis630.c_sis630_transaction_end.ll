; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_transaction_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@SMB_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SMB_CNT before clock restore 0x%02x\0A\00", align 1
@SMB_CNT = common dso_local global i32 0, align 4
@high_clock = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"SMB_CNT after clock restore 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, i32)* @sis630_transaction_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis630_transaction_end(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @SMB_STS, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @sis630_write(i32 %6, i32 %7)
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* @SMB_CNT, align 4
  %12 = call i32 @sis630_read(i32 %11)
  %13 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* @high_clock, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @SMB_CNT, align 4
  %22 = load i32, i32* @SMB_CNT, align 4
  %23 = call i32 @sis630_read(i32 %22)
  %24 = and i32 %23, -33
  %25 = call i32 @sis630_write(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %16, %2
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* @SMB_CNT, align 4
  %30 = call i32 @sis630_read(i32 %29)
  %31 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  ret void
}

declare dso_local i32 @sis630_write(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @sis630_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
