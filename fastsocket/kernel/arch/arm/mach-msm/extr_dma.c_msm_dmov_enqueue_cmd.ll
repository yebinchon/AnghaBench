; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-msm/extr_dma.c_msm_dmov_enqueue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-msm/extr_dma.c_msm_dmov_enqueue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dmov_cmd = type { i32, i32 }

@msm_dmov_lock = common dso_local global i32 0, align 4
@ready_commands = common dso_local global i32* null, align 8
@DMOV_STATUS_CMD_PTR_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"msm_dmov_enqueue_cmd(%d), start command, status %x\0A\00", align 1
@active_commands = common dso_local global i32* null, align 8
@channel_active = common dso_local global i32 0, align 4
@INT_ADM_AARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"msm_dmov_enqueue_cmd(%d), error datamover stalled, status %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"msm_dmov_enqueue_cmd(%d), enqueue command, status %x\0A\00", align 1
@DMOV_CONFIG_IRQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dmov_enqueue_cmd(i32 %0, %struct.msm_dmov_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dmov_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msm_dmov_cmd* %1, %struct.msm_dmov_cmd** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @msm_dmov_lock, i64 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @DMOV_STATUS(i32 %9)
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** @ready_commands, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DMOV_STATUS_CMD_PTR_RDY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PRINT_IO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.msm_dmov_cmd*, %struct.msm_dmov_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.msm_dmov_cmd, %struct.msm_dmov_cmd* %27, i32 0, i32 0
  %29 = load i32*, i32** @active_commands, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @list_add_tail(i32* %28, i32* %32)
  %34 = load i32, i32* @channel_active, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @INT_ADM_AARM, align 4
  %38 = call i32 @enable_irq(i32 %37)
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* @channel_active, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @channel_active, align 4
  %44 = load %struct.msm_dmov_cmd*, %struct.msm_dmov_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.msm_dmov_cmd, %struct.msm_dmov_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @DMOV_CMD_PTR(i32 %47)
  %49 = call i32 @writel(i32 %46, i32 %48)
  br label %72

50:                                               ; preds = %18, %2
  %51 = load i32*, i32** @active_commands, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @PRINT_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @PRINT_IO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.msm_dmov_cmd*, %struct.msm_dmov_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.msm_dmov_cmd, %struct.msm_dmov_cmd* %65, i32 0, i32 0
  %67 = load i32*, i32** @ready_commands, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @list_add_tail(i32* %66, i32* %70)
  br label %72

72:                                               ; preds = %61, %39
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @msm_dmov_lock, i64 %73)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @DMOV_STATUS(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @PRINT_IO(i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @DMOV_CMD_PTR(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
