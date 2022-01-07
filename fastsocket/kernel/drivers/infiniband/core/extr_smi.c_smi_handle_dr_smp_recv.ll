; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_smi.c_smi_handle_dr_smp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_smi.c_smi_handle_dr_smp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i32*, i32*, i64, i64 }

@IB_SMP_MAX_PATH_HOPS = common dso_local global i64 0, align 8
@IB_SMI_DISCARD = common dso_local global i32 0, align 4
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_handle_dr_smp_recv(%struct.ib_smp* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %13 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %16 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @IB_SMP_MAX_PATH_HOPS, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %22, i32* %5, align 4
  br label %203

23:                                               ; preds = %4
  %24 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %25 = call i32 @ib_get_smp_direction(%struct.ib_smp* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %111, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %34, i32* %5, align 4
  br label %203

35:                                               ; preds = %30, %27
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %47, i32* %5, align 4
  br label %203

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %51 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %56 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %68

66:                                               ; preds = %48
  %67 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %5, align 4
  br label %203

70:                                               ; preds = %38, %35
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %80 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %90 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88, %84
  %95 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %5, align 4
  br label %203

100:                                              ; preds = %70
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add nsw i64 %102, 1
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %5, align 4
  br label %203

111:                                              ; preds = %23
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %111
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = add nsw i64 %116, 1
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %121 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %125 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %128 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %119
  %135 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %138

136:                                              ; preds = %119
  %137 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %5, align 4
  br label %203

140:                                              ; preds = %114, %111
  %141 = load i64, i64* %10, align 8
  %142 = icmp sle i64 2, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %140
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = icmp sle i64 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %152, i32* %5, align 4
  br label %203

153:                                              ; preds = %147
  %154 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %155 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = sub nsw i64 %157, 1
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %167

165:                                              ; preds = %153
  %166 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %5, align 4
  br label %203

169:                                              ; preds = %143, %140
  %170 = load i64, i64* %10, align 8
  %171 = icmp eq i64 %170, 1
  br i1 %171, label %172, label %194

172:                                              ; preds = %169
  %173 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %174 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %180 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %180, align 8
  %183 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %183, i32* %5, align 4
  br label %203

184:                                              ; preds = %172
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  store i32 %193, i32* %5, align 4
  br label %203

194:                                              ; preds = %169
  %195 = load i64, i64* %10, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %201

199:                                              ; preds = %194
  %200 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %192, %178, %167, %151, %138, %109, %98, %68, %46, %33, %21
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
