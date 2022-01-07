; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_alloc_bc_mbx_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_alloc_bc_mbx_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_mailbox_metadata = type { i64, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32, i64* }

@qlcnic_sriov_bc_mbx_tbl = common dso_local global %struct.qlcnic_mailbox_metadata* null, align 8
@QLC_BC_CMD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_cmd_args*, i64)* @qlcnic_sriov_alloc_bc_mbx_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_mailbox_metadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_cmd_args* %0, %struct.qlcnic_cmd_args** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_sriov_bc_mbx_tbl, align 8
  store %struct.qlcnic_mailbox_metadata* %9, %struct.qlcnic_mailbox_metadata** %6, align 8
  %10 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_sriov_bc_mbx_tbl, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.qlcnic_mailbox_metadata* %10)
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %132, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %135

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %18, i64 %20
  %22 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %131

25:                                               ; preds = %16
  %26 = load i32, i32* @QLC_BC_CMD, align 4
  %27 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %29, i64 %31
  %33 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %36 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %38, i64 %40
  %42 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %45 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %48 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i8* @kcalloc(i32 %50, i32 8, i32 %51)
  %53 = bitcast i8* %52 to i64*
  %54 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %55 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i64* %53, i64** %56, align 8
  %57 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %58 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %25
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %138

65:                                               ; preds = %25
  %66 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %67 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i8* @kcalloc(i32 %69, i32 8, i32 %70)
  %72 = bitcast i8* %71 to i64*
  %73 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %74 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i64* %72, i64** %75, align 8
  %76 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %77 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %65
  %82 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %83 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = call i32 @kfree(i64* %85)
  %87 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %88 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i64* null, i64** %89, align 8
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %138

92:                                               ; preds = %65
  %93 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %94 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %98 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 8, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memset(i64* %96, i32 0, i32 %103)
  %105 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %106 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %110 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 8, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memset(i64* %108, i32 0, i32 %115)
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %119 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 16
  %123 = sext i32 %122 to i64
  %124 = or i64 %117, %123
  %125 = or i64 %124, 1610612736
  %126 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %127 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 %125, i64* %130, align 8
  store i32 0, i32* %3, align 4
  br label %138

131:                                              ; preds = %16
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %12

135:                                              ; preds = %12
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %92, %81, %62
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ARRAY_SIZE(%struct.qlcnic_mailbox_metadata*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
