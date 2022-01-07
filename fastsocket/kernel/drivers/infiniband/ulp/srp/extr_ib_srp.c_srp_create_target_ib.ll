; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_create_target_ib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_create_target_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { %struct.ib_qp*, %struct.ib_qp*, %struct.ib_qp*, %struct.TYPE_6__* }
%struct.ib_qp = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_qp_init_attr = type { %struct.ib_qp*, %struct.ib_qp*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8* }
%struct.ib_cq = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@srp_recv_completion = common dso_local global i32 0, align 4
@SRP_RQ_SIZE = common dso_local global i8* null, align 8
@srp_send_completion = common dso_local global i32 0, align 4
@SRP_SQ_SIZE = common dso_local global i8* null, align 8
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@srp_qp_event = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*)* @srp_create_target_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_create_target_ib(%struct.srp_target_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_qp_init_attr* @kzalloc(i32 56, i32 %9)
  store %struct.ib_qp_init_attr* %10, %struct.ib_qp_init_attr** %4, align 8
  %11 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %12 = icmp ne %struct.ib_qp_init_attr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %175

16:                                               ; preds = %1
  %17 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %18 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @srp_recv_completion, align 4
  %25 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %26 = load i8*, i8** @SRP_RQ_SIZE, align 8
  %27 = call %struct.ib_qp* @ib_create_cq(i32 %23, i32 %24, i32* null, %struct.srp_target_port* %25, i8* %26, i32 0)
  %28 = bitcast %struct.ib_qp* %27 to %struct.ib_cq*
  store %struct.ib_cq* %28, %struct.ib_cq** %5, align 8
  %29 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %30 = bitcast %struct.ib_cq* %29 to %struct.ib_qp*
  %31 = call i64 @IS_ERR(%struct.ib_qp* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %35 = bitcast %struct.ib_cq* %34 to %struct.ib_qp*
  %36 = call i32 @PTR_ERR(%struct.ib_qp* %35)
  store i32 %36, i32* %8, align 4
  br label %171

37:                                               ; preds = %16
  %38 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %39 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @srp_send_completion, align 4
  %46 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %47 = load i8*, i8** @SRP_SQ_SIZE, align 8
  %48 = call %struct.ib_qp* @ib_create_cq(i32 %44, i32 %45, i32* null, %struct.srp_target_port* %46, i8* %47, i32 0)
  %49 = bitcast %struct.ib_qp* %48 to %struct.ib_cq*
  store %struct.ib_cq* %49, %struct.ib_cq** %6, align 8
  %50 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %51 = bitcast %struct.ib_cq* %50 to %struct.ib_qp*
  %52 = call i64 @IS_ERR(%struct.ib_qp* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %56 = bitcast %struct.ib_cq* %55 to %struct.ib_qp*
  %57 = call i32 @PTR_ERR(%struct.ib_qp* %56)
  store i32 %57, i32* %8, align 4
  br label %167

58:                                               ; preds = %37
  %59 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %60 = bitcast %struct.ib_cq* %59 to %struct.ib_qp*
  %61 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %62 = call i32 @ib_req_notify_cq(%struct.ib_qp* %60, i32 %61)
  %63 = load i32, i32* @srp_qp_event, align 4
  %64 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %65 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @SRP_SQ_SIZE, align 8
  %67 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %68 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @SRP_RQ_SIZE, align 8
  %71 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %72 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %78 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %81 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %82 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @IB_QPT_RC, align 4
  %84 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %85 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %87 = bitcast %struct.ib_cq* %86 to %struct.ib_qp*
  %88 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %89 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %88, i32 0, i32 1
  store %struct.ib_qp* %87, %struct.ib_qp** %89, align 8
  %90 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %91 = bitcast %struct.ib_cq* %90 to %struct.ib_qp*
  %92 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %93 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %92, i32 0, i32 0
  store %struct.ib_qp* %91, %struct.ib_qp** %93, align 8
  %94 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %95 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %102 = call %struct.ib_qp* @ib_create_qp(i32 %100, %struct.ib_qp_init_attr* %101)
  store %struct.ib_qp* %102, %struct.ib_qp** %7, align 8
  %103 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %104 = call i64 @IS_ERR(%struct.ib_qp* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %58
  %107 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %108 = call i32 @PTR_ERR(%struct.ib_qp* %107)
  store i32 %108, i32* %8, align 4
  br label %163

109:                                              ; preds = %58
  %110 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %111 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %112 = call i32 @srp_init_qp(%struct.srp_target_port* %110, %struct.ib_qp* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %160

116:                                              ; preds = %109
  %117 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %118 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %117, i32 0, i32 2
  %119 = load %struct.ib_qp*, %struct.ib_qp** %118, align 8
  %120 = icmp ne %struct.ib_qp* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %123 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %122, i32 0, i32 2
  %124 = load %struct.ib_qp*, %struct.ib_qp** %123, align 8
  %125 = call i32 @ib_destroy_qp(%struct.ib_qp* %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %128 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %127, i32 0, i32 1
  %129 = load %struct.ib_qp*, %struct.ib_qp** %128, align 8
  %130 = icmp ne %struct.ib_qp* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %133 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %132, i32 0, i32 1
  %134 = load %struct.ib_qp*, %struct.ib_qp** %133, align 8
  %135 = call i32 @ib_destroy_cq(%struct.ib_qp* %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %138 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %137, i32 0, i32 0
  %139 = load %struct.ib_qp*, %struct.ib_qp** %138, align 8
  %140 = icmp ne %struct.ib_qp* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %143 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %142, i32 0, i32 0
  %144 = load %struct.ib_qp*, %struct.ib_qp** %143, align 8
  %145 = call i32 @ib_destroy_cq(%struct.ib_qp* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %148 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %149 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %148, i32 0, i32 2
  store %struct.ib_qp* %147, %struct.ib_qp** %149, align 8
  %150 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %151 = bitcast %struct.ib_cq* %150 to %struct.ib_qp*
  %152 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %153 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %152, i32 0, i32 1
  store %struct.ib_qp* %151, %struct.ib_qp** %153, align 8
  %154 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %155 = bitcast %struct.ib_cq* %154 to %struct.ib_qp*
  %156 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %157 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %156, i32 0, i32 0
  store %struct.ib_qp* %155, %struct.ib_qp** %157, align 8
  %158 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %159 = call i32 @kfree(%struct.ib_qp_init_attr* %158)
  store i32 0, i32* %2, align 4
  br label %175

160:                                              ; preds = %115
  %161 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %162 = call i32 @ib_destroy_qp(%struct.ib_qp* %161)
  br label %163

163:                                              ; preds = %160, %106
  %164 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %165 = bitcast %struct.ib_cq* %164 to %struct.ib_qp*
  %166 = call i32 @ib_destroy_cq(%struct.ib_qp* %165)
  br label %167

167:                                              ; preds = %163, %54
  %168 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %169 = bitcast %struct.ib_cq* %168 to %struct.ib_qp*
  %170 = call i32 @ib_destroy_cq(%struct.ib_qp* %169)
  br label %171

171:                                              ; preds = %167, %33
  %172 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %173 = call i32 @kfree(%struct.ib_qp_init_attr* %172)
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %146, %13
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.ib_qp_init_attr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @ib_create_cq(i32, i32, i32*, %struct.srp_target_port*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_qp*) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_qp*, i32) #1

declare dso_local %struct.ib_qp* @ib_create_qp(i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @srp_init_qp(%struct.srp_target_port*, %struct.ib_qp*) #1

declare dso_local i32 @ib_destroy_qp(%struct.ib_qp*) #1

declare dso_local i32 @ib_destroy_cq(%struct.ib_qp*) #1

declare dso_local i32 @kfree(%struct.ib_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
