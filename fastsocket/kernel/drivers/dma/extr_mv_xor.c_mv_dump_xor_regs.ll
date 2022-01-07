; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_dump_xor_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_dump_xor_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"config       0x%08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"activation   0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"intr cause   0x%08x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"intr mask    0x%08x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"error cause  0x%08x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"error addr   0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_chan*)* @mv_dump_xor_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_dump_xor_regs(%struct.mv_xor_chan* %0) #0 {
  %2 = alloca %struct.mv_xor_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %2, align 8
  %4 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %5 = call i32 @XOR_CONFIG(%struct.mv_xor_chan* %4)
  %6 = call i32 @__raw_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @KERN_ERR, align 4
  %8 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %9 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @dev_printk(i32 %7, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %17 = call i32 @XOR_ACTIVATION(%struct.mv_xor_chan* %16)
  %18 = call i32 @__raw_readl(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %21 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dev_printk(i32 %19, i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %29 = call i32 @XOR_INTR_CAUSE(%struct.mv_xor_chan* %28)
  %30 = call i32 @__raw_readl(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %33 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dev_printk(i32 %31, i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %41 = call i32 @XOR_INTR_MASK(%struct.mv_xor_chan* %40)
  %42 = call i32 @__raw_readl(i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %45 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @dev_printk(i32 %43, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %53 = call i32 @XOR_ERROR_CAUSE(%struct.mv_xor_chan* %52)
  %54 = call i32 @__raw_readl(i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %57 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @dev_printk(i32 %55, i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %65 = call i32 @XOR_ERROR_ADDR(%struct.mv_xor_chan* %64)
  %66 = call i32 @__raw_readl(i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %69 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @dev_printk(i32 %67, i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @XOR_CONFIG(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @XOR_ACTIVATION(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_INTR_CAUSE(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_INTR_MASK(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_ERROR_CAUSE(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_ERROR_ADDR(%struct.mv_xor_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
