; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_send_tiger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_send_tiger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NJ_IRQM0_RD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: tiger warn write double dma %x/%x\0A\00", align 1
@FLG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_hw*, i32)* @send_tiger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_tiger(%struct.tiger_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.tiger_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %8 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @NJ_IRQM0_RD_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %16 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %20 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21)
  br label %66

23:                                               ; preds = %2
  %24 = load i32, i32* @NJ_IRQM0_RD_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %27 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NJ_IRQM0_RD_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %34 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32, i32* @FLG_ACTIVE, align 4
  %43 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %44 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i64 @test_bit(i32 %42, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %55 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %56 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = call i32 @send_tiger_bc(%struct.tiger_hw* %54, %struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %53, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %38

66:                                               ; preds = %14, %38
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @send_tiger_bc(%struct.tiger_hw*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
