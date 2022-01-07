; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_hwinit1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_hwinit1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"hwinit1\0A\00", align 1
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@SAA7134_IRQ2 = common dso_local global i32 0, align 4
@SAA7134_IRQ_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pre-init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_hwinit1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_hwinit1(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @SAA7134_IRQ1, align 4
  %5 = call i32 @saa_writel(i32 %4, i32 0)
  %6 = load i32, i32* @SAA7134_IRQ2, align 4
  %7 = call i32 @saa_writel(i32 %6, i32 0)
  %8 = load i32, i32* @SAA7134_IRQ_REPORT, align 4
  %9 = load i32, i32* @SAA7134_IRQ_REPORT, align 4
  %10 = call i32 @saa_readl(i32 %9)
  %11 = call i32 @saa_writel(i32 %8, i32 %10)
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 1
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %19 = call i32 @saa7134_track_gpio(%struct.saa7134_dev* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %21 = call i32 @saa7134_video_init1(%struct.saa7134_dev* %20)
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %23 = call i32 @saa7134_vbi_init1(%struct.saa7134_dev* %22)
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %25 = call i64 @card_has_mpeg(%struct.saa7134_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %29 = call i32 @saa7134_ts_init1(%struct.saa7134_dev* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %32 = call i32 @saa7134_input_init1(%struct.saa7134_dev* %31)
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %34 = call i32 @saa7134_hw_enable1(%struct.saa7134_dev* %33)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @saa7134_track_gpio(%struct.saa7134_dev*, i8*) #1

declare dso_local i32 @saa7134_video_init1(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_vbi_init1(%struct.saa7134_dev*) #1

declare dso_local i64 @card_has_mpeg(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_ts_init1(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_input_init1(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_hw_enable1(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
