; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_assign_asid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_assign_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32, i32, i32 }

@ASID_INC = common dso_local global i64 0, align 8
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gid %d, asid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_state*)* @gru_assign_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_assign_asid(%struct.gru_state* %0) #0 {
  %2 = alloca %struct.gru_state*, align 8
  %3 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %2, align 8
  %4 = load i64, i64* @ASID_INC, align 8
  %5 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %6 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %12 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %16 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @gru_reset_asid_limit(%struct.gru_state* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @grudev, align 4
  %25 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %26 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @gru_dbg(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @gru_reset_asid_limit(%struct.gru_state*, i32) #1

declare dso_local i32 @gru_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
