; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_issue_iocb_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli_issue_iocb_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_iocbq = type { i64, i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.lpfc_sglq = type { i64, i32 }
%union.lpfc_wqe = type { i32 }

@NO_XRI = common dso_local global i64 0, align 8
@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@SLI_IOCB_RET_IOCB = common dso_local global i64 0, align 8
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@IOCB_BUSY = common dso_local global i32 0, align 4
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i64, %struct.lpfc_iocbq*, i64)* @__lpfc_sli_issue_iocb_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lpfc_sli_issue_iocb_s4(%struct.lpfc_hba* %0, i64 %1, %struct.lpfc_iocbq* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_sglq*, align 8
  %11 = alloca %union.lpfc_wqe, align 4
  %12 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %16, i64 %17
  store %struct.lpfc_sli_ring* %18, %struct.lpfc_sli_ring** %12, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NO_XRI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %4
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24
  store %struct.lpfc_sglq* null, %struct.lpfc_sglq** %10, align 8
  br label %78

39:                                               ; preds = %31
  %40 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %41 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %40, i32 0, i32 0
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @SLI_IOCB_RET_IOCB, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %51 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %52 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %53 = call i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba* %50, %struct.lpfc_sli_ring* %51, %struct.lpfc_iocbq* %52)
  %54 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %197

55:                                               ; preds = %44
  %56 = load i32, i32* @IOCB_BUSY, align 4
  store i32 %56, i32* %5, align 4
  br label %197

57:                                               ; preds = %39
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %59 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %60 = call %struct.lpfc_sglq* @__lpfc_sli_get_sglq(%struct.lpfc_hba* %58, %struct.lpfc_iocbq* %59)
  store %struct.lpfc_sglq* %60, %struct.lpfc_sglq** %10, align 8
  %61 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %62 = icmp ne %struct.lpfc_sglq* %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @SLI_IOCB_RET_IOCB, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %70 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %72 = call i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba* %69, %struct.lpfc_sli_ring* %70, %struct.lpfc_iocbq* %71)
  %73 = load i32, i32* @IOCB_SUCCESS, align 4
  store i32 %73, i32* %5, align 4
  br label %197

74:                                               ; preds = %63
  %75 = load i32, i32* @IOCB_BUSY, align 4
  store i32 %75, i32* %5, align 4
  br label %197

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %38
  br label %99

79:                                               ; preds = %4
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LPFC_IO_FCP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store %struct.lpfc_sglq* null, %struct.lpfc_sglq** %10, align 8
  br label %98

87:                                               ; preds = %79
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %89 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %90 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.lpfc_sglq* @__lpfc_get_active_sglq(%struct.lpfc_hba* %88, i32 %91)
  store %struct.lpfc_sglq* %92, %struct.lpfc_sglq** %10, align 8
  %93 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %94 = icmp ne %struct.lpfc_sglq* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %96, i32* %5, align 4
  br label %197

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %78
  %100 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %101 = icmp ne %struct.lpfc_sglq* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %104 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %107 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %109 = getelementptr inbounds %struct.lpfc_sglq, %struct.lpfc_sglq* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* @NO_XRI, align 8
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %116 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %10, align 8
  %117 = call i64 @lpfc_sli4_bpl2sgl(%struct.lpfc_hba* %114, %struct.lpfc_iocbq* %115, %struct.lpfc_sglq* %116)
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %102
  %120 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %120, i32* %5, align 4
  br label %197

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %99
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %124 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %125 = call i64 @lpfc_sli4_iocb2wqe(%struct.lpfc_hba* %123, %struct.lpfc_iocbq* %124, %union.lpfc_wqe* %11)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %128, i32* %5, align 4
  br label %197

129:                                              ; preds = %122
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %131 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @LPFC_IO_FCP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %129
  %137 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %138 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %170

143:                                              ; preds = %136, %129
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %154, i32* %5, align 4
  br label %197

155:                                              ; preds = %143
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %161 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @lpfc_sli4_wq_put(i32 %164, %union.lpfc_wqe* %11)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %168, i32* %5, align 4
  br label %197

169:                                              ; preds = %155
  br label %192

170:                                              ; preds = %136
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %181, i32* %5, align 4
  br label %197

182:                                              ; preds = %170
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @lpfc_sli4_wq_put(i32 %186, %union.lpfc_wqe* %11)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %190, i32* %5, align 4
  br label %197

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %169
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %194 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %195 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %196 = call i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba* %193, %struct.lpfc_sli_ring* %194, %struct.lpfc_iocbq* %195)
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %192, %189, %180, %167, %153, %127, %119, %95, %74, %68, %55, %49
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__lpfc_sli_ringtx_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_sglq* @__lpfc_sli_get_sglq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_sglq* @__lpfc_get_active_sglq(%struct.lpfc_hba*, i32) #1

declare dso_local i64 @lpfc_sli4_bpl2sgl(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_sglq*) #1

declare dso_local i64 @lpfc_sli4_iocb2wqe(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %union.lpfc_wqe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @lpfc_sli4_wq_put(i32, %union.lpfc_wqe*) #1

declare dso_local i32 @lpfc_sli_ringtxcmpl_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
