; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_uic.c_uic_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_uic.c_uic_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uic = type { i32, i64 }
%struct.irq_desc = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIC_TR = common dso_local global i64 0, align 8
@UIC_PR = common dso_local global i64 0, align 8
@IRQ_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uic_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uic_set_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.uic* @get_irq_chip_data(i32 %15)
  store %struct.uic* %16, %struct.uic** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @uic_irq_to_hw(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.irq_desc* @get_irq_desc(i32 %19)
  store %struct.irq_desc* %20, %struct.irq_desc** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %31 [
    i32 128, label %24
    i32 131, label %27
    i32 132, label %28
    i32 130, label %29
    i32 129, label %30
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @uic_mask_irq(i32 %25)
  store i32 0, i32* %3, align 4
  br label %113

27:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %34

28:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

29:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %34

30:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %113

34:                                               ; preds = %30, %29, %28, %27
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 31, %35
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  store i32 %38, i32* %14, align 4
  %39 = load %struct.uic*, %struct.uic** %6, align 8
  %40 = getelementptr inbounds %struct.uic, %struct.uic* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.uic*, %struct.uic** %6, align 8
  %44 = getelementptr inbounds %struct.uic, %struct.uic* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UIC_TR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @mfdcr(i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.uic*, %struct.uic** %6, align 8
  %50 = getelementptr inbounds %struct.uic, %struct.uic* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UIC_PR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @mfdcr(i64 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 31, %59
  %61 = shl i32 %58, %60
  %62 = or i32 %57, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 31, %67
  %69 = shl i32 %66, %68
  %70 = or i32 %65, %69
  store i32 %70, i32* %13, align 4
  %71 = load %struct.uic*, %struct.uic** %6, align 8
  %72 = getelementptr inbounds %struct.uic, %struct.uic* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UIC_PR, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @mtdcr(i64 %75, i32 %76)
  %78 = load %struct.uic*, %struct.uic** %6, align 8
  %79 = getelementptr inbounds %struct.uic, %struct.uic* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UIC_TR, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @mtdcr(i64 %82, i32 %83)
  %85 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %86 = load i32, i32* @IRQ_LEVEL, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %90 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %97 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %34
  %103 = load i32, i32* @IRQ_LEVEL, align 4
  %104 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %105 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %34
  %109 = load %struct.uic*, %struct.uic** %6, align 8
  %110 = getelementptr inbounds %struct.uic, %struct.uic* %109, i32 0, i32 0
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %31, %24
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.uic* @get_irq_chip_data(i32) #1

declare dso_local i32 @uic_irq_to_hw(i32) #1

declare dso_local %struct.irq_desc* @get_irq_desc(i32) #1

declare dso_local i32 @uic_mask_irq(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @mtdcr(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
