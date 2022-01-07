; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_wait_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@PSC_SMBEVNT_DN = common dso_local global i32 0, align 4
@PSC_SMBEVNT_AN = common dso_local global i32 0, align 4
@PSC_SMBEVNT_AL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*)* @wait_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_ack(%struct.i2c_au1550_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_au1550_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %3, align 8
  %6 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %3, align 8
  %7 = call i64 @wait_xfer_done(%struct.i2c_au1550_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ETIMEDOUT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = call i32 (...) @au_sync()
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PSC_SMBEVNT_DN, align 4
  %23 = load i32, i32* @PSC_SMBEVNT_AN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PSC_SMBEVNT_AL, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @wait_xfer_done(%struct.i2c_au1550_data*) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
