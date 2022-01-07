; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_create_fixup_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_create_fixup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NO_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macio_dev*, i32, i32)* @macio_create_fixup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macio_create_fixup_irq(%struct.macio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.macio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.macio_dev* %0, %struct.macio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @irq_create_mapping(i32* null, i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NO_IRQ, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %16 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %14, i32* %21, align 4
  %22 = load i32, i32* @IORESOURCE_IRQ, align 4
  %23 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %24 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %22, i32* %29, align 4
  %30 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @dev_name(i32* %32)
  %34 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %33, i32* %40, align 4
  br label %41

41:                                               ; preds = %13, %3
  %42 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
