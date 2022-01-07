; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_login_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_login_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@QLA_NOT_LOGGED_IN = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@FCF_LOGIN_NEEDED = common dso_local global i32 0, align 4
@RELOGIN_NEEDED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_async_login_done(%struct.scsi_qla_host* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %121 [
    i32 131, label %11
    i32 130, label %61
    i32 128, label %84
    i32 129, label %96
  ]

11:                                               ; preds = %3
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = call i32 @qla2x00_get_port_database(%struct.scsi_qla_host* %12, %struct.TYPE_10__* %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @QLA_NOT_LOGGED_IN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @FCF_LOGIN_NEEDED, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @RELOGIN_NEEDED, align 4
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %121

34:                                               ; preds = %11
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @QLA_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @qla2x00_post_async_logout_work(%struct.scsi_qla_host* %39, %struct.TYPE_10__* %40, i32* null)
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = call i32 @qla2x00_post_async_login_work(%struct.scsi_qla_host* %42, %struct.TYPE_10__* %43, i32* null)
  br label %121

45:                                               ; preds = %34
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @qla2x00_post_async_adisc_work(%struct.scsi_qla_host* %53, %struct.TYPE_10__* %54, i32* %55)
  br label %121

57:                                               ; preds = %45
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = call i32 @qla2x00_update_fcport(%struct.scsi_qla_host* %58, %struct.TYPE_10__* %59)
  br label %121

61:                                               ; preds = %3
  %62 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i32, i32* @RELOGIN_NEEDED, align 4
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %83

79:                                               ; preds = %61
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = call i32 @qla2x00_mark_device_lost(%struct.scsi_qla_host* %80, %struct.TYPE_10__* %81, i32 1, i32 0)
  br label %83

83:                                               ; preds = %79, %74
  br label %121

84:                                               ; preds = %3
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = call i32 @qla2x00_post_async_logout_work(%struct.scsi_qla_host* %90, %struct.TYPE_10__* %91, i32* null)
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = call i32 @qla2x00_post_async_login_work(%struct.scsi_qla_host* %93, %struct.TYPE_10__* %94, i32* null)
  br label %121

96:                                               ; preds = %3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = call i32 @qla2x00_find_new_loop_id(%struct.scsi_qla_host* %101, %struct.TYPE_10__* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @QLA_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %96
  %108 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = call i32 @qla2x00_mark_device_lost(%struct.scsi_qla_host* %114, %struct.TYPE_10__* %115, i32 1, i32 0)
  br label %121

117:                                              ; preds = %96
  %118 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = call i32 @qla2x00_post_async_login_work(%struct.scsi_qla_host* %118, %struct.TYPE_10__* %119, i32* null)
  br label %121

121:                                              ; preds = %3, %117, %107, %84, %83, %57, %52, %38, %18
  ret void
}

declare dso_local i32 @qla2x00_get_port_database(%struct.scsi_qla_host*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2x00_post_async_logout_work(%struct.scsi_qla_host*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @qla2x00_post_async_login_work(%struct.scsi_qla_host*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @qla2x00_post_async_adisc_work(%struct.scsi_qla_host*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @qla2x00_update_fcport(%struct.scsi_qla_host*, %struct.TYPE_10__*) #1

declare dso_local i32 @qla2x00_mark_device_lost(%struct.scsi_qla_host*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @qla2x00_find_new_loop_id(%struct.scsi_qla_host*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
