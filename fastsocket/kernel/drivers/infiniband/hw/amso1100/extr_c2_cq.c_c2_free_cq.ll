; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_free_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_cq.c_c2_free_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32, i32, i32** }
%struct.c2_cq = type { %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.c2_vq_req = type { i64 }
%struct.c2wr_cq_destroy_req = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.c2wr_cq_destroy_rep = type { i32 }
%union.c2wr = type { i32 }

@CCWR_CQ_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2_free_cq(%struct.c2_dev* %0, %struct.c2_cq* %1) #0 {
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca %struct.c2_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_vq_req*, align 8
  %7 = alloca %struct.c2wr_cq_destroy_req, align 8
  %8 = alloca %struct.c2wr_cq_destroy_rep*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  store %struct.c2_cq* %1, %struct.c2_cq** %4, align 8
  %9 = call i32 (...) @might_sleep()
  %10 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %11 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %14 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %13, i32 0, i32 2
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %17 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %15, i64 %19
  store i32* null, i32** %20, align 8
  %21 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %22 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %21, i32 0, i32 3
  %23 = call i32 @atomic_dec(i32* %22)
  %24 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %25 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %28 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %31 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %30, i32 0, i32 3
  %32 = call i32 @atomic_read(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %29, i32 %35)
  %37 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %38 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %37)
  store %struct.c2_vq_req* %38, %struct.c2_vq_req** %6, align 8
  %39 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %40 = icmp ne %struct.c2_vq_req* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %93

42:                                               ; preds = %2
  %43 = call i32 @memset(%struct.c2wr_cq_destroy_req* %7, i32 0, i32 16)
  %44 = load i32, i32* @CCWR_CQ_DESTROY, align 4
  %45 = call i32 @c2_wr_set_id(%struct.c2wr_cq_destroy_req* %7, i32 %44)
  %46 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %47 = ptrtoint %struct.c2_vq_req* %46 to i64
  %48 = getelementptr inbounds %struct.c2wr_cq_destroy_req, %struct.c2wr_cq_destroy_req* %7, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %51 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.c2wr_cq_destroy_req, %struct.c2wr_cq_destroy_req* %7, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %55 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.c2wr_cq_destroy_req, %struct.c2wr_cq_destroy_req* %7, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %59 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %60 = call i32 @vq_req_get(%struct.c2_dev* %58, %struct.c2_vq_req* %59)
  %61 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %62 = bitcast %struct.c2wr_cq_destroy_req* %7 to %union.c2wr*
  %63 = call i32 @vq_send_wr(%struct.c2_dev* %61, %union.c2wr* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %42
  %67 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %68 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %69 = call i32 @vq_req_put(%struct.c2_dev* %67, %struct.c2_vq_req* %68)
  br label %89

70:                                               ; preds = %42
  %71 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %72 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %73 = call i32 @vq_wait_for_reply(%struct.c2_dev* %71, %struct.c2_vq_req* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %89

77:                                               ; preds = %70
  %78 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %79 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.c2wr_cq_destroy_rep*
  store %struct.c2wr_cq_destroy_rep* %81, %struct.c2wr_cq_destroy_rep** %8, align 8
  %82 = load %struct.c2wr_cq_destroy_rep*, %struct.c2wr_cq_destroy_rep** %8, align 8
  %83 = icmp ne %struct.c2wr_cq_destroy_rep* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %86 = load %struct.c2wr_cq_destroy_rep*, %struct.c2wr_cq_destroy_rep** %8, align 8
  %87 = call i32 @vq_repbuf_free(%struct.c2_dev* %85, %struct.c2wr_cq_destroy_rep* %86)
  br label %88

88:                                               ; preds = %84, %77
  br label %89

89:                                               ; preds = %88, %76, %66
  %90 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %91 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %92 = call i32 @vq_req_free(%struct.c2_dev* %90, %struct.c2_vq_req* %91)
  br label %93

93:                                               ; preds = %89, %41
  %94 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %95 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %100 = load %struct.c2_cq*, %struct.c2_cq** %4, align 8
  %101 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %100, i32 0, i32 0
  %102 = call i32 @c2_free_cq_buf(%struct.c2_dev* %99, %struct.TYPE_4__* %101)
  br label %103

103:                                              ; preds = %98, %93
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @memset(%struct.c2wr_cq_destroy_req*, i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_cq_destroy_req*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_cq_destroy_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_free_cq_buf(%struct.c2_dev*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
