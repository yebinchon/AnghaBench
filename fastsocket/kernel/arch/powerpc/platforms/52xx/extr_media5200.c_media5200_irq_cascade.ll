; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/52xx/extr_media5200.c_media5200_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/52xx/extr_media5200.c_media5200_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.irq_desc = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32)*, i32 (i32)* }

@media5200_irq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MEDIA5200_IRQ_ENABLE = common dso_local global i64 0, align 8
@MEDIA5200_IRQ_STATUS = common dso_local global i64 0, align 8
@MEDIA5200_IRQ_SHIFT = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @media5200_irq_cascade(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 %16(i32 %17)
  %19 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @media5200_irq, i32 0, i32 1), align 8
  %23 = load i64, i64* @MEDIA5200_IRQ_ENABLE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @in_be32(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @media5200_irq, i32 0, i32 1), align 8
  %27 = load i64, i64* @MEDIA5200_IRQ_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @in_be32(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @MEDIA5200_IRQ_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @ffs(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @media5200_irq, i32 0, i32 0), align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @irq_linear_revmap(i32 %39, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @generic_handle_irq(i32 %43)
  br label %45

45:                                               ; preds = %38, %2
  %46 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %47 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 %53(i32 %54)
  %56 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %57 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IRQ_DISABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %45
  %63 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %64 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (i32)*, i32 (i32)** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 %67(i32 %68)
  br label %70

70:                                               ; preds = %62, %45
  %71 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
