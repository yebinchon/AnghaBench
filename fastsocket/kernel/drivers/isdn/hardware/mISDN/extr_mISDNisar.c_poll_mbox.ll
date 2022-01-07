; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_poll_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_poll_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32 (i32, i32)*, i32, i32, i32 }

@ISAR_IRQBIT = common dso_local global i32 0, align 4
@ISAR_IRQSTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: pulled %d bytes after %d us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isar_hw*, i32)* @poll_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_mbox(%struct.isar_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.isar_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isar_hw* %0, %struct.isar_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %9 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %8, i32 0, i32 0
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %12 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ISAR_IRQBIT, align 4
  %15 = call i32 %10(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ISAR_IRQSTA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = call i32 @udelay(i32 1)
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %36 = call i32 @get_irq_infos(%struct.isar_hw* %35)
  %37 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %38 = call i32 @rcv_mbox(%struct.isar_hw* %37, i32* null)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %41 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %44 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @get_irq_infos(%struct.isar_hw*) #1

declare dso_local i32 @rcv_mbox(%struct.isar_hw*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
