; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SW2HW_MPT_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_SW2HW_MPT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mtt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.res_mpt = type { %struct.res_mtt* }

@RES_MPT_HW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SW2HW_MPT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mtt*, align 8
  %17 = alloca %struct.res_mpt*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %23 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mr_get_mtt_addr(i32 %28)
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %29, %33
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %37 = call i32 @mpt_mask(%struct.mlx4_dev* %36)
  %38 = and i32 %35, %37
  store i32 %38, i32* %20, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @RES_MPT_HW, align 4
  %43 = call i32 @mr_res_start_move_to(%struct.mlx4_dev* %39, i32 %40, i32 %41, i32 %42, %struct.res_mpt** %17)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %6
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %184

48:                                               ; preds = %6
  %49 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mr_is_region(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %177

57:                                               ; preds = %48
  %58 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %59 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mr_get_pd(i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = ashr i32 %62, 17
  %64 = and i32 %63, 127
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %177

74:                                               ; preds = %67, %57
  %75 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %76 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @mr_is_fmr(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %82 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @mr_is_bind_enabled(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  br label %177

89:                                               ; preds = %80
  %90 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %91 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mr_is_region(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @EPERM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %14, align 4
  br label %177

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %74
  %100 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %101 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mr_phys_mpt(i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %99
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @RES_MTT, align 4
  %111 = call i32 @get_res(%struct.mlx4_dev* %107, i32 %108, i32 %109, i32 %110, %struct.res_mtt** %16)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %177

115:                                              ; preds = %106
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %120 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mr_get_mtt_size(i32 %121)
  %123 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %124 = call i32 @check_mtt_range(%struct.mlx4_dev* %116, i32 %117, i32 %118, i32 %122, %struct.res_mtt* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %164

128:                                              ; preds = %115
  %129 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %130 = load %struct.res_mpt*, %struct.res_mpt** %17, align 8
  %131 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %130, i32 0, i32 0
  store %struct.res_mtt* %129, %struct.res_mtt** %131, align 8
  br label %132

132:                                              ; preds = %128, %99
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %136 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %137 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %138 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %139 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %133, i32 %134, %struct.mlx4_vhcr* %135, %struct.mlx4_cmd_mailbox* %136, %struct.mlx4_cmd_mailbox* %137, %struct.mlx4_cmd_info* %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %164

143:                                              ; preds = %132
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %143
  %147 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %148 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %147, i32 0, i32 1
  %149 = call i32 @atomic_inc(i32* %148)
  %150 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %153 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RES_MTT, align 4
  %157 = call i32 @put_res(%struct.mlx4_dev* %150, i32 %151, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %146, %143
  %159 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @RES_MPT, align 4
  %162 = load i32, i32* %20, align 4
  %163 = call i32 @res_end_move(%struct.mlx4_dev* %159, i32 %160, i32 %161, i32 %162)
  store i32 0, i32* %7, align 4
  br label %184

164:                                              ; preds = %142, %127
  %165 = load i32, i32* %19, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %164
  %168 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %171 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RES_MTT, align 4
  %175 = call i32 @put_res(%struct.mlx4_dev* %168, i32 %169, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %164
  br label %177

177:                                              ; preds = %176, %114, %95, %86, %71, %54
  %178 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @RES_MPT, align 4
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @res_abort_move(%struct.mlx4_dev* %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %177, %158, %46
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i32 @mr_get_mtt_addr(i32) #1

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mr_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @mr_is_region(i32) #1

declare dso_local i32 @mr_get_pd(i32) #1

declare dso_local i64 @mr_is_fmr(i32) #1

declare dso_local i64 @mr_is_bind_enabled(i32) #1

declare dso_local i32 @mr_phys_mpt(i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt*) #1

declare dso_local i32 @mr_get_mtt_size(i32) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
