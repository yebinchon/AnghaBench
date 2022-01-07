; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_issue_ncq_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_issue_ncq_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MTIP_NCQ_COMMAND_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*, i32)* @mtip_issue_ncq_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_issue_ncq_command(%struct.mtip_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mtip_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %6 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @atomic_set(i32* %11, i32 1)
  %13 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %14 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MTIP_TAG_BIT(i32 %16)
  %18 = shl i32 1, %17
  %19 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %20 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @MTIP_TAG_INDEX(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel(i32 %18, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @MTIP_TAG_BIT(i32 %27)
  %29 = shl i32 1, %28
  %30 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %31 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @MTIP_TAG_INDEX(i32 %33)
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel(i32 %29, i32 %36)
  %38 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %39 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @MTIP_NCQ_COMMAND_TIMEOUT_MS, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %46 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %44, i64* %51, align 8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MTIP_TAG_BIT(i32) #1

declare dso_local i64 @MTIP_TAG_INDEX(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
