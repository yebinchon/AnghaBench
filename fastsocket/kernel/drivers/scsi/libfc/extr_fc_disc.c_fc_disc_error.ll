; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_disc = type { i64, i64, i32 }
%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Error %ld, retries %d/%d\0A\00", align 1
@FC_DISC_RETRY_LIMIT = common dso_local global i64 0, align 8
@FC_EX_TIMEOUT = common dso_local global i32 0, align 4
@FC_DISC_RETRY_DELAY = common dso_local global i32 0, align 4
@DISC_EV_FAILED = common dso_local global i32 0, align 4
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_disc*, %struct.fc_frame*)* @fc_disc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_error(%struct.fc_disc* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_disc*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca i64, align 8
  store %struct.fc_disc* %0, %struct.fc_disc** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %7 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %8 = call %struct.fc_lport* @fc_disc_lport(%struct.fc_disc* %7)
  store %struct.fc_lport* %8, %struct.fc_lport** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %10 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %11 = call i32 @PTR_ERR(%struct.fc_frame* %10)
  %12 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %13 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FC_DISC_RETRY_LIMIT, align 8
  %16 = call i32 @FC_DISC_DBG(%struct.fc_disc* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %14, i64 %15)
  %17 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %18 = icmp ne %struct.fc_frame* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.fc_frame* %20)
  %22 = load i32, i32* @FC_EX_TIMEOUT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %19, %2
  %26 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %27 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FC_DISC_RETRY_LIMIT, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %33 = icmp ne %struct.fc_frame* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @FC_DISC_RETRY_DELAY, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  store i64 %36, i64* %6, align 8
  br label %50

37:                                               ; preds = %31
  %38 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @msecs_to_jiffies(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %43 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %6, align 8
  %48 = udiv i64 %47, 4
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %52 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %56 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %55, i32 0, i32 2
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @schedule_delayed_work(i32* %56, i64 %57)
  br label %63

59:                                               ; preds = %25
  %60 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %61 = load i32, i32* @DISC_EV_FAILED, align 4
  %62 = call i32 @fc_disc_done(%struct.fc_disc* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %50
  br label %74

64:                                               ; preds = %19
  %65 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %66 = call i32 @PTR_ERR(%struct.fc_frame* %65)
  %67 = load i32, i32* @FC_EX_CLOSED, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.fc_disc*, %struct.fc_disc** %3, align 8
  %72 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %63
  ret void
}

declare dso_local %struct.fc_lport* @fc_disc_lport(%struct.fc_disc*) #1

declare dso_local i32 @FC_DISC_DBG(%struct.fc_disc*, i8*, i32, i64, i64) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @fc_disc_done(%struct.fc_disc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
