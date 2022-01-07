; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_create_direct_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_create_direct_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { i64 }

@irq_default_host = common dso_local global %struct.irq_host* null, align 8
@IRQ_HOST_MAP_NOMAP = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"irq: create_direct virq allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"irq: create_direct obtained virq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_create_direct_mapping(%struct.irq_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_host*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_host* %0, %struct.irq_host** %3, align 8
  %5 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %6 = icmp eq %struct.irq_host* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.irq_host*, %struct.irq_host** @irq_default_host, align 8
  store %struct.irq_host* %8, %struct.irq_host** %3, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %11 = icmp eq %struct.irq_host* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %15 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IRQ_HOST_MAP_NOMAP, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %22 = call i32 @irq_alloc_virt(%struct.irq_host* %21, i32 1, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NO_IRQ, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @NO_IRQ, align 4
  store i32 %28, i32* %2, align 4
  br label %41

29:                                               ; preds = %9
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @irq_setup_virq(%struct.irq_host* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @NO_IRQ, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irq_alloc_virt(%struct.irq_host*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @irq_setup_virq(%struct.irq_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
