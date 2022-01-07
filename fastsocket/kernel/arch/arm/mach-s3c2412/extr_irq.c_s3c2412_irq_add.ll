; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_irq.c_s3c2412_irq_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2412/extr_irq.c_s3c2412_irq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sys_device = type { i32 }

@IRQ_EINT0 = common dso_local global i32 0, align 4
@IRQ_EINT3 = common dso_local global i32 0, align 4
@s3c2412_irq_eint0t4 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@IRQ_S3C2412_CFSDI = common dso_local global i32 0, align 4
@s3c2412_irq_demux_cfsdi = common dso_local global i32 0, align 4
@IRQ_S3C2412_SDI = common dso_local global i32 0, align 4
@IRQ_S3C2412_CF = common dso_local global i32 0, align 4
@s3c2412_irq_cfsdi = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@s3c2412_irq_rtc_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@s3c_irq_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@s3c2412_irq_rtc_wake = common dso_local global i32 0, align 4
@IRQ_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @s3c2412_irq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_irq_add(%struct.sys_device* %0) #0 {
  %2 = alloca %struct.sys_device*, align 8
  %3 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %2, align 8
  %4 = load i32, i32* @IRQ_EINT0, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IRQ_EINT3, align 4
  %8 = icmp ule i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @set_irq_chip(i32 %10, %struct.TYPE_6__* @s3c2412_irq_eint0t4)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @handle_edge_irq, align 4
  %14 = call i32 @set_irq_handler(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IRQF_VALID, align 4
  %17 = call i32 @set_irq_flags(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  %22 = load i32, i32* @IRQ_S3C2412_CFSDI, align 4
  %23 = load i32, i32* @s3c2412_irq_demux_cfsdi, align 4
  %24 = call i32 @set_irq_chained_handler(i32 %22, i32 %23)
  %25 = load i32, i32* @IRQ_S3C2412_SDI, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %39, %21
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IRQ_S3C2412_CF, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @set_irq_chip(i32 %31, %struct.TYPE_6__* @s3c2412_irq_cfsdi)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @handle_level_irq, align 4
  %35 = call i32 @set_irq_handler(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @IRQF_VALID, align 4
  %38 = call i32 @set_irq_flags(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %26

42:                                               ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_6__* @s3c2412_irq_rtc_chip to i8*), i8* align 4 bitcast (%struct.TYPE_6__* @s3c_irq_chip to i8*), i64 4, i1 false)
  %43 = load i32, i32* @s3c2412_irq_rtc_wake, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s3c2412_irq_rtc_chip, i32 0, i32 0), align 4
  %44 = load i32, i32* @IRQ_RTC, align 4
  %45 = call i32 @set_irq_chip(i32 %44, %struct.TYPE_6__* @s3c2412_irq_rtc_chip)
  ret i32 0
}

declare dso_local i32 @set_irq_chip(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @set_irq_flags(i32, i32) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
