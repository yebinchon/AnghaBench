; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@MTHCA_HCR_BASE = common dso_local global i64 0, align 8
@MTHCA_HCR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't map command register.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mthca_cmd\00", align 1
@MTHCA_MAILBOX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_cmd_init(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %5 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @sema_init(i32* %10, i32 1)
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @pci_resource_start(i32 %17, i32 0)
  %19 = load i64, i64* @MTHCA_HCR_BASE, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @MTHCA_HCR_SIZE, align 4
  %22 = call i32 @ioremap(i64 %20, i32 %21)
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %31 = call i32 @mthca_err(%struct.mthca_dev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %1
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MTHCA_MAILBOX_SIZE, align 4
  %39 = load i32, i32* @MTHCA_MAILBOX_SIZE, align 4
  %40 = call i32 @pci_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %34
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @iounmap(i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %49, %29
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @pci_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
