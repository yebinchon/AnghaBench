; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_check_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_check_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }
%struct.BCState = type { i64 }

@BSTAT_RDM1 = common dso_local global i32 0, align 4
@BSTAT_RDM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @check_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_send(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.BCState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @BSTAT_RDM1, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %12 = call %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState* %11, i32 1)
  store %struct.BCState* %12, %struct.BCState** %5, align 8
  %13 = icmp ne %struct.BCState* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.BCState*, %struct.BCState** %5, align 8
  %16 = getelementptr inbounds %struct.BCState, %struct.BCState* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.BCState*, %struct.BCState** %5, align 8
  %21 = call i32 @send_frames(%struct.BCState* %20)
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %22, %10
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BSTAT_RDM2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %31 = call %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState* %30, i32 2)
  store %struct.BCState* %31, %struct.BCState** %5, align 8
  %32 = icmp ne %struct.BCState* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.BCState*, %struct.BCState** %5, align 8
  %35 = getelementptr inbounds %struct.BCState, %struct.BCState* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.BCState*, %struct.BCState** %5, align 8
  %40 = call i32 @send_frames(%struct.BCState* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %24
  ret void
}

declare dso_local %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @send_frames(%struct.BCState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
