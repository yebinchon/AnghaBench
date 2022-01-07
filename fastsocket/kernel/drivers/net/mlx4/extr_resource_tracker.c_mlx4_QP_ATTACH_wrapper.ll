; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_QP_ATTACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_QP_ATTACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32* }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.res_qp = type { i32 }

@RES_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Fail to attach rule to qp 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Fail to detach rule from qp 0x%x reg_id = 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_ATTACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_qp, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.res_qp*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %26 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  %28 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %29 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 28
  %32 = and i32 %31, 7
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %34 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %21, align 4
  %36 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 31
  store i32 %39, i32* %22, align 4
  store i32 2, i32* %23, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %23, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %24, align 4
  %46 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %47 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 16777215
  store i32 %49, i32* %18, align 4
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @RES_QP, align 4
  %54 = call i32 @get_res(%struct.mlx4_dev* %50, i32 %51, i32 %52, i32 %53, %struct.res_qp** %19)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %6
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %7, align 4
  br label %135

59:                                               ; preds = %6
  %60 = load i32, i32* %18, align 4
  %61 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %14, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %24, align 4
  %70 = call i32 @qp_attach(%struct.mlx4_dev* %65, %struct.mlx4_qp* %14, i32* %66, i32 %67, i32 %68, i32 %69, i32* %20)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %18, align 4
  %75 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %128

76:                                               ; preds = %64
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @add_mcg_res(%struct.mlx4_dev* %77, i32 %78, %struct.res_qp* %79, i32* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %121

88:                                               ; preds = %76
  br label %114

89:                                               ; preds = %59
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %24, align 4
  %96 = call i32 @rem_mcg_res(%struct.mlx4_dev* %90, i32 %91, %struct.res_qp* %92, i32* %93, i32 %94, i32 %95, i32* %20)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %128

100:                                              ; preds = %89
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %20, align 4
  %106 = call i32 @qp_detach(%struct.mlx4_dev* %101, %struct.mlx4_qp* %14, i32* %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %20, align 4
  %112 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %100
  br label %114

114:                                              ; preds = %113, %88
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* @RES_QP, align 4
  %119 = call i32 @put_res(%struct.mlx4_dev* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %7, align 4
  br label %135

121:                                              ; preds = %87
  %122 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %20, align 4
  %127 = call i32 @qp_detach(%struct.mlx4_dev* %122, %struct.mlx4_qp* %14, i32* %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %99, %73
  %129 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @RES_QP, align 4
  %133 = call i32 @put_res(%struct.mlx4_dev* %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %128, %114, %57
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @qp_attach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @add_mcg_res(%struct.mlx4_dev*, i32, %struct.res_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @rem_mcg_res(%struct.mlx4_dev*, i32, %struct.res_qp*, i32*, i32, i32, i32*) #1

declare dso_local i32 @qp_detach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
