; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_wait_hwpec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_wait_hwpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMBHSTSTS_INTR = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PEC Timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i801_priv*)* @i801_wait_hwpec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i801_wait_hwpec(%struct.i801_priv* %0) #0 {
  %2 = alloca %struct.i801_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = call i32 @msleep(i32 1)
  %7 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %8 = call i32 @SMBHSTSTS(%struct.i801_priv* %7)
  %9 = call i32 @inb_p(i32 %8)
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @MAX_TIMEOUT, align 4
  %19 = icmp slt i32 %16, %18
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %5, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MAX_TIMEOUT, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %28 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %35 = call i32 @SMBHSTSTS(%struct.i801_priv* %34)
  %36 = call i32 @outb_p(i32 %33, i32 %35)
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
