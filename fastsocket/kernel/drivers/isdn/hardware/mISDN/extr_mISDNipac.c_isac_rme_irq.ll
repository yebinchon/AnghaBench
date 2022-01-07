; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_rme_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_rme_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@ISAC_RSTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: ISAC RDO\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: ISAC CRC error\0A\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@ISAC_RBCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isac_rme_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_rme_irq(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %5 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %6 = load i32, i32* @ISAC_RSTA, align 4
  %7 = call i32 @ReadISAC(%struct.isac_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 112
  %10 = icmp ne i32 %9, 32
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 64
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %17 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %26 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %31 = load i32, i32* @ISAC_CMDR, align 4
  %32 = call i32 @WriteISAC(%struct.isac_hw* %30, i32 %31, i32 128)
  %33 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %34 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %40 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @dev_kfree_skb(i32* %42)
  br label %44

44:                                               ; preds = %38, %29
  %45 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %46 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %63

48:                                               ; preds = %1
  %49 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %50 = load i32, i32* @ISAC_RBCL, align 4
  %51 = call i32 @ReadISAC(%struct.isac_hw* %49, i32 %50)
  %52 = and i32 %51, 31
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 32, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @isac_empty_fifo(%struct.isac_hw* %57, i32 %58)
  %60 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %61 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %60, i32 0, i32 0
  %62 = call i32 @recv_Dchannel(%struct.TYPE_2__* %61)
  br label %63

63:                                               ; preds = %56, %44
  ret void
}

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac_hw*, i32) #1

declare dso_local i32 @recv_Dchannel(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
