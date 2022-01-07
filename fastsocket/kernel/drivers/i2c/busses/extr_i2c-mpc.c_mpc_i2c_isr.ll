; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i32, i32, i64 }

@MPC_I2C_SR = common dso_local global i64 0, align 8
@CSR_MIF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpc_i2c*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.mpc_i2c*
  store %struct.mpc_i2c* %7, %struct.mpc_i2c** %5, align 8
  %8 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %9 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MPC_I2C_SR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readb(i64 %12)
  %14 = load i32, i32* @CSR_MIF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %19 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPC_I2C_SR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  %24 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %27 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MPC_I2C_SR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb(i32 0, i64 %30)
  %32 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %33 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %32, i32 0, i32 1
  %34 = call i32 @wake_up(i32* %33)
  br label %35

35:                                               ; preds = %17, %2
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
