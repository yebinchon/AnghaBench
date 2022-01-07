; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_timer3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_timer3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer1* }
%struct.layer1 = type { i32, i32 (i32, i32)*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@FLG_L1_ACTIVATING = common dso_local global i32 0, align 4
@FLG_L1_DBLOCKED = common dso_local global i32 0, align 4
@HW_D_NOBLOCKED = common dso_local global i32 0, align 4
@PH_DEACTIVATE_IND = common dso_local global i32 0, align 4
@ST_L1_F6 = common dso_local global i64 0, align 8
@ST_L1_F3 = common dso_local global i32 0, align 4
@HW_POWERUP_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_timer3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_timer3(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer1*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.layer1*, %struct.layer1** %9, align 8
  store %struct.layer1* %10, %struct.layer1** %7, align 8
  %11 = load i32, i32* @FLG_L1_T3RUN, align 4
  %12 = load %struct.layer1*, %struct.layer1** %7, align 8
  %13 = getelementptr inbounds %struct.layer1, %struct.layer1* %12, i32 0, i32 3
  %14 = call i64 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = load i32, i32* @FLG_L1_ACTIVATING, align 4
  %16 = load %struct.layer1*, %struct.layer1** %7, align 8
  %17 = getelementptr inbounds %struct.layer1, %struct.layer1* %16, i32 0, i32 3
  %18 = call i64 @test_and_clear_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load i32, i32* @FLG_L1_DBLOCKED, align 4
  %22 = load %struct.layer1*, %struct.layer1** %7, align 8
  %23 = getelementptr inbounds %struct.layer1, %struct.layer1* %22, i32 0, i32 3
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.layer1*, %struct.layer1** %7, align 8
  %28 = getelementptr inbounds %struct.layer1, %struct.layer1* %27, i32 0, i32 1
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load %struct.layer1*, %struct.layer1** %7, align 8
  %31 = getelementptr inbounds %struct.layer1, %struct.layer1* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HW_D_NOBLOCKED, align 4
  %34 = call i32 %29(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.layer1*, %struct.layer1** %7, align 8
  %37 = getelementptr inbounds %struct.layer1, %struct.layer1* %36, i32 0, i32 1
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load %struct.layer1*, %struct.layer1** %7, align 8
  %40 = getelementptr inbounds %struct.layer1, %struct.layer1* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PH_DEACTIVATE_IND, align 4
  %43 = call i32 %38(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %3
  %45 = load %struct.layer1*, %struct.layer1** %7, align 8
  %46 = getelementptr inbounds %struct.layer1, %struct.layer1* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ST_L1_F6, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %53 = load i32, i32* @ST_L1_F3, align 4
  %54 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %52, i32 %53)
  %55 = load %struct.layer1*, %struct.layer1** %7, align 8
  %56 = getelementptr inbounds %struct.layer1, %struct.layer1* %55, i32 0, i32 1
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = load %struct.layer1*, %struct.layer1** %7, align 8
  %59 = getelementptr inbounds %struct.layer1, %struct.layer1* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @HW_POWERUP_REQ, align 4
  %62 = call i32 %57(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %44
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
