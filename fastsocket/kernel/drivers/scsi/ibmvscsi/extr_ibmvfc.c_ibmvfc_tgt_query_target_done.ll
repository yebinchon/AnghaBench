; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_query_target_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_3__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_3__ = type { %struct.ibmvfc_query_tgt }
%struct.ibmvfc_query_tgt = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_target = type { i32, i32, i32 }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Query Target succeeded\0A\00", align 1
@ibmvfc_tgt_implicit_logout = common dso_local global i32 0, align 4
@ibmvfc_tgt_adisc = common dso_local global i32 0, align 4
@ibmvfc_tgt_query_target = common dso_local global i32 0, align 4
@IBMVFC_FABRIC_MAPPED = common dso_local global i32 0, align 4
@IBMVFC_UNABLE_TO_PERFORM_REQ = common dso_local global i32 0, align 4
@IBMVFC_PORT_NAME_NOT_REG = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Query Target failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_query_target_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_query_target_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_query_tgt*, align 8
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
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ibmvfc_query_tgt* %17, %struct.ibmvfc_query_tgt** %5, align 8
  %18 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %28 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %29 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %61 [
    i32 128, label %31
    i32 130, label %55
    i32 131, label %56
    i32 129, label %60
  ]

31:                                               ; preds = %1
  %32 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %33 = call i32 @tgt_dbg(%struct.ibmvfc_target* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %43 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %48 = load i32, i32* @ibmvfc_tgt_implicit_logout, align 4
  %49 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %47, i32 %48)
  br label %54

50:                                               ; preds = %31
  %51 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %52 = load i32, i32* @ibmvfc_tgt_adisc, align 4
  %53 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %137

55:                                               ; preds = %1
  br label %137

56:                                               ; preds = %1
  %57 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %58 = load i32, i32* @ibmvfc_tgt_query_target, align 4
  %59 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %57, i32 %58)
  br label %137

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %1, %60
  %62 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IBMVFC_FABRIC_MAPPED, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @IBMVFC_FABRIC_MAPPED, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %71 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IBMVFC_UNABLE_TO_PERFORM_REQ, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %77 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IBMVFC_PORT_NAME_NOT_REG, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %83 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %84 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %82, i32 %83)
  br label %105

85:                                               ; preds = %75, %69, %61
  %86 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %87 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %90 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ibmvfc_retry_cmd(i32 %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %96 = load i32, i32* @ibmvfc_tgt_query_target, align 4
  %97 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %104

100:                                              ; preds = %85
  %101 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %102 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %103 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %81
  %106 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %109 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %112 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ibmvfc_get_cmd_error(i32 %110, i32 %113)
  %115 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %116 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %119 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %122 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ibmvfc_get_fc_type(i32 %123)
  %125 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %126 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %129 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ibmvfc_get_gs_explain(i32 %130)
  %132 = load %struct.ibmvfc_query_tgt*, %struct.ibmvfc_query_tgt** %5, align 8
  %133 = getelementptr inbounds %struct.ibmvfc_query_tgt, %struct.ibmvfc_query_tgt* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @tgt_log(%struct.ibmvfc_target* %106, i32 %107, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117, i32 %120, i32 %124, i32 %127, i32 %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %105, %56, %55, %54
  %138 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %139 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %138, i32 0, i32 0
  %140 = load i32, i32* @ibmvfc_release_tgt, align 4
  %141 = call i32 @kref_put(i32* %139, i32 %140)
  %142 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %143 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %142)
  %144 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %145 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %144, i32 0, i32 0
  %146 = call i32 @wake_up(i32* %145)
  ret void
}

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_cmd(i32, i32) #1

declare dso_local i32 @tgt_log(%struct.ibmvfc_target*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @ibmvfc_get_fc_type(i32) #1

declare dso_local i32 @ibmvfc_get_gs_explain(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
