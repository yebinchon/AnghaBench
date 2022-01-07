; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_plogi_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_plogi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_5__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_5__ = type { %struct.ibmvfc_port_login }
%struct.ibmvfc_port_login = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32, i32 }
%struct.ibmvfc_target = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i8* }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Port Login succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Port re-init required\0A\00", align 1
@ibmvfc_tgt_send_prli = common dso_local global i32 0, align 4
@ibmvfc_tgt_send_plogi = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Port Login failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_plogi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_plogi_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_port_login*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %8 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %8, i32 0, i32 2
  %10 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %9, align 8
  store %struct.ibmvfc_target* %10, %struct.ibmvfc_target** %3, align 8
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %11, i32 0, i32 1
  %13 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  store %struct.ibmvfc_host* %13, %struct.ibmvfc_host** %4, align 8
  %14 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.ibmvfc_port_login* %17, %struct.ibmvfc_port_login** %5, align 8
  %18 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %28 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %29 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %97 [
    i32 128, label %31
    i32 130, label %91
    i32 131, label %92
    i32 129, label %96
  ]

31:                                               ; preds = %1
  %32 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %33 = call i32 @tgt_dbg(%struct.ibmvfc_target* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %35 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %41 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @wwn_to_u64(i32 %47)
  %49 = icmp ne i8* %43, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %52 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %54 = call i32 @tgt_dbg(%struct.ibmvfc_target* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %148

55:                                               ; preds = %39, %31
  %56 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %57 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @wwn_to_u64(i32 %59)
  %61 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %62 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %65 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @wwn_to_u64(i32 %67)
  %69 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %70 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %73 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %76 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %79 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %78, i32 0, i32 2
  %80 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %81 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %80, i32 0, i32 5
  %82 = call i32 @memcpy(i32* %79, %struct.TYPE_8__* %81, i32 4)
  %83 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %84 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %83, i32 0, i32 1
  %85 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %85, i32 0, i32 4
  %87 = call i32 @memcpy(i32* %84, %struct.TYPE_8__* %86, i32 4)
  %88 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %89 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %90 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %88, i32 %89)
  br label %148

91:                                               ; preds = %1
  br label %148

92:                                               ; preds = %1
  %93 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %94 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %95 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %93, i32 %94)
  br label %148

96:                                               ; preds = %1
  br label %97

97:                                               ; preds = %1, %96
  %98 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %99 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %102 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ibmvfc_retry_cmd(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %108 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %109 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %107, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %116

112:                                              ; preds = %97
  %113 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %114 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %115 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %120 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %123 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ibmvfc_get_cmd_error(i32 %121, i32 %124)
  %126 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %127 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %130 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %133 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ibmvfc_get_fc_type(i32 %134)
  %136 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %137 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %140 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ibmvfc_get_ls_explain(i32 %141)
  %143 = load %struct.ibmvfc_port_login*, %struct.ibmvfc_port_login** %5, align 8
  %144 = getelementptr inbounds %struct.ibmvfc_port_login, %struct.ibmvfc_port_login* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @tgt_log(%struct.ibmvfc_target* %117, i32 %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %135, i32 %138, i32 %142, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %116, %92, %91, %55, %50
  %149 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %150 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %149, i32 0, i32 0
  %151 = load i32, i32* @ibmvfc_release_tgt, align 4
  %152 = call i32 @kref_put(i32* %150, i32 %151)
  %153 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %154 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %153)
  %155 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %156 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %155, i32 0, i32 1
  %157 = call i32 @wake_up(i32* %156)
  ret void
}

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_cmd(i32, i32) #1

declare dso_local i32 @tgt_log(%struct.ibmvfc_target*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @ibmvfc_get_fc_type(i32) #1

declare dso_local i32 @ibmvfc_get_ls_explain(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
