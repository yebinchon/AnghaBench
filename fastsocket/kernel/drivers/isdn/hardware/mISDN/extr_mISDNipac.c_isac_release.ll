; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, %struct.TYPE_3__, i32*, i32* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IPAC_TYPE_ISACX = common dso_local global i32 0, align 4
@ISACX_MASK = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@CLOSE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isac_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_release(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %3 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %4 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IPAC_TYPE_ISACX, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %11 = load i32, i32* @ISACX_MASK, align 4
  %12 = call i32 @WriteISAC(%struct.isac_hw* %10, i32 %11, i32 255)
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %15 = load i32, i32* @ISAC_MASK, align 4
  %16 = call i32 @WriteISAC(%struct.isac_hw* %14, i32 %15, i32 255)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %19 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %26 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @del_timer(%struct.TYPE_4__* %27)
  %29 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %30 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %17
  %34 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %35 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %39 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %41 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %45 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %47 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %53 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @CLOSE_CHANNEL, align 4
  %57 = call i32 @l1_event(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %33
  %59 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %60 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %59, i32 0, i32 1
  %61 = call i32 @mISDN_freedchannel(%struct.TYPE_3__* %60)
  ret void
}

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @l1_event(i64, i32) #1

declare dso_local i32 @mISDN_freedchannel(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
