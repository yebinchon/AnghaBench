; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_uic.c_uic_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_uic.c_uic_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }
%struct.uic = type { i32, i64 }

@IRQ_LEVEL = common dso_local global i32 0, align 4
@UIC_MSR = common dso_local global i64 0, align 8
@IRQ_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uic_irq_cascade(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.uic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.uic* @get_irq_data(i32 %9)
  store %struct.uic* %10, %struct.uic** %5, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IRQ_LEVEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 %25(i32 %26)
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 %33(i32 %34)
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.uic*, %struct.uic** %5, align 8
  %41 = getelementptr inbounds %struct.uic, %struct.uic* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UIC_MSR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @mfdcr(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %60

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ffs(i32 %50)
  %52 = sub nsw i32 32, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.uic*, %struct.uic** %5, align 8
  %54 = getelementptr inbounds %struct.uic, %struct.uic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @irq_linear_revmap(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @generic_handle_irq(i32 %58)
  br label %60

60:                                               ; preds = %49, %48
  %61 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %62 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %61, i32 0, i32 1
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %65 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IRQ_LEVEL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 %75(i32 %76)
  br label %78

78:                                               ; preds = %70, %60
  %79 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %80 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IRQ_DISABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %78
  %86 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %87 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (i32)*, i32 (i32)** %89, align 8
  %91 = icmp ne i32 (i32)* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %94 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (i32)*, i32 (i32)** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 %97(i32 %98)
  br label %100

100:                                              ; preds = %92, %85, %78
  %101 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %102 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock(i32* %102)
  ret void
}

declare dso_local %struct.uic* @get_irq_data(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
