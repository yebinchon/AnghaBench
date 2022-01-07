; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_queuetest_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_queuetest_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcdiag_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i64, i32, i32 (i32, i64)*, i32, %struct.bfa_diag_qtest_result_s* }
%struct.bfa_diag_qtest_result_s = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32* }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFI_LMSG_PL_WSZ = common dso_local global i32 0, align 4
@QTEST_PAT_DEFAULT = common dso_local global i32 0, align 4
@BFA_STATUS_DATACORRUPTED = common dso_local global i64 0, align 8
@BFI_IOC_MAX_CQS = common dso_local global i32 0, align 4
@QTEST_CNT_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcdiag_s*, %struct.TYPE_5__*)* @bfa_fcdiag_queuetest_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcdiag_queuetest_comp(%struct.bfa_fcdiag_s* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.bfa_fcdiag_s*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.bfa_diag_qtest_result_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_fcdiag_s* %0, %struct.bfa_fcdiag_s** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 9
  %11 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %10, align 8
  store %struct.bfa_diag_qtest_result_s* %11, %struct.bfa_diag_qtest_result_s** %5, align 8
  %12 = load i64, i64* @BFA_STATUS_OK, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %20 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %19, i64 %23)
  br label %179

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %51, %25
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BFI_LMSG_PL_WSZ, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QTEST_PAT_DEFAULT, align 4
  %44 = xor i32 %43, -1
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i64, i64* @BFA_STATUS_DATACORRUPTED, align 8
  %48 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %54

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %31

54:                                               ; preds = %46, %31
  %55 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BFA_STATUS_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %54
  %61 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %68 = call i64 @bfa_fcdiag_queuetest_send(%struct.bfa_fcdiag_s* %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @BFA_STATUS_OK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %179

73:                                               ; preds = %66
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %76 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73
  br label %115

78:                                               ; preds = %60
  %79 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %84
  %93 = load i8*, i8** @QTEST_CNT_DEFAULT, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %96 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i64 %94, i64* %97, align 8
  %98 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %99 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %104 = call i64 @bfa_fcdiag_queuetest_send(%struct.bfa_fcdiag_s* %103)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @BFA_STATUS_OK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %179

109:                                              ; preds = %92
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %112 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %84, %78
  br label %115

115:                                              ; preds = %114, %77
  br label %116

116:                                              ; preds = %115, %54
  %117 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %118 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %124 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 8
  %126 = call i32 @bfa_timer_stop(i32* %125)
  %127 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %128 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %122, %116
  %131 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %132 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %136 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load i8*, i8** @QTEST_CNT_DEFAULT, align 8
  %138 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %139 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 0, %141
  %143 = getelementptr i8, i8* %137, i64 %142
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %146 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %148 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %149 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %147, i64 %150)
  %152 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %153 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %154 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %152, i64 %155)
  %157 = load %struct.bfa_diag_qtest_result_s*, %struct.bfa_diag_qtest_result_s** %5, align 8
  %158 = getelementptr inbounds %struct.bfa_diag_qtest_result_s, %struct.bfa_diag_qtest_result_s* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %161 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  store i64 %159, i64* %162, align 8
  %163 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %164 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 7
  %166 = load i32 (i32, i64)*, i32 (i32, i64)** %165, align 8
  %167 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %168 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %172 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call i32 %166(i32 %170, i64 %174)
  %176 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %177 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %130, %108, %72, %18
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i64) #1

declare dso_local i64 @bfa_fcdiag_queuetest_send(%struct.bfa_fcdiag_s*) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
