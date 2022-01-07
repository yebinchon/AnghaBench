; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_process_rscn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_process_rscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fchs_s = type { i32 }
%struct.fc_rscn_pl_s = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@BFA_FALSE = common dso_local global i64 0, align 8
@BFA_TRUE = common dso_local global i64 0, align 8
@FC_QOS_RSCN_EVENT = common dso_local global i32 0, align 4
@FC_FABRIC_NAME_RSCN_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_scn_process_rscn(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_rscn_pl_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %15 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %14, i64 1
  %16 = bitcast %struct.fchs_s* %15 to %struct.fc_rscn_pl_s*
  store %struct.fc_rscn_pl_s* %16, %struct.fc_rscn_pl_s** %7, align 8
  %17 = load i64, i64* @BFA_FALSE, align 8
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %19 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @be16_to_cpu(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = udiv i64 %23, 12
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @bfa_trc(i32 %28, i32 %29)
  %31 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %37 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %38 = call i32 @bfa_fcs_lport_scn_send_ls_acc(%struct.bfa_fcs_lport_s* %36, %struct.fchs_s* %37)
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %168, %3
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %171

43:                                               ; preds = %39
  %44 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %45 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %56 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bfa_trc(i32 %54, i32 %62)
  %64 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @bfa_trc(i32 %66, i32 %67)
  %69 = load i64, i64* @BFA_FALSE, align 8
  store i64 %69, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %88, %43
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %76 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i64, i64* @BFA_TRUE, align 8
  store i64 %86, i64* %11, align 8
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %70

91:                                               ; preds = %85, %70
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %96 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @bfa_trc(i32 %97, i32 %98)
  br label %168

100:                                              ; preds = %91
  %101 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %102 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %164 [
    i32 128, label %109
    i32 129, label %136
    i32 131, label %151
    i32 130, label %151
  ]

109:                                              ; preds = %100
  %110 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %111 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FC_QOS_RSCN_EVENT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %122 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @bfa_trc(i32 %123, i32 %124)
  br label %135

126:                                              ; preds = %109
  %127 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %128 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @bfa_fcs_lport_scn_portid_rscn(%struct.bfa_fcs_lport_s* %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %120
  br label %167

136:                                              ; preds = %100
  %137 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %138 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @FC_FABRIC_NAME_RSCN_EVENT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %149 = call i32 @bfa_fcs_lport_ms_fabric_rscn(%struct.bfa_fcs_lport_s* %148)
  br label %167

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %100, %100, %150
  %152 = load i64, i64* @BFA_TRUE, align 8
  store i64 %152, i64* %10, align 8
  %153 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %154 = load %struct.fc_rscn_pl_s*, %struct.fc_rscn_pl_s** %7, align 8
  %155 = getelementptr inbounds %struct.fc_rscn_pl_s, %struct.fc_rscn_pl_s* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @bfa_fcs_lport_scn_multiport_rscn(%struct.bfa_fcs_lport_s* %153, i32 %161, i32 %162)
  br label %167

164:                                              ; preds = %100
  %165 = call i32 @WARN_ON(i32 1)
  %166 = load i64, i64* @BFA_TRUE, align 8
  store i64 %166, i64* %10, align 8
  br label %167

167:                                              ; preds = %164, %151, %147, %135
  br label %168

168:                                              ; preds = %167, %94
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %39

171:                                              ; preds = %39
  %172 = load i64, i64* %10, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %176 = call i32 @bfa_fcs_lport_ns_query(%struct.bfa_fcs_lport_s* %175)
  br label %177

177:                                              ; preds = %174, %171
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_scn_send_ls_acc(%struct.bfa_fcs_lport_s*, %struct.fchs_s*) #1

declare dso_local i32 @bfa_fcs_lport_scn_portid_rscn(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_ms_fabric_rscn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_scn_multiport_rscn(%struct.bfa_fcs_lport_s*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_fcs_lport_ns_query(%struct.bfa_fcs_lport_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
