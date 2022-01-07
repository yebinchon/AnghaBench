; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_alloc_mbx_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_alloc_mbx_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_mailbox_metadata = type { i64, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i64* }
%struct.TYPE_4__ = type { i32, i64* }
%struct.qlcnic_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@qlcnic_83xx_mbx_tbl = common dso_local global %struct.qlcnic_mailbox_metadata* null, align 8
@QLC_83XX_FW_MBX_CMD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_alloc_mbx_args(%struct.qlcnic_cmd_args* %0, %struct.qlcnic_adapter* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.qlcnic_mailbox_metadata*, align 8
  store %struct.qlcnic_cmd_args* %0, %struct.qlcnic_cmd_args** %5, align 8
  store %struct.qlcnic_adapter* %1, %struct.qlcnic_adapter** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_83xx_mbx_tbl, align 8
  store %struct.qlcnic_mailbox_metadata* %12, %struct.qlcnic_mailbox_metadata** %11, align 8
  %13 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_83xx_mbx_tbl, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.qlcnic_mailbox_metadata* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %143, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %146

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %21, i64 %23
  %25 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %20, %26
  br i1 %27, label %28, label %142

28:                                               ; preds = %19
  %29 = load i32, i32* @QLC_83XX_FW_MBX_CMD, align 4
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %11, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %32, i64 %34
  %36 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %39 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %41, i64 %43
  %45 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %48 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %51 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i8* @kcalloc(i32 %53, i32 8, i32 %54)
  %56 = bitcast i8* %55 to i64*
  %57 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %58 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64* %56, i64** %59, align 8
  %60 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %61 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %28
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %149

68:                                               ; preds = %28
  %69 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %70 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i8* @kcalloc(i32 %72, i32 8, i32 %73)
  %75 = bitcast i8* %74 to i64*
  %76 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %77 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64* %75, i64** %78, align 8
  %79 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %80 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %95, label %84

84:                                               ; preds = %68
  %85 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %86 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = call i32 @kfree(i64* %88)
  %90 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %91 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i64* null, i64** %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %149

95:                                               ; preds = %68
  %96 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %97 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %101 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memset(i64* %99, i32 0, i32 %106)
  %108 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %109 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %113 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 8, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memset(i64* %111, i32 0, i32 %118)
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 29
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %129 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 %131, 16
  %133 = sext i32 %132 to i64
  %134 = or i64 %127, %133
  %135 = load i64, i64* %10, align 8
  %136 = or i64 %134, %135
  %137 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %138 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %136, i64* %141, align 8
  store i32 0, i32* %4, align 4
  br label %149

142:                                              ; preds = %19
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %15

146:                                              ; preds = %15
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %146, %95, %84, %65
  %150 = load i32, i32* %4, align 4
  ret i32 %150
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
