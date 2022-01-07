; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i64, i32, i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [84 x i8] c"unknown TLV. type %d length %d vf->state was %d. first 20 bytes of mailbox buffer:\0A\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@VF_ACQUIRED = common dso_local global i64 0, align 8
@VF_ENABLED = common dso_local global i64 0, align 8
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_request(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %8 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @bnx2x_tlv_supported(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %18 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x* %16, %struct.bnx2x_virtf* %17, i32 %22)
  %24 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %25 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %64 [
    i32 134, label %29
    i32 132, label %34
    i32 130, label %39
    i32 129, label %44
    i32 128, label %49
    i32 133, label %54
    i32 131, label %59
  ]

29:                                               ; preds = %15
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %32 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %33 = call i32 @bnx2x_vf_mbx_acquire(%struct.bnx2x* %30, %struct.bnx2x_virtf* %31, %struct.bnx2x_vf_mbx* %32)
  br label %135

34:                                               ; preds = %15
  %35 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %36 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %37 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %38 = call i32 @bnx2x_vf_mbx_init_vf(%struct.bnx2x* %35, %struct.bnx2x_virtf* %36, %struct.bnx2x_vf_mbx* %37)
  br label %135

39:                                               ; preds = %15
  %40 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %41 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %42 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %43 = call i32 @bnx2x_vf_mbx_setup_q(%struct.bnx2x* %40, %struct.bnx2x_virtf* %41, %struct.bnx2x_vf_mbx* %42)
  br label %135

44:                                               ; preds = %15
  %45 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %46 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %47 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %48 = call i32 @bnx2x_vf_mbx_set_q_filters(%struct.bnx2x* %45, %struct.bnx2x_virtf* %46, %struct.bnx2x_vf_mbx* %47)
  br label %135

49:                                               ; preds = %15
  %50 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %51 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %52 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %53 = call i32 @bnx2x_vf_mbx_teardown_q(%struct.bnx2x* %50, %struct.bnx2x_virtf* %51, %struct.bnx2x_vf_mbx* %52)
  br label %135

54:                                               ; preds = %15
  %55 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %56 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %57 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %58 = call i32 @bnx2x_vf_mbx_close_vf(%struct.bnx2x* %55, %struct.bnx2x_virtf* %56, %struct.bnx2x_vf_mbx* %57)
  br label %135

59:                                               ; preds = %15
  %60 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %61 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %62 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %63 = call i32 @bnx2x_vf_mbx_release_vf(%struct.bnx2x* %60, %struct.bnx2x_virtf* %61, %struct.bnx2x_vf_mbx* %62)
  br label %135

64:                                               ; preds = %15
  br label %101

65:                                               ; preds = %3
  %66 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %72 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %77 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %75, i64 %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %97, %65
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 20
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %85 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %86 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @DP_CONT(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %103 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VF_ACQUIRED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %109 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VF_ENABLED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107, %101
  %114 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  %115 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %116 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %118 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %119 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %117, %struct.bnx2x_virtf* %118)
  br label %135

120:                                              ; preds = %107
  %121 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %122 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %123 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @storm_memset_vf_mbx_ack(%struct.bnx2x* %121, i32 %124)
  %126 = call i32 (...) @mmiowb()
  %127 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %128 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %129 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %130 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x* %127, %struct.bnx2x_virtf* %128, i32 %133)
  br label %135

135:                                              ; preds = %29, %34, %39, %44, %49, %54, %59, %120, %113
  ret void
}

declare dso_local i64 @bnx2x_tlv_supported(i32) #1

declare dso_local i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_mbx_acquire(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_mbx_init_vf(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_mbx_setup_q(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_mbx_set_q_filters(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_mbx_teardown_q(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_mbx_close_vf(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_mbx_release_vf(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i64) #1

declare dso_local i32 @DP_CONT(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @storm_memset_vf_mbx_ack(%struct.bnx2x*, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
