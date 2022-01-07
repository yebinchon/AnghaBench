; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbc_wait_msgint_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbc_wait_msgint_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64 }
%struct.MessageUnit_C = type { i32, i32 }

@ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE = common dso_local global i32 0, align 4
@ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_hbc_wait_msgint_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_hbc_wait_msgint_ready(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.MessageUnit_C*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.MessageUnit_C*
  store %struct.MessageUnit_C* %10, %struct.MessageUnit_C** %4, align 8
  store i8 0, i8* %5, align 1
  br label %11

11:                                               ; preds = %33, %1
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.MessageUnit_C*, %struct.MessageUnit_C** %4, align 8
  %17 = getelementptr inbounds %struct.MessageUnit_C, %struct.MessageUnit_C* %16, i32 0, i32 1
  %18 = call i32 @readl(i32* %17)
  %19 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR, align 4
  %24 = load %struct.MessageUnit_C*, %struct.MessageUnit_C** %4, align 8
  %25 = getelementptr inbounds %struct.MessageUnit_C, %struct.MessageUnit_C* %24, i32 0, i32 0
  %26 = call i32 @writel(i32 %23, i32* %25)
  store i32 1, i32* %2, align 4
  br label %39

27:                                               ; preds = %15
  %28 = call i32 @msleep(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32
  %34 = load i8, i8* %5, align 1
  %35 = add i8 %34, 1
  store i8 %35, i8* %5, align 1
  %36 = zext i8 %34 to i32
  %37 = icmp slt i32 %36, 20
  br i1 %37, label %11, label %38

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
