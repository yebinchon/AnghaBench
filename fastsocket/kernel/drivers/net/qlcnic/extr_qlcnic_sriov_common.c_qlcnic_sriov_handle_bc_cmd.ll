; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_bc_hdr = type { i64, i64, i32, i32 }
%struct.qlcnic_vf_info = type { %struct.TYPE_4__, i32, %struct.qlcnic_adapter*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.qlcnic_adapter = type { i64 }
%struct.qlcnic_bc_trans = type { i32, i32, i32, %struct.TYPE_3__*, i32, %struct.qlcnic_vf_info*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qlcnic_cmd_args = type { i64 }

@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@QLC_BC_CMD = common dso_local global i64 0, align 8
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLC_BC_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_sriov*, %struct.qlcnic_bc_hdr*, %struct.qlcnic_vf_info*)* @qlcnic_sriov_handle_bc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_handle_bc_cmd(%struct.qlcnic_sriov* %0, %struct.qlcnic_bc_hdr* %1, %struct.qlcnic_vf_info* %2) #0 {
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_bc_hdr*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_bc_trans*, align 8
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_cmd_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %4, align 8
  store %struct.qlcnic_bc_hdr* %1, %struct.qlcnic_bc_hdr** %5, align 8
  store %struct.qlcnic_vf_info* %2, %struct.qlcnic_vf_info** %6, align 8
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %13, i32 0, i32 2
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %14, align 8
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %188

21:                                               ; preds = %3
  %22 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %23 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %23, i32 0, i32 3
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QLC_BC_CMD, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %188

40:                                               ; preds = %33, %27, %21
  %41 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %47 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %48 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %49 = call i32 @qlcnic_sriov_handle_pending_trans(%struct.qlcnic_sriov* %46, %struct.qlcnic_vf_info* %47, %struct.qlcnic_bc_hdr* %48)
  br label %188

50:                                               ; preds = %40
  %51 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = call i64 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans** %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %188

57:                                               ; preds = %50
  %58 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QLC_BC_CMD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %9, i64 %64)
  store i32 %65, i32* %11, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %9, %struct.qlcnic_adapter* %67, i64 %68)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %75 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %74)
  br label %188

76:                                               ; preds = %70
  %77 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %78 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %82 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %83 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @QLC_BC_COMMAND, align 4
  %86 = call i64 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans* %81, %struct.qlcnic_cmd_args* %9, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %90 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %91 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %90)
  br label %188

92:                                               ; preds = %76
  %93 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %94 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %97 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %95, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %101 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %100, i32 0, i32 2
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %101, align 8
  %103 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %104 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %107 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %109
  %111 = bitcast %struct.TYPE_3__* %110 to i32*
  %112 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %113 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %116 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @qlcnic_sriov_pull_bc_msg(%struct.qlcnic_adapter* %102, i32* %111, i32* %120, i32 %121)
  %123 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %124 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %127 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %129 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %130 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %129, i32 0, i32 5
  store %struct.qlcnic_vf_info* %128, %struct.qlcnic_vf_info** %130, align 8
  %131 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %132 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %135 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %137 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %141 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %142 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %143 = call i64 @qlcnic_sriov_soft_flr_check(%struct.qlcnic_adapter* %140, %struct.qlcnic_bc_trans* %141, %struct.qlcnic_vf_info* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %92
  br label %188

146:                                              ; preds = %92
  %147 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %148 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %152 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %151, i32 0, i32 3
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %150, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %146
  %158 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %159 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %160 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %161 = call i64 @qlcnic_sriov_add_act_list(%struct.qlcnic_sriov* %158, %struct.qlcnic_vf_info* %159, %struct.qlcnic_bc_trans* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %165 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %166 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %165)
  br label %167

167:                                              ; preds = %163, %157
  br label %188

168:                                              ; preds = %146
  %169 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %170 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = call i32 @spin_lock(i32* %171)
  %173 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %174 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %173, i32 0, i32 2
  %175 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %176 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = call i32 @list_add_tail(i32* %174, i32* %177)
  %179 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %180 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %185 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = call i32 @spin_unlock(i32* %186)
  br label %188

188:                                              ; preds = %20, %39, %45, %56, %73, %88, %145, %168, %167
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_handle_pending_trans(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, %struct.qlcnic_bc_hdr*) #1

declare dso_local i64 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans**) #1

declare dso_local i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i64) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans*) #1

declare dso_local i64 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_sriov_get_bc_paysize(i32, i32) #1

declare dso_local i32 @qlcnic_sriov_pull_bc_msg(%struct.qlcnic_adapter*, i32*, i32*, i32) #1

declare dso_local i64 @qlcnic_sriov_soft_flr_check(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*, %struct.qlcnic_vf_info*) #1

declare dso_local i64 @qlcnic_sriov_add_act_list(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, %struct.qlcnic_bc_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
