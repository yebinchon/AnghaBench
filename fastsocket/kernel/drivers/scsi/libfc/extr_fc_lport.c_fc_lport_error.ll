; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i64, i32, i32 }
%struct.fc_frame = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error %ld in state %s, retries %d\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame*)* @fc_lport_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_error(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i64, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %8 = call i32 @PTR_ERR(%struct.fc_frame* %7)
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = call i32 @fc_lport_state(%struct.fc_lport* %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10, i64 %13)
  %15 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.fc_frame* %15)
  %17 = load i32, i32* @FC_EX_CLOSED, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %21
  %30 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %35 = icmp ne %struct.fc_frame* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i64 @msecs_to_jiffies(i32 500)
  store i64 %37, i64* %5, align 8
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @msecs_to_jiffies(i32 %41)
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %38, %36
  %44 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %45 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %44, i32 0, i32 3
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @schedule_delayed_work(i32* %45, i64 %46)
  br label %51

48:                                               ; preds = %21
  %49 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %50 = call i32 @fc_lport_enter_reset(%struct.fc_lport* %49)
  br label %51

51:                                               ; preds = %20, %48, %43
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32, i32, i64) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @fc_lport_enter_reset(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
