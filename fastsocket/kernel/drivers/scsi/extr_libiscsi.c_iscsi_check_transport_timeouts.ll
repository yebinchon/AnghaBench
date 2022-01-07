; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_check_transport_timeouts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_check_transport_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i64, i64, i64, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i64, i32 }

@ISCSI_STATE_LOGGED_IN = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"ping timeout of %d secs expired, recv timeout %d, last rx %lu, last ping %lu, now %lu\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Sending nopout as ping\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Setting next tmo %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @iscsi_check_transport_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_check_transport_timeouts(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.iscsi_conn*
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 5
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISCSI_STATE_LOGGED_IN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %93

22:                                               ; preds = %1
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %93

29:                                               ; preds = %22
  %30 = load i64, i64* @HZ, align 8
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %37 = call i64 @iscsi_has_ping_timed_out(%struct.iscsi_conn* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %29
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @jiffies, align 4
  %53 = call i32 @iscsi_conn_printk(i32 %40, %struct.iscsi_conn* %41, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %47, i64 %48, i64 %51, i32 %52)
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %55 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %58 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %59 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %57, i32 %58)
  br label %97

60:                                               ; preds = %29
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %61, %62
  %64 = load i32, i32* @jiffies, align 4
  %65 = call i64 @time_before_eq(i64 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %69 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_CONN(%struct.iscsi_conn* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %71 = call i32 @iscsi_send_nopout(%struct.iscsi_conn* %70, i32* null)
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HZ, align 8
  %79 = mul i64 %77, %78
  %80 = add i64 %74, %79
  store i64 %80, i64* %6, align 8
  br label %85

81:                                               ; preds = %60
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %81, %67
  %86 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_CONN(%struct.iscsi_conn* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %90 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %89, i32 0, i32 4
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @mod_timer(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %85, %28, %21
  %94 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %95 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  br label %97

97:                                               ; preds = %93, %39
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @iscsi_has_ping_timed_out(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i64 @time_before_eq(i64, i32) #1

declare dso_local i32 @ISCSI_DBG_CONN(%struct.iscsi_conn*, i8*, ...) #1

declare dso_local i32 @iscsi_send_nopout(%struct.iscsi_conn*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
