; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@XOR_OPERATION_MODE_XOR = common dso_local global i32 0, align 4
@XOR_OPERATION_MODE_MEMCPY = common dso_local global i32 0, align 4
@XOR_OPERATION_MODE_MEMSET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: unsupported operation %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_chan*, i32)* @mv_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_set_mode(%struct.mv_xor_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_xor_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %8 = call i32 @XOR_CONFIG(%struct.mv_xor_chan* %7)
  %9 = call i32 @__raw_readl(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 130, label %13
    i32 129, label %15
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @XOR_OPERATION_MODE_XOR, align 4
  store i32 %12, i32* %5, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @XOR_OPERATION_MODE_MEMCPY, align 4
  store i32 %14, i32* %5, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @XOR_OPERATION_MODE_MEMSET, align 4
  store i32 %16, i32* %5, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %20 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_printk(i32 %18, i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @BUG()
  br label %41

28:                                               ; preds = %15, %13, %11
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -8
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %36 = call i32 @XOR_CONFIG(%struct.mv_xor_chan* %35)
  %37 = call i32 @__raw_writel(i32 %34, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %3, align 8
  %40 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %28, %17
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @XOR_CONFIG(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
