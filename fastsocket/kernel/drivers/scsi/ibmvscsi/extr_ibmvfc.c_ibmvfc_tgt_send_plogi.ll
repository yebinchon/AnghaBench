; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_send_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_send_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i32, i32, i64, %struct.ibmvfc_host* }
%struct.ibmvfc_host = type { i64 }
%struct.ibmvfc_port_login = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ibmvfc_event = type { %struct.TYPE_3__, %struct.ibmvfc_target* }
%struct.TYPE_3__ = type { %struct.ibmvfc_port_login }

@disc_threads = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@ibmvfc_tgt_plogi_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_PORT_LOGIN = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sent port login\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_target*)* @ibmvfc_tgt_send_plogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_send_plogi(%struct.ibmvfc_target* %0) #0 {
  %2 = alloca %struct.ibmvfc_target*, align 8
  %3 = alloca %struct.ibmvfc_port_login*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %2, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 3
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %7, align 8
  store %struct.ibmvfc_host* %8, %struct.ibmvfc_host** %4, align 8
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @disc_threads, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %16, i32 0, i32 0
  %18 = call i32 @kref_get(i32* %17)
  %19 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %22 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %21)
  store %struct.ibmvfc_event* %22, %struct.ibmvfc_event** %5, align 8
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %28 = load i32, i32* @IBMVFC_TGT_ACTION_INIT_WAIT, align 4
  %29 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %27, i32 %28)
  %30 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %31 = load i32, i32* @ibmvfc_tgt_plogi_done, align 4
  %32 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %33 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %30, i32 %31, i32 %32)
  %34 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %35 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %35, i32 0, i32 1
  store %struct.ibmvfc_target* %34, %struct.ibmvfc_target** %36, align 8
  %37 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.ibmvfc_port_login* %39, %struct.ibmvfc_port_login** %3, align 8
  %40 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %41 = call i32 @memset(%struct.ibmvfc_port_login* %40, i32 0, i32 16)
  %42 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %43 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @IBMVFC_PORT_LOGIN, align 4
  %46 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 16, i32* %51, align 4
  %52 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %53 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %3, align 8
  %56 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %5, align 8
  %58 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %59 = load i32, i32* @default_timeout, align 4
  %60 = call i64 @ibmvfc_send_event(%struct.ibmvfc_event* %57, %struct.ibmvfc_host* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %15
  %63 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %68 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %69 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %67, i32 %68)
  %70 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %71 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %70, i32 0, i32 0
  %72 = load i32, i32* @ibmvfc_release_tgt, align 4
  %73 = call i32 @kref_put(i32* %71, i32 %72)
  br label %77

74:                                               ; preds = %15
  %75 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %2, align 8
  %76 = call i32 @tgt_dbg(%struct.ibmvfc_target* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %14, %74, %62
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_port_login*, i32, i32) #1

declare dso_local i64 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
