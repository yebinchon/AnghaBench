; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198datastate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198datastate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"stl_sc26198datastate(portp=%p)\0A\00", align 1
@ASYI_TXBUSY = common dso_local global i32 0, align 4
@brd_lock = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@SR_TXEMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlport*)* @stl_sc26198datastate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_sc26198datastate(%struct.stlport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  %6 = load %struct.stlport*, %struct.stlport** %3, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.stlport* %6)
  %8 = load %struct.stlport*, %struct.stlport** %3, align 8
  %9 = icmp eq %struct.stlport* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load i32, i32* @ASYI_TXBUSY, align 4
  %13 = load %struct.stlport*, %struct.stlport** %3, align 8
  %14 = getelementptr inbounds %struct.stlport, %struct.stlport* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %45

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %19)
  %21 = load %struct.stlport*, %struct.stlport** %3, align 8
  %22 = getelementptr inbounds %struct.stlport, %struct.stlport* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stlport*, %struct.stlport** %3, align 8
  %25 = getelementptr inbounds %struct.stlport, %struct.stlport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BRDENABLE(i32 %23, i32 %26)
  %28 = load %struct.stlport*, %struct.stlport** %3, align 8
  %29 = load i32, i32* @SR, align 4
  %30 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %28, i32 %29)
  store i8 %30, i8* %5, align 1
  %31 = load %struct.stlport*, %struct.stlport** %3, align 8
  %32 = getelementptr inbounds %struct.stlport, %struct.stlport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BRDDISABLE(i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %35)
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @SR_TXEMPTY, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %18, %17, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
