; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_err_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_err_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ignore this error\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"error on chan %d. intr cause 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_chan*, i32)* @mv_xor_err_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_xor_err_interrupt_handler(%struct.mv_xor_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_xor_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %10 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %25 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_printk(i32 %17, i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %30 = call i32 @mv_dump_xor_regs(%struct.mv_xor_chan* %29)
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @mv_dump_xor_regs(%struct.mv_xor_chan*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
