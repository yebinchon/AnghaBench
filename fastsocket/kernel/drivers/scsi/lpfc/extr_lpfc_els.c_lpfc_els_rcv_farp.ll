; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_farp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_farp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_nodelist = type { i64, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0601 FARP-REQ received from DID x%x\0A\00", align 1
@FARP_MATCH_NODE = common dso_local global i32 0, align 4
@FARP_MATCH_PORT = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@FARP_REQUEST_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@FARP_REQUEST_FARPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_farp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_farp(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 1
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %25, %struct.lpfc_dmabuf** %8, align 8
  %26 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %27 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %11, align 8
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load i32, i32* @LOG_ELS, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FARP_MATCH_NODE, align 4
  %44 = load i32, i32* @FARP_MATCH_PORT, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

50:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FARP_MATCH_PORT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 1
  %62 = call i64 @memcmp(i32* %59, i32* %61, i32 4)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FARP_MATCH_NODE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %77 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %76, i32 0, i32 0
  %78 = call i64 @memcmp(i32* %75, i32* %77, i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %73
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %82
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %91, %85
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FARP_REQUEST_PLOGI, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %109 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %112 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %113 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %110, %struct.lpfc_nodelist* %111, i32 %112)
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %115 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %116 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %114, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %104, %97
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FARP_REQUEST_FARPR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @lpfc_issue_els_farpr(%struct.lpfc_vport* %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %126, %119
  br label %131

131:                                              ; preds = %130, %91
  br label %132

132:                                              ; preds = %131, %82
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %49
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_issue_els_farpr(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
