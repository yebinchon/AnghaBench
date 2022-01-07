; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_set_nic_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_set_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.qlcnic_info_le = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_SET_NIC_INFO = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set nic info%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_set_nic_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qlcnic_cmd_args, align 8
  %10 = alloca %struct.qlcnic_info_le*, align 8
  %11 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %5, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  store i64 72, i64* %11, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %153

23:                                               ; preds = %2
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @dma_alloc_coherent(i32* %27, i64 %28, i32* %7, i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %153

36:                                               ; preds = %23
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @memset(i8* %37, i32 0, i64 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to %struct.qlcnic_info_le*
  store %struct.qlcnic_info_le* %41, %struct.qlcnic_info_le** %10, align 8
  %42 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %43 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %47 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %46, i32 0, i32 9
  store i8* %45, i8** %47, align 8
  %48 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %53 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %55 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %59 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %61 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %65 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %67 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %71 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %73 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %76 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %78 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %82 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %84 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %88 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %90 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le16(i32 %91)
  %93 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %94 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %100 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %102 = load i32, i32* @QLCNIC_CMD_SET_NIC_INFO, align 4
  %103 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %9, %struct.qlcnic_adapter* %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @MSD(i32 %104)
  %106 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @LSD(i32 %110)
  %112 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %111, i32* %115, align 4
  %116 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %117 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 16
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %11, align 8
  %122 = or i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  store i32 %123, i32* %127, align 4
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %129 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %128, %struct.qlcnic_cmd_args* %9)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %36
  %134 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %133, %36
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %11, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @dma_free_coherent(i32* %146, i64 %147, i8* %148, i32 %149)
  %151 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %142, %33, %21
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
