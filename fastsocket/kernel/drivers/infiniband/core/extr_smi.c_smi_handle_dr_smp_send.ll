; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_smi.c_smi_handle_dr_smp_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_smi.c_smi_handle_dr_smp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i32*, i64, i32*, i64 }

@IB_SMP_MAX_PATH_HOPS = common dso_local global i64 0, align 8
@IB_SMI_DISCARD = common dso_local global i32 0, align 4
@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_handle_dr_smp_send(%struct.ib_smp* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %11 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %14 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @IB_SMP_MAX_PATH_HOPS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %20, i32* %4, align 4
  br label %214

21:                                               ; preds = %3
  %22 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %23 = call i32 @ib_get_smp_direction(%struct.ib_smp* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %121, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %33 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %37 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %40 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %50

48:                                               ; preds = %31
  %49 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %4, align 4
  br label %214

52:                                               ; preds = %28, %25
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %64, i32* %4, align 4
  br label %214

65:                                               ; preds = %59
  %66 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %71 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %74 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %84

82:                                               ; preds = %65
  %83 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %4, align 4
  br label %214

86:                                               ; preds = %55, %52
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %92 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %100 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98, %90
  %105 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %4, align 4
  br label %214

110:                                              ; preds = %86
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add nsw i64 %112, 1
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %4, align 4
  br label %214

121:                                              ; preds = %21
  %122 = load i64, i64* %9, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add nsw i64 %126, 1
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %124
  %130 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %131 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %135 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %138 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %129
  %145 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %148

146:                                              ; preds = %129
  %147 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %4, align 4
  br label %214

150:                                              ; preds = %124, %121
  %151 = load i64, i64* %8, align 8
  %152 = icmp sle i64 2, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %150
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = icmp sle i64 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %153
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %162, i32* %4, align 4
  br label %214

163:                                              ; preds = %157
  %164 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %165 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, -1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %169 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %172 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %163
  %179 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %182

180:                                              ; preds = %163
  %181 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %4, align 4
  br label %214

184:                                              ; preds = %153, %150
  %185 = load i64, i64* %8, align 8
  %186 = icmp eq i64 %185, 1
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %189 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, -1
  store i64 %191, i64* %189, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %201, label %195

195:                                              ; preds = %187
  %196 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %197 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %195, %187
  %202 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %205

203:                                              ; preds = %195
  %204 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  store i32 %206, i32* %4, align 4
  br label %214

207:                                              ; preds = %184
  %208 = load i64, i64* %8, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %211, i32* %4, align 4
  br label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %212, %210, %205, %182, %161, %148, %119, %108, %84, %63, %50, %19
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
