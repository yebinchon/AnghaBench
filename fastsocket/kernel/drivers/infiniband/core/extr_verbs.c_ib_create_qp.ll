; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_create_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.ib_pd*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ib_qp*, i32, %struct.ib_device*, i32, i32, i32*, %struct.ib_qp* }
%struct.TYPE_8__ = type { i32, %struct.ib_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_device = type { i32 (%struct.ib_qp*)*, %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*)* }
%struct.ib_pd = type { i32, %struct.ib_device* }
%struct.ib_qp_init_attr = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ib_qp*, i32, %struct.TYPE_8__* }

@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@__ib_shared_qp_event_handler = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @ib_create_qp(%struct.ib_pd* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_device*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %4, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %9 = icmp ne %struct.ib_pd* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 1
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %15, i32 0, i32 6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.ib_device*, %struct.ib_device** %18, align 8
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi %struct.ib_device* [ %13, %10 ], [ %19, %14 ]
  store %struct.ib_device* %21, %struct.ib_device** %7, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 1
  %24 = load %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*)*, %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*)** %23, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %26 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %27 = call %struct.ib_qp* %24(%struct.ib_pd* %25, %struct.ib_qp_init_attr* %26, i32* null)
  store %struct.ib_qp* %27, %struct.ib_qp** %5, align 8
  %28 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %29 = call i32 @IS_ERR(%struct.ib_qp* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %176, label %31

31:                                               ; preds = %20
  %32 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %33 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %34 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %33, i32 0, i32 8
  store %struct.ib_device* %32, %struct.ib_device** %34, align 8
  %35 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %36 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %36, i32 0, i32 12
  store %struct.ib_qp* %35, %struct.ib_qp** %37, align 8
  %38 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %38, i32 0, i32 11
  store i32* null, i32** %39, align 8
  %40 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %41 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %44 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %46 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %45, i32 0, i32 10
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %49 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %31
  %54 = load i32, i32* @__ib_shared_qp_event_handler, align 4
  %55 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %56 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %58 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %59 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %58, i32 0, i32 6
  store %struct.ib_qp* %57, %struct.ib_qp** %59, align 8
  %60 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %61 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %60, i32 0, i32 3
  store %struct.ib_pd* null, %struct.ib_pd** %61, align 8
  %62 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %63 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %62, i32 0, i32 5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %65 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %64, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %67 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %66, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %67, align 8
  %68 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %69 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %68, i32 0, i32 6
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %72 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %71, i32 0, i32 1
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  %73 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %74 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %73, i32 0, i32 6
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @atomic_inc(i32* %76)
  %78 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %79 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %78, i32 0, i32 9
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  store %struct.ib_qp* %81, %struct.ib_qp** %6, align 8
  %82 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %83 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %84 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %87 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %86, i32 0, i32 4
  %88 = load %struct.ib_qp*, %struct.ib_qp** %87, align 8
  %89 = call %struct.ib_qp* @__ib_open_qp(%struct.ib_qp* %82, i32 %85, %struct.ib_qp* %88)
  store %struct.ib_qp* %89, %struct.ib_qp** %5, align 8
  %90 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %91 = call i32 @IS_ERR(%struct.ib_qp* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %53
  %94 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %95 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %94, i32 0, i32 6
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %98 = call i32 @__ib_insert_xrcd_qp(%struct.TYPE_8__* %96, %struct.ib_qp* %97)
  br label %107

99:                                               ; preds = %53
  %100 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %101 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %100, i32 0, i32 8
  %102 = load %struct.ib_device*, %struct.ib_device** %101, align 8
  %103 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %102, i32 0, i32 0
  %104 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %103, align 8
  %105 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %106 = call i32 %104(%struct.ib_qp* %105)
  br label %107

107:                                              ; preds = %99, %93
  br label %175

108:                                              ; preds = %31
  %109 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %110 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %113 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %115 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %114, i32 0, i32 4
  %116 = load %struct.ib_qp*, %struct.ib_qp** %115, align 8
  %117 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %118 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %117, i32 0, i32 6
  store %struct.ib_qp* %116, %struct.ib_qp** %118, align 8
  %119 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %120 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %108
  %125 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %126 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %125, i32 0, i32 5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %126, align 8
  %127 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %128 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %127, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %128, align 8
  br label %156

129:                                              ; preds = %108
  %130 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %131 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %130, i32 0, i32 3
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %134 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %133, i32 0, i32 5
  store %struct.TYPE_5__* %132, %struct.TYPE_5__** %134, align 8
  %135 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %136 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i32 @atomic_inc(i32* %138)
  %140 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %141 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %144 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %143, i32 0, i32 4
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %144, align 8
  %145 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %146 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %145, i32 0, i32 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = icmp ne %struct.TYPE_6__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %129
  %150 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %151 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = call i32 @atomic_inc(i32* %153)
  br label %155

155:                                              ; preds = %149, %129
  br label %156

156:                                              ; preds = %155, %124
  %157 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %158 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %159 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %158, i32 0, i32 3
  store %struct.ib_pd* %157, %struct.ib_pd** %159, align 8
  %160 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %161 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %164 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %163, i32 0, i32 2
  store %struct.TYPE_7__* %162, %struct.TYPE_7__** %164, align 8
  %165 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %166 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %165, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %166, align 8
  %167 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %168 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %167, i32 0, i32 0
  %169 = call i32 @atomic_inc(i32* %168)
  %170 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %171 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %170, i32 0, i32 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = call i32 @atomic_inc(i32* %173)
  br label %175

175:                                              ; preds = %156, %107
  br label %176

176:                                              ; preds = %175, %20
  %177 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  ret %struct.ib_qp* %177
}

declare dso_local i32 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.ib_qp* @__ib_open_qp(%struct.ib_qp*, i32, %struct.ib_qp*) #1

declare dso_local i32 @__ib_insert_xrcd_qp(%struct.TYPE_8__*, %struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
