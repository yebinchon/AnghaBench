; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_get_nic_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_get_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_info = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qlcnic_info_le = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_GET_NIC_INFO = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get nic info%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_get_nic_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_info_le*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qlcnic_cmd_args, align 8
  %13 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 40, i64* %13, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %13, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(i32* %17, i64 %18, i32* %9, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %143

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @memset(i8* %27, i32 0, i64 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = bitcast i8* %30 to %struct.qlcnic_info_le*
  store %struct.qlcnic_info_le* %31, %struct.qlcnic_info_le** %10, align 8
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %33 = load i32, i32* @QLCNIC_CMD_GET_NIC_INFO, align 4
  %34 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %12, %struct.qlcnic_adapter* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @MSD(i32 %35)
  %37 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @LSD(i32 %41)
  %43 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 16
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %13, align 8
  %51 = or i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %52, i32* %56, align 4
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %58 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %57, %struct.qlcnic_cmd_args* %12)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %26
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %132

71:                                               ; preds = %26
  %72 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %73 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le16_to_cpu(i32 %74)
  %76 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %77 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %79 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le16_to_cpu(i32 %80)
  %82 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %83 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %85 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le16_to_cpu(i32 %86)
  %88 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %89 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %91 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le16_to_cpu(i32 %92)
  %94 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %95 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %97 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %101 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %103 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le16_to_cpu(i32 %104)
  %106 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %107 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %109 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le16_to_cpu(i32 %110)
  %112 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %113 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %115 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le16_to_cpu(i32 %116)
  %118 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %119 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %121 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %125 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %127 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le16_to_cpu(i32 %128)
  %130 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %131 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %71, %62
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %13, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @dma_free_coherent(i32* %136, i64 %137, i8* %138, i32 %139)
  %141 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %12)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %132, %23
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
