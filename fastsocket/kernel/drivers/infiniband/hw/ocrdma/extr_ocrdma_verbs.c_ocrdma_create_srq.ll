; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_create_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_srq_init_attr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_pd = type { i32, %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ocrdma_srq = type { i32, %struct.ocrdma_srq*, %struct.ocrdma_srq*, %struct.ib_srq, %struct.TYPE_7__, i64, %struct.ocrdma_pd*, %struct.ocrdma_dev*, i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @ocrdma_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_pd*, align 8
  %10 = alloca %struct.ocrdma_dev*, align 8
  %11 = alloca %struct.ocrdma_srq*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %15 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %14)
  store %struct.ocrdma_pd* %15, %struct.ocrdma_pd** %9, align 8
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %17 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %16, i32 0, i32 1
  %18 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  store %struct.ocrdma_dev* %18, %struct.ocrdma_dev** %10, align 8
  %19 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ib_srq* @ERR_PTR(i32 %30)
  store %struct.ib_srq* %31, %struct.ib_srq** %4, align 8
  br label %198

32:                                               ; preds = %3
  %33 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %38 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.ib_srq* @ERR_PTR(i32 %44)
  store %struct.ib_srq* %45, %struct.ib_srq** %4, align 8
  br label %198

46:                                               ; preds = %32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i32 64, i32 %47)
  %49 = bitcast i8* %48 to %struct.ocrdma_srq*
  store %struct.ocrdma_srq* %49, %struct.ocrdma_srq** %11, align 8
  %50 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %51 = icmp ne %struct.ocrdma_srq* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.ib_srq* @ERR_PTR(i32 %53)
  store %struct.ib_srq* %54, %struct.ib_srq** %4, align 8
  br label %198

55:                                               ; preds = %46
  %56 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %57 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %56, i32 0, i32 8
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %60 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %61 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %60, i32 0, i32 7
  store %struct.ocrdma_dev* %59, %struct.ocrdma_dev** %61, align 8
  %62 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %63 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %64 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %63, i32 0, i32 6
  store %struct.ocrdma_pd* %62, %struct.ocrdma_pd** %64, align 8
  %65 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %66 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %70 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %73 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %68, %77
  %79 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %80 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %82 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %83 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %84 = call i32 @ocrdma_mbx_create_srq(%struct.ocrdma_srq* %81, %struct.ib_srq_init_attr* %82, %struct.ocrdma_pd* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %55
  br label %185

88:                                               ; preds = %55
  %89 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %90 = icmp eq %struct.ib_udata* %89, null
  br i1 %90, label %91, label %152

91:                                               ; preds = %88
  %92 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %93 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kzalloc(i32 %98, i32 %99)
  %101 = bitcast i8* %100 to %struct.ocrdma_srq*
  %102 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %103 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %102, i32 0, i32 2
  store %struct.ocrdma_srq* %101, %struct.ocrdma_srq** %103, align 8
  %104 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %105 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %104, i32 0, i32 2
  %106 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %105, align 8
  %107 = icmp eq %struct.ocrdma_srq* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %181

109:                                              ; preds = %91
  %110 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %111 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 32
  %115 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %116 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = srem i32 %118, 32
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 0
  %123 = add nsw i32 %114, %122
  %124 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %125 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %127 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.ocrdma_srq* @kmalloc(i32 %131, i32 %132)
  %134 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %135 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %134, i32 0, i32 1
  store %struct.ocrdma_srq* %133, %struct.ocrdma_srq** %135, align 8
  %136 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %137 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %136, i32 0, i32 1
  %138 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %137, align 8
  %139 = icmp eq %struct.ocrdma_srq* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %109
  br label %181

141:                                              ; preds = %109
  %142 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %143 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %142, i32 0, i32 1
  %144 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %143, align 8
  %145 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %146 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memset(%struct.ocrdma_srq* %144, i32 255, i32 %150)
  br label %152

152:                                              ; preds = %141, %88
  %153 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %154 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %160 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %161 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %160, i32 0, i32 0
  %162 = call i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq* %159, %struct.TYPE_8__* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %181

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %152
  %168 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %169 = icmp ne %struct.ib_udata* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %172 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %173 = call i32 @ocrdma_copy_srq_uresp(%struct.ocrdma_srq* %171, %struct.ib_udata* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %181

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %167
  %179 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %180 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %179, i32 0, i32 3
  store %struct.ib_srq* %180, %struct.ib_srq** %4, align 8
  br label %198

181:                                              ; preds = %176, %165, %140, %108
  %182 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %183 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %184 = call i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev* %182, %struct.ocrdma_srq* %183)
  br label %185

185:                                              ; preds = %181, %87
  %186 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %187 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %186, i32 0, i32 2
  %188 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %187, align 8
  %189 = call i32 @kfree(%struct.ocrdma_srq* %188)
  %190 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %191 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %190, i32 0, i32 1
  %192 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %191, align 8
  %193 = call i32 @kfree(%struct.ocrdma_srq* %192)
  %194 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %11, align 8
  %195 = call i32 @kfree(%struct.ocrdma_srq* %194)
  %196 = load i32, i32* %8, align 4
  %197 = call %struct.ib_srq* @ERR_PTR(i32 %196)
  store %struct.ib_srq* %197, %struct.ib_srq** %4, align 8
  br label %198

198:                                              ; preds = %185, %178, %52, %42, %28
  %199 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  ret %struct.ib_srq* %199
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ocrdma_mbx_create_srq(%struct.ocrdma_srq*, %struct.ib_srq_init_attr*, %struct.ocrdma_pd*) #1

declare dso_local %struct.ocrdma_srq* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ocrdma_srq*, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_modify_srq(%struct.ocrdma_srq*, %struct.TYPE_8__*) #1

declare dso_local i32 @ocrdma_copy_srq_uresp(%struct.ocrdma_srq*, %struct.ib_udata*) #1

declare dso_local i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev*, %struct.ocrdma_srq*) #1

declare dso_local i32 @kfree(%struct.ocrdma_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
