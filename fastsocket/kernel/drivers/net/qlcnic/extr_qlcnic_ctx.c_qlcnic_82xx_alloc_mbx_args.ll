; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_alloc_mbx_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_alloc_mbx_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_mailbox_metadata = type { i64, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.qlcnic_adapter = type { i32 }

@qlcnic_mbx_tbl = common dso_local global %struct.qlcnic_mailbox_metadata* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_alloc_mbx_args(%struct.qlcnic_cmd_args* %0, %struct.qlcnic_adapter* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_mailbox_metadata*, align 8
  store %struct.qlcnic_cmd_args* %0, %struct.qlcnic_cmd_args** %5, align 8
  store %struct.qlcnic_adapter* %1, %struct.qlcnic_adapter** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_mbx_tbl, align 8
  store %struct.qlcnic_mailbox_metadata* %11, %struct.qlcnic_mailbox_metadata** %10, align 8
  %12 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_mbx_tbl, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.qlcnic_mailbox_metadata* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %123, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %126

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %20, i64 %22
  %24 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %122

27:                                               ; preds = %18
  %28 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %28, i64 %30
  %32 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %37, i64 %39
  %41 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %47 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i8* @kcalloc(i32 %49, i32 8, i32 %50)
  %52 = bitcast i8* %51 to i64*
  %53 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64* %52, i64** %55, align 8
  %56 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %27
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %127

64:                                               ; preds = %27
  %65 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i8* @kcalloc(i32 %68, i32 8, i32 %69)
  %71 = bitcast i8* %70 to i64*
  %72 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %73 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i64* %71, i64** %74, align 8
  %75 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %76 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %64
  %81 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %82 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = call i32 @kfree(i64* %84)
  %86 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %87 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i64* null, i64** %88, align 8
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %127

91:                                               ; preds = %64
  %92 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %93 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %97 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 8, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memset(i64* %95, i32 0, i32 %102)
  %104 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %105 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %109 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = mul i64 8, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @memset(i64* %107, i32 0, i32 %114)
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %118 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 %116, i64* %121, align 8
  br label %126

122:                                              ; preds = %18
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %14

126:                                              ; preds = %91, %14
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %80, %61
  %128 = load i32, i32* %4, align 4
  ret i32 %128
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
