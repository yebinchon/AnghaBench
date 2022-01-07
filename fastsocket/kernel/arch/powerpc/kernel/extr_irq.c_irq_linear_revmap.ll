; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_linear_revmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_linear_revmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@IRQ_HOST_MAP_LINEAR = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_linear_revmap(%struct.irq_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.irq_host* %0, %struct.irq_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %8 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IRQ_HOST_MAP_LINEAR, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %16 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %14, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @irq_find_mapping(%struct.irq_host* %25, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %30 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @irq_find_mapping(%struct.irq_host* %40, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %28
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NO_IRQ, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @irq_find_mapping(%struct.irq_host* %54, i64 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %43
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %39, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
