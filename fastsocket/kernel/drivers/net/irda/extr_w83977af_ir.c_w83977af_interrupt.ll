; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_w83977af_ir.c_w83977af_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_w83977af_ir.c_w83977af_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w83977af_ir = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SSR = common dso_local global i64 0, align 8
@SET0 = common dso_local global i32 0, align 4
@ICR = common dso_local global i64 0, align 8
@ISR = common dso_local global i64 0, align 8
@PIO_MAX_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @w83977af_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83977af_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.w83977af_ir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.w83977af_ir* @netdev_priv(%struct.net_device* %13)
  store %struct.w83977af_ir* %14, %struct.w83977af_ir** %6, align 8
  %15 = load %struct.w83977af_ir*, %struct.w83977af_ir** %6, align 8
  %16 = getelementptr inbounds %struct.w83977af_ir, %struct.w83977af_ir* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @SSR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SET0, align 4
  %26 = call i32 @switch_bank(i32 %24, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @ICR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inb(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @ISR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inb(i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @ICR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 0, i64 %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %2
  %47 = load %struct.w83977af_ir*, %struct.w83977af_ir** %6, align 8
  %48 = getelementptr inbounds %struct.w83977af_ir, %struct.w83977af_ir* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PIO_MAX_SPEED, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.w83977af_ir*, %struct.w83977af_ir** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @w83977af_fir_interrupt(%struct.w83977af_ir* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %61

57:                                               ; preds = %46
  %58 = load %struct.w83977af_ir*, %struct.w83977af_ir** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @w83977af_sir_interrupt(%struct.w83977af_ir* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @ICR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %63, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @SSR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %69, i64 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @IRQ_RETVAL(i32 %75)
  ret i32 %76
}

declare dso_local %struct.w83977af_ir* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @switch_bank(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @w83977af_fir_interrupt(%struct.w83977af_ir*, i32) #1

declare dso_local i32 @w83977af_sir_interrupt(%struct.w83977af_ir*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
