; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_create_cq = type { i32, i32, i32, i32, i32, i32 }
%struct.mthca_cq = type { %struct.ib_cq, i32*, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_cq* (%struct.ib_device*, i32, i32, %struct.ib_ucontext*, %struct.ib_udata*)* @mthca_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_cq* @mthca_create_cq(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_ucontext* %3, %struct.ib_udata* %4) #0 {
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ucontext*, align 8
  %11 = alloca %struct.ib_udata*, align 8
  %12 = alloca %struct.mthca_create_cq, align 4
  %13 = alloca %struct.mthca_cq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ib_ucontext* %3, %struct.ib_ucontext** %10, align 8
  store %struct.ib_udata* %4, %struct.ib_udata** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %26, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %21 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_cq* @ERR_PTR(i32 %28)
  store %struct.ib_cq* %29, %struct.ib_cq** %6, align 8
  br label %204

30:                                               ; preds = %18
  %31 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %32 = icmp ne %struct.ib_ucontext* %31, null
  br i1 %32, label %33, label %80

33:                                               ; preds = %30
  %34 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %35 = call i64 @ib_copy_from_udata(%struct.mthca_create_cq* %12, %struct.ib_udata* %34, i32 24)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ib_cq* @ERR_PTR(i32 %39)
  store %struct.ib_cq* %40, %struct.ib_cq** %6, align 8
  br label %204

41:                                               ; preds = %33
  %42 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %43 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %42)
  %44 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %45 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %44)
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %48 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %47)
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mthca_map_user_db(%struct.TYPE_19__* %43, i32* %46, i32 %50, i32 %52, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.ib_cq* @ERR_PTR(i32 %59)
  store %struct.ib_cq* %60, %struct.ib_cq** %6, align 8
  br label %204

61:                                               ; preds = %41
  %62 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %63 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %62)
  %64 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %65 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %64)
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %68 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %67)
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mthca_map_user_db(%struct.TYPE_19__* %63, i32* %66, i32 %70, i32 %72, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  br label %185

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.mthca_cq* @kmalloc(i32 32, i32 %81)
  store %struct.mthca_cq* %82, %struct.mthca_cq** %13, align 8
  %83 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %84 = icmp ne %struct.mthca_cq* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %15, align 4
  br label %168

88:                                               ; preds = %80
  %89 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %90 = icmp ne %struct.ib_ucontext* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %95 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %102 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %106 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %91, %88
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %113, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %14, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %108

116:                                              ; preds = %108
  %117 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %118 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %117)
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %121 = icmp ne %struct.ib_ucontext* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %124 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %123)
  br label %126

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi %struct.TYPE_18__* [ %124, %122 ], [ null, %125 ]
  %128 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %129 = icmp ne %struct.ib_ucontext* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  br label %139

133:                                              ; preds = %126
  %134 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %135 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %134)
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = phi i32 [ %132, %130 ], [ %138, %133 ]
  %141 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %142 = call i32 @mthca_init_cq(%struct.TYPE_19__* %118, i32 %119, %struct.TYPE_18__* %127, i32 %140, %struct.mthca_cq* %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %165

146:                                              ; preds = %139
  %147 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %148 = icmp ne %struct.ib_ucontext* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %151 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %152 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %151, i32 0, i32 2
  %153 = call i64 @ib_copy_to_udata(%struct.ib_udata* %150, i32* %152, i32 4)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %157 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %156)
  %158 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %159 = call i32 @mthca_free_cq(%struct.TYPE_19__* %157, %struct.mthca_cq* %158)
  br label %165

160:                                              ; preds = %149, %146
  %161 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %162 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %161, i32 0, i32 1
  store i32* null, i32** %162, align 8
  %163 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %164 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %163, i32 0, i32 0
  store %struct.ib_cq* %164, %struct.ib_cq** %6, align 8
  br label %204

165:                                              ; preds = %155, %145
  %166 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %167 = call i32 @kfree(%struct.mthca_cq* %166)
  br label %168

168:                                              ; preds = %165, %85
  %169 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %170 = icmp ne %struct.ib_ucontext* %169, null
  br i1 %170, label %171, label %184

171:                                              ; preds = %168
  %172 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %173 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %172)
  %174 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %175 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %174)
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %178 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %177)
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @mthca_unmap_user_db(%struct.TYPE_19__* %173, i32* %176, i32 %180, i32 %182)
  br label %184

184:                                              ; preds = %171, %168
  br label %185

185:                                              ; preds = %184, %78
  %186 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %187 = icmp ne %struct.ib_ucontext* %186, null
  br i1 %187, label %188, label %201

188:                                              ; preds = %185
  %189 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %190 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %189)
  %191 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %192 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %191)
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %195 = call %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext* %194)
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.mthca_create_cq, %struct.mthca_create_cq* %12, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @mthca_unmap_user_db(%struct.TYPE_19__* %190, i32* %193, i32 %197, i32 %199)
  br label %201

201:                                              ; preds = %188, %185
  %202 = load i32, i32* %15, align 4
  %203 = call %struct.ib_cq* @ERR_PTR(i32 %202)
  store %struct.ib_cq* %203, %struct.ib_cq** %6, align 8
  br label %204

204:                                              ; preds = %201, %160, %58, %37, %26
  %205 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  ret %struct.ib_cq* %205
}

declare dso_local %struct.TYPE_19__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mthca_create_cq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @mthca_map_user_db(%struct.TYPE_19__*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.mthca_cq* @kmalloc(i32, i32) #1

declare dso_local i32 @mthca_init_cq(%struct.TYPE_19__*, i32, %struct.TYPE_18__*, i32, %struct.mthca_cq*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mthca_free_cq(%struct.TYPE_19__*, %struct.mthca_cq*) #1

declare dso_local i32 @kfree(%struct.mthca_cq*) #1

declare dso_local i32 @mthca_unmap_user_db(%struct.TYPE_19__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
