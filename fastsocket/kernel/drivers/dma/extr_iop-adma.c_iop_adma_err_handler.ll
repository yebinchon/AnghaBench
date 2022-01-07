; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_adma_err_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_adma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error ( %s%s%s%s%s%s%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"int_parity \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mcu_abort \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"int_tabort \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"int_mabort \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pci_tabort \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pci_mabort \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"split_tx \00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iop_adma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_adma_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iop_adma_chan*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.iop_adma_chan*
  store %struct.iop_adma_chan* %8, %struct.iop_adma_chan** %5, align 8
  %9 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %10 = call i64 @iop_chan_get_status(%struct.iop_adma_chan* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %13 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %20 = call i64 @iop_is_err_int_parity(i64 %18, %struct.iop_adma_chan* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %26 = call i64 @iop_is_err_mcu_abort(i64 %24, %struct.iop_adma_chan* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %32 = call i64 @iop_is_err_int_tabort(i64 %30, %struct.iop_adma_chan* %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %38 = call i64 @iop_is_err_int_mabort(i64 %36, %struct.iop_adma_chan* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %44 = call i64 @iop_is_err_pci_tabort(i64 %42, %struct.iop_adma_chan* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %50 = call i64 @iop_is_err_pci_mabort(i64 %48, %struct.iop_adma_chan* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %56 = call i64 @iop_is_err_split_tx(i64 %54, %struct.iop_adma_chan* %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @dev_printk(i32 %11, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %29, i8* %35, i8* %41, i8* %47, i8* %53, i8* %59)
  %61 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %62 = call i32 @iop_adma_device_clear_err_status(%struct.iop_adma_chan* %61)
  %63 = call i32 (...) @BUG()
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %64
}

declare dso_local i64 @iop_chan_get_status(%struct.iop_adma_chan*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @iop_is_err_int_parity(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_mcu_abort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_int_tabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_int_mabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_pci_tabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_pci_mabort(i64, %struct.iop_adma_chan*) #1

declare dso_local i64 @iop_is_err_split_tx(i64, %struct.iop_adma_chan*) #1

declare dso_local i32 @iop_adma_device_clear_err_status(%struct.iop_adma_chan*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
