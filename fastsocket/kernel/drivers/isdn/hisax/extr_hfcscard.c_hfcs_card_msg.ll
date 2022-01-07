; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfcscard.c_hfcs_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfcscard.c_hfcs_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__, i32 (%struct.IsdnCardState*, i32, i32, i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HFCS: card_msg %x\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HFCD_TIM800 = common dso_local global i32 0, align 4
@HFCD_DATA = common dso_local global i32 0, align 4
@HFCD_CTMT = common dso_local global i32 0, align 4
@HFCD_MST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @hfcs_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcs_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @L1_DEB_ISAC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @debugl1(%struct.IsdnCardState* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %106 [
    i32 129, label %22
    i32 130, label %33
    i32 131, label %36
    i32 128, label %105
  ]

22:                                               ; preds = %20
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 1
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @spin_lock_irqsave(i32* %24, i32 %25)
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %28 = call i32 @reset_hfcs(%struct.IsdnCardState* %27)
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 1
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %107

33:                                               ; preds = %20
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %35 = call i32 @release_io_hfcs(%struct.IsdnCardState* %34)
  store i32 0, i32* %4, align 4
  br label %107

36:                                               ; preds = %20
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 75, %37
  %39 = sdiv i32 %38, 100
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* @jiffies, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @mod_timer(i32* %44, i32 %47)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @spin_lock_irqsave(i32* %50, i32 %51)
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %54 = call i32 @reset_hfcs(%struct.IsdnCardState* %53)
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %56 = call i32 @init2bds0(%struct.IsdnCardState* %55)
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %58 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %57, i32 0, i32 1
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i32 %59)
  %61 = load i32, i32* @HZ, align 4
  %62 = mul nsw i32 80, %61
  %63 = sdiv i32 %62, 1000
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = call i32 @msleep(i32 80)
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 1
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @spin_lock_irqsave(i32* %67, i32 %68)
  %70 = load i32, i32* @HFCD_TIM800, align 4
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 3
  %79 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %78, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %81 = load i32, i32* @HFCD_DATA, align 4
  %82 = load i32, i32* @HFCD_CTMT, align 4
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %84 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %79(%struct.IsdnCardState* %80, i32 %81, i32 %82, i32 %87)
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 3
  %91 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %90, align 8
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %93 = load i32, i32* @HFCD_DATA, align 4
  %94 = load i32, i32* @HFCD_MST_MODE, align 4
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %91(%struct.IsdnCardState* %92, i32 %93, i32 %94, i32 %99)
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 1
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i32 %103)
  store i32 0, i32* %4, align 4
  br label %107

105:                                              ; preds = %20
  store i32 0, i32* %4, align 4
  br label %107

106:                                              ; preds = %20
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %105, %36, %33, %22
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_hfcs(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @release_io_hfcs(%struct.IsdnCardState*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @init2bds0(%struct.IsdnCardState*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
