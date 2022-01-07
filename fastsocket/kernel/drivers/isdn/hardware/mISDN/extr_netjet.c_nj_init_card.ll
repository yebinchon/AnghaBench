; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_init_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i32, i32, i32*, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32 }

@nj_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: couldn't get interrupt %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ISDN_P_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_hw*)* @nj_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nj_init_card(%struct.tiger_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiger_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  %6 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %7 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @spin_lock_irqsave(i32* %7, i32 %8)
  %10 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %11 = call i32 @nj_disable_hwirq(%struct.tiger_hw* %10)
  %12 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %13 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i32 %14)
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %17 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %22 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %24 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @nj_irq, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %29 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %32 = call i64 @request_irq(i32 %25, i32 %26, i32 %27, i32 %30, %struct.tiger_hw* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %1
  %35 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %36 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %39 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %43 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %88

46:                                               ; preds = %1
  %47 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %48 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %47, i32 0, i32 1
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @spin_lock_irqsave(i32* %48, i32 %49)
  %51 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %52 = call i32 @nj_reset(%struct.tiger_hw* %51)
  %53 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %54 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %55, align 8
  %57 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %58 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %57, i32 0, i32 3
  %59 = call i32 %56(%struct.TYPE_4__* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %82

63:                                               ; preds = %46
  %64 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %65 = call i32 @inittiger(%struct.tiger_hw* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %82

69:                                               ; preds = %63
  %70 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %71 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* @ISDN_P_NONE, align 4
  %75 = call i32 @mode_tiger(i32* %73, i32 %74)
  %76 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %77 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* @ISDN_P_NONE, align 4
  %81 = call i32 @mode_tiger(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %69, %68, %62
  %83 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %84 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %83, i32 0, i32 1
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %34
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @nj_disable_hwirq(%struct.tiger_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.tiger_hw*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @nj_reset(%struct.tiger_hw*) #1

declare dso_local i32 @inittiger(%struct.tiger_hw*) #1

declare dso_local i32 @mode_tiger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
