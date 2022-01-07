; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_eq.c_ehca_create_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_eq.c_ehca_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.ib_device }
%struct.ib_device = type { i32 }
%struct.ehca_eq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EHCA_EQ = common dso_local global i32 0, align 4
@EHCA_NEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid EQ type %x. eq=%p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EQ length must not be zero. eq=%p\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't allocate EQ/NEQ. eq=%p\00", align 1
@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't allocate EQ pages eq=%p\00", align 1
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@ehca_tasklet_eq = common dso_local global i32 0, align 4
@ehca_interrupt_eq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ehca_eq\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't map interrupt handler.\00", align 1
@ehca_tasklet_neq = common dso_local global i32 0, align 4
@ehca_interrupt_neq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ehca_neq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_create_eq(%struct.ehca_shca* %0, %struct.ehca_eq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehca_shca*, align 8
  %7 = alloca %struct.ehca_eq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ib_device*, align 8
  %16 = alloca i64, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %6, align 8
  store %struct.ehca_eq* %1, %struct.ehca_eq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %18 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %17, i32 0, i32 1
  store %struct.ib_device* %18, %struct.ib_device** %15, align 8
  %19 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %20 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %23 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %22, i32 0, i32 7
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %26 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EHCA_EQ, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EHCA_NEQ, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %38 = call i32 (%struct.ib_device*, i8*, ...) @ehca_err(%struct.ib_device* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.ehca_eq* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %206

41:                                               ; preds = %30, %4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %46 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %47 = call i32 (%struct.ib_device*, i8*, ...) @ehca_err(%struct.ib_device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.ehca_eq* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %206

50:                                               ; preds = %41
  %51 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %52 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %55 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %54, i32 0, i32 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %59 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %58, i32 0, i32 5
  %60 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %61 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %60, i32 0, i32 6
  %62 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %63 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %62, i32 0, i32 2
  %64 = call i64 @hipz_h_alloc_resource_eq(i32 %53, i32* %55, i32 %56, i32 %57, i32* %59, i32* %61, i32* %12, i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @H_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %50
  %69 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %70 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %71 = call i32 (%struct.ib_device*, i8*, ...) @ehca_err(%struct.ib_device* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.ehca_eq* %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %206

74:                                               ; preds = %50
  %75 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %76 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %75, i32 0, i32 1
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @EHCA_PAGESIZE, align 4
  %79 = call i32 @ipz_queue_ctor(i32* null, i32* %76, i32 %77, i32 %78, i32 4, i32 0, i32 0)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %84 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %85 = call i32 (%struct.ib_device*, i8*, ...) @ehca_err(%struct.ib_device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.ehca_eq* %84)
  br label %198

86:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %134, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %137

91:                                               ; preds = %87
  %92 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %93 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %92, i32 0, i32 1
  %94 = call i8* @ipz_qpageit_get_inc(i32* %93)
  store i8* %94, i8** %14, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %194

98:                                               ; preds = %91
  %99 = load i8*, i8** %14, align 8
  %100 = call i64 @virt_to_abs(i8* %99)
  store i64 %100, i64* %16, align 8
  %101 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %102 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %105 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %108 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %107, i32 0, i32 4
  %109 = load i64, i64* %16, align 8
  %110 = call i64 @hipz_h_register_rpage_eq(i32 %103, i32 %106, i32* %108, i32 0, i32 0, i64 %109, i32 1)
  store i64 %110, i64* %11, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %98
  %116 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %117 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %116, i32 0, i32 1
  %118 = call i8* @ipz_qpageit_get_inc(i32* %117)
  store i8* %118, i8** %14, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @H_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = load i8*, i8** %14, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122, %115
  br label %194

126:                                              ; preds = %122
  br label %133

127:                                              ; preds = %98
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %194

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %126
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %87

137:                                              ; preds = %87
  %138 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %139 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %138, i32 0, i32 1
  %140 = call i32 @ipz_qeit_reset(i32* %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @EHCA_EQ, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %137
  %145 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %146 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %145, i32 0, i32 3
  %147 = load i32, i32* @ehca_tasklet_eq, align 4
  %148 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %149 = ptrtoint %struct.ehca_shca* %148 to i64
  %150 = call i32 @tasklet_init(i32* %146, i32 %147, i64 %149)
  %151 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %152 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ehca_interrupt_eq, align 4
  %155 = load i32, i32* @IRQF_DISABLED, align 4
  %156 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %157 = bitcast %struct.ehca_shca* %156 to i8*
  %158 = call i32 @ibmebus_request_irq(i32 %153, i32 %154, i32 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %144
  %162 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %163 = call i32 (%struct.ib_device*, i8*, ...) @ehca_err(%struct.ib_device* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %144
  br label %191

165:                                              ; preds = %137
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @EHCA_NEQ, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %171 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %170, i32 0, i32 3
  %172 = load i32, i32* @ehca_tasklet_neq, align 4
  %173 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %174 = ptrtoint %struct.ehca_shca* %173 to i64
  %175 = call i32 @tasklet_init(i32* %171, i32 %172, i64 %174)
  %176 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %177 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ehca_interrupt_neq, align 4
  %180 = load i32, i32* @IRQF_DISABLED, align 4
  %181 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %182 = bitcast %struct.ehca_shca* %181 to i8*
  %183 = call i32 @ibmebus_request_irq(i32 %178, i32 %179, i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %169
  %187 = load %struct.ib_device*, %struct.ib_device** %15, align 8
  %188 = call i32 (%struct.ib_device*, i8*, ...) @ehca_err(%struct.ib_device* %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %169
  br label %190

190:                                              ; preds = %189, %165
  br label %191

191:                                              ; preds = %190, %164
  %192 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %193 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %192, i32 0, i32 0
  store i32 1, i32* %193, align 4
  store i32 0, i32* %5, align 4
  br label %206

194:                                              ; preds = %131, %125, %97
  %195 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %196 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %195, i32 0, i32 1
  %197 = call i32 @ipz_queue_dtor(i32* null, i32* %196)
  br label %198

198:                                              ; preds = %194, %82
  %199 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %200 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ehca_eq*, %struct.ehca_eq** %7, align 8
  %203 = call i32 @hipz_h_destroy_eq(i32 %201, %struct.ehca_eq* %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %198, %191, %68, %44, %34
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ehca_err(%struct.ib_device*, i8*, ...) #1

declare dso_local i64 @hipz_h_alloc_resource_eq(i32, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ipz_queue_ctor(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @ipz_qpageit_get_inc(i32*) #1

declare dso_local i64 @virt_to_abs(i8*) #1

declare dso_local i64 @hipz_h_register_rpage_eq(i32, i32, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @ipz_qeit_reset(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @ibmebus_request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ipz_queue_dtor(i32*, i32*) #1

declare dso_local i32 @hipz_h_destroy_eq(i32, %struct.ehca_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
