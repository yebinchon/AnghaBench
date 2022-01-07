; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_irq.c_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_irq.c_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32)* }
%struct.irq_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32)* }

@NR_IRQS = common dso_local global i32 0, align 4
@irq_err_count = common dso_local global i32 0, align 4
@irq_cascade = common dso_local global %struct.TYPE_5__* null, align 8
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@IRQ_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @irq_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @NR_IRQS, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @atomic_inc(i32* @irq_err_count)
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_cascade, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %92

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i64 %25
  store %struct.irq_desc* %26, %struct.irq_desc** %4, align 8
  %27 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = icmp ne i32 (i32)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %38(i32 %39)
  br label %56

41:                                               ; preds = %21
  %42 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %43 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 %46(i32 %47)
  %49 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %53(i32 %54)
  br label %56

56:                                               ; preds = %41, %33
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = call i32 %59(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 @atomic_inc(i32* @irq_err_count)
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %2, align 4
  call void @irq_dispatch(i32 %68)
  br label %69

69:                                               ; preds = %67, %65
  %70 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IRQ_DISABLED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %69
  %77 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %78 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = icmp ne i32 (i32)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %85 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (i32)*, i32 (i32)** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 %88(i32 %89)
  br label %91

91:                                               ; preds = %83, %76, %69
  br label %95

92:                                               ; preds = %12
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @do_IRQ(i32 %93)
  br label %95

95:                                               ; preds = %10, %92, %91
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
