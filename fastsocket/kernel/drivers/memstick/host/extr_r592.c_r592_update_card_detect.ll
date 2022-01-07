; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_update_card_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_update_card_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@R592_REG_MSC = common dso_local global i32 0, align 4
@R592_REG_MSC_PRSNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"update card detect. card state: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@R592_REG_MSC_IRQ_REMOVE = common dso_local global i32 0, align 4
@R592_REG_MSC_IRQ_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r592_device*)* @r592_update_card_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_update_card_detect(%struct.r592_device* %0) #0 {
  %2 = alloca %struct.r592_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %2, align 8
  %5 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %6 = load i32, i32* @R592_REG_MSC, align 4
  %7 = call i32 @r592_read_reg(%struct.r592_device* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @R592_REG_MSC_PRSNT, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @R592_REG_MSC_IRQ_REMOVE, align 4
  %17 = load i32, i32* @R592_REG_MSC_IRQ_INSERT, align 4
  %18 = or i32 %16, %17
  %19 = shl i32 %18, 16
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @R592_REG_MSC_IRQ_REMOVE, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @R592_REG_MSC_IRQ_INSERT, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %37 = load i32, i32* @R592_REG_MSC, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @r592_write_reg(%struct.r592_device* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @r592_write_reg(%struct.r592_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
