; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_adisc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_5__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_5__ = type { %struct.ibmvfc_passthru_mad }
%struct.ibmvfc_passthru_mad = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_target = type { i32, i32 }

@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ADISC succeeded\0A\00", align 1
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ADISC failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_adisc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_adisc_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_passthru_mad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %9 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %9, i32 0, i32 2
  %11 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %10, align 8
  store %struct.ibmvfc_target* %11, %struct.ibmvfc_target** %3, align 8
  %12 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %12, i32 0, i32 1
  %14 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %13, align 8
  store %struct.ibmvfc_host* %14, %struct.ibmvfc_host** %4, align 8
  %15 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ibmvfc_passthru_mad* %18, %struct.ibmvfc_passthru_mad** %5, align 8
  %19 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %28 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %29 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %27, i32 %28)
  %30 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %30, i32 0, i32 1
  %32 = call i32 @del_timer(i32* %31)
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %48 [
    i32 128, label %34
    i32 130, label %46
    i32 129, label %47
  ]

34:                                               ; preds = %1
  %35 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %36 = call i32 @tgt_dbg(%struct.ibmvfc_target* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %38 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %39 = call i32 @ibmvfc_adisc_needs_plogi(%struct.ibmvfc_passthru_mad* %37, %struct.ibmvfc_target* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %43 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %44 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %94

46:                                               ; preds = %1
  br label %94

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %1, %47
  %49 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %50 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %51 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %49, i32 %50)
  %52 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %53 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 16711680
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %61 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65280
  %67 = ashr i32 %66, 8
  store i32 %67, i32* %8, align 4
  %68 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %69 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %70 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ibmvfc_get_cmd_error(i32 %72, i32 %76)
  %78 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %79 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %5, align 8
  %83 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ibmvfc_get_fc_type(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ibmvfc_get_ls_explain(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @tgt_info(%struct.ibmvfc_target* %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %81, i32 %85, i32 %87, i32 %88, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %48, %46, %45
  %95 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %95, i32 0, i32 0
  %97 = load i32, i32* @ibmvfc_release_tgt, align 4
  %98 = call i32 @kref_put(i32* %96, i32 %97)
  %99 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %100 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %99)
  %101 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %102 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %101, i32 0, i32 0
  %103 = call i32 @wake_up(i32* %102)
  ret void
}

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @ibmvfc_adisc_needs_plogi(%struct.ibmvfc_passthru_mad*, %struct.ibmvfc_target*) #1

declare dso_local i32 @tgt_info(%struct.ibmvfc_target*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

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
