; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_abort_scbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_abort_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.scb = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AHD_NUM_LUNS_NONPKT = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i32 0, align 4
@pending_links = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Inactive SCB on pending list\0A\00", align 1
@AHD_UPDATE_PEND_CMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, i32, i8, i32, i32, i32, i32)* @ahd_abort_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_abort_scbs(%struct.ahd_softc* %0, i32 %1, i8 signext %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ahd_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scb*, align 8
  %16 = alloca %struct.scb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %28 = call i32 @ahd_save_modes(%struct.ahd_softc* %27)
  store i32 %28, i32* %23, align 4
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %30 = load i32, i32* @AHD_MODE_SCSI, align 4
  %31 = load i32, i32* @AHD_MODE_SCSI, align 4
  %32 = call i32 @ahd_set_modes(%struct.ahd_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8, i8* %10, align 1
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SCB_LIST_NULL, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %40 = load i32, i32* @SEARCH_COMPLETE, align 4
  %41 = call i32 @ahd_search_qinfifo(%struct.ahd_softc* %33, i32 %34, i8 signext %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %22, align 4
  store i32 0, i32* %17, align 4
  store i32 16, i32* %19, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %7
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i8, i8* %10, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 66
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 8
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %19, align 4
  br label %56

56:                                               ; preds = %53, %7
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  store i32 0, i32* %20, align 4
  %61 = load i32, i32* @AHD_NUM_LUNS_NONPKT, align 4
  store i32 %61, i32* %21, align 4
  br label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @AHD_NUM_LUNS_NONPKT, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %71

71:                                               ; preds = %67, %66
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @ROLE_TARGET, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %124

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %120, %76
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %123

81:                                               ; preds = %77
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %116, %81
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @BUILD_TCL_RAW(i32 %88, i8 signext 65, i32 %89)
  store i32 %90, i32* %25, align 4
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %92 = load i32, i32* %25, align 4
  %93 = call i32 @ahd_find_busy_tcl(%struct.ahd_softc* %91, i32 %92)
  store i32 %93, i32* %24, align 4
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %95 = load i32, i32* %24, align 4
  %96 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %94, i32 %95)
  store %struct.scb* %96, %struct.scb** %15, align 8
  %97 = load %struct.scb*, %struct.scb** %15, align 8
  %98 = icmp eq %struct.scb* %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %87
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %101 = load %struct.scb*, %struct.scb** %15, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i8, i8* %10, align 1
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i64 @ahd_match_scb(%struct.ahd_softc* %100, %struct.scb* %101, i32 %102, i8 signext %103, i32 %104, i32 %105, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99, %87
  br label %116

110:                                              ; preds = %99
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @BUILD_TCL_RAW(i32 %112, i8 signext 65, i32 %113)
  %115 = call i32 @ahd_unbusy_tcl(%struct.ahd_softc* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %109
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %83

119:                                              ; preds = %83
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %77

123:                                              ; preds = %77
  br label %124

124:                                              ; preds = %123, %72
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %126 = call i32 @ahd_flush_qoutfifo(%struct.ahd_softc* %125)
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %128 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %127, i32 0, i32 1
  %129 = call %struct.scb* @LIST_FIRST(i32* %128)
  store %struct.scb* %129, %struct.scb** %16, align 8
  br label %130

130:                                              ; preds = %180, %124
  %131 = load %struct.scb*, %struct.scb** %16, align 8
  %132 = icmp ne %struct.scb* %131, null
  br i1 %132, label %133, label %181

133:                                              ; preds = %130
  %134 = load %struct.scb*, %struct.scb** %16, align 8
  store %struct.scb* %134, %struct.scb** %15, align 8
  %135 = load %struct.scb*, %struct.scb** %15, align 8
  %136 = load i32, i32* @pending_links, align 4
  %137 = call %struct.scb* @LIST_NEXT(%struct.scb* %135, i32 %136)
  store %struct.scb* %137, %struct.scb** %16, align 8
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %139 = load %struct.scb*, %struct.scb** %15, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i8, i8* %10, align 1
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @ahd_match_scb(%struct.ahd_softc* %138, %struct.scb* %139, i32 %140, i8 signext %141, i32 %142, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %133
  %148 = load %struct.scb*, %struct.scb** %15, align 8
  %149 = call i64 @ahd_get_transaction_status(%struct.scb* %148)
  store i64 %149, i64* %26, align 8
  %150 = load i64, i64* %26, align 8
  %151 = load i64, i64* @CAM_REQ_INPROG, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.scb*, %struct.scb** %15, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @ahd_set_transaction_status(%struct.scb* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.scb*, %struct.scb** %15, align 8
  %159 = call i64 @ahd_get_transaction_status(%struct.scb* %158)
  %160 = load i64, i64* @CAM_REQ_CMP, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.scb*, %struct.scb** %15, align 8
  %164 = call i32 @ahd_freeze_scb(%struct.scb* %163)
  br label %165

165:                                              ; preds = %162, %157
  %166 = load %struct.scb*, %struct.scb** %15, align 8
  %167 = getelementptr inbounds %struct.scb, %struct.scb* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SCB_ACTIVE, align 4
  %170 = and i32 %168, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %165
  %175 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %176 = load %struct.scb*, %struct.scb** %15, align 8
  %177 = call i32 @ahd_done(%struct.ahd_softc* %175, %struct.scb* %176)
  %178 = load i32, i32* %22, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %22, align 4
  br label %180

180:                                              ; preds = %174, %133
  br label %130

181:                                              ; preds = %130
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %183 = load i32, i32* %23, align 4
  %184 = call i32 @ahd_restore_modes(%struct.ahd_softc* %182, i32 %183)
  %185 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i8, i8* %10, align 1
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @ahd_platform_abort_scbs(%struct.ahd_softc* %185, i32 %186, i8 signext %187, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* @AHD_UPDATE_PEND_CMDS, align 4
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %195 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %22, align 4
  ret i32 %198
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_search_qinfifo(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUILD_TCL_RAW(i32, i8 signext, i32) #1

declare dso_local i32 @ahd_find_busy_tcl(%struct.ahd_softc*, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @ahd_match_scb(%struct.ahd_softc*, %struct.scb*, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @ahd_unbusy_tcl(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_flush_qoutfifo(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @LIST_FIRST(i32*) #1

declare dso_local %struct.scb* @LIST_NEXT(%struct.scb*, i32) #1

declare dso_local i64 @ahd_get_transaction_status(%struct.scb*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_scb(%struct.scb*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ahd_done(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_platform_abort_scbs(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
