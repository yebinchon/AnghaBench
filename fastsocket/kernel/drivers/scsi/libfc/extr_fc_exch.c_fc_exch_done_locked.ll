; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_done_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_done_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i32, i32, i32* }

@FC_EX_DONE = common dso_local global i32 0, align 4
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_exch*)* @fc_exch_done_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_exch_done_locked(%struct.fc_exch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %6 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %5, i32 0, i32 4
  store i32* null, i32** %6, align 8
  %7 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %8 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FC_EX_DONE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %17 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %18 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @FC_EX_DONE, align 4
  %29 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %30 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %34 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %33, i32 0, i32 3
  %35 = call i64 @cancel_delayed_work(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  %39 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %38, i32 0, i32 2
  %40 = call i32 @atomic_dec(i32* %39)
  br label %41

41:                                               ; preds = %37, %27
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
