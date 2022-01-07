; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_mem_bp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_mem_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.bnx2x_ilt*, %struct.msix_entry*, i8*, i8*, i8*, %struct.bnx2x_fastpath* }
%struct.bnx2x_ilt = type { i32 }
%struct.msix_entry = type { i32 }
%struct.bnx2x_fastpath = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"msix_table_size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fp_array_size %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_MAX_AGGREGATION_QUEUES_E1H_E2 = common dso_local global i32 0, align 4
@BNX2X_MULTI_TX_COS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"txq_array_size %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_alloc_mem_bp(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_fastpath*, align 8
  %5 = alloca %struct.msix_entry*, align 8
  %6 = alloca %struct.bnx2x_ilt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = call i64 @IS_PF(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = call i32 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x* %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = call i32 @CNIC_SUPPORT(%struct.bnx2x* %25)
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kcalloc(i32 %37, i32 8, i32 %38)
  %40 = bitcast i8* %39 to %struct.bnx2x_fastpath*
  store %struct.bnx2x_fastpath* %40, %struct.bnx2x_fastpath** %4, align 8
  %41 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %42 = icmp ne %struct.bnx2x_fastpath* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %20
  br label %142

44:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load i32, i32* @ETH_MAX_AGGREGATION_QUEUES_E1H_E2, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kcalloc(i32 %52, i32 4, i32 %53)
  %55 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %55, i64 %57
  %59 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %60, i64 %62
  %64 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %51
  br label %142

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 7
  store %struct.bnx2x_fastpath* %73, %struct.bnx2x_fastpath** %75, align 8
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kcalloc(i32 %78, i32 4, i32 %79)
  %81 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 6
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %72
  br label %142

88:                                               ; preds = %72
  %89 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kcalloc(i32 %91, i32 4, i32 %92)
  %94 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  br label %142

101:                                              ; preds = %88
  %102 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %103 = call i32 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x* %102)
  %104 = load i32, i32* @BNX2X_MULTI_TX_COS, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = call i32 @CNIC_SUPPORT(%struct.bnx2x* %106)
  %108 = add nsw i32 %105, %107
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @kcalloc(i32 %111, i32 4, i32 %112)
  %114 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %115 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %101
  br label %142

121:                                              ; preds = %101
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @kcalloc(i32 %122, i32 4, i32 %123)
  %125 = bitcast i8* %124 to %struct.msix_entry*
  store %struct.msix_entry* %125, %struct.msix_entry** %5, align 8
  %126 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %127 = icmp ne %struct.msix_entry* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %142

129:                                              ; preds = %121
  %130 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %131 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %132 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %131, i32 0, i32 3
  store %struct.msix_entry* %130, %struct.msix_entry** %132, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call %struct.bnx2x_ilt* @kzalloc(i32 4, i32 %133)
  store %struct.bnx2x_ilt* %134, %struct.bnx2x_ilt** %6, align 8
  %135 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %6, align 8
  %136 = icmp ne %struct.bnx2x_ilt* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %142

138:                                              ; preds = %129
  %139 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %6, align 8
  %140 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %141 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %140, i32 0, i32 2
  store %struct.bnx2x_ilt* %139, %struct.bnx2x_ilt** %141, align 8
  store i32 0, i32* %2, align 4
  br label %147

142:                                              ; preds = %137, %128, %120, %100, %87, %67, %43
  %143 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %144 = call i32 @bnx2x_free_mem_bp(%struct.bnx2x* %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %138
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x*) #1

declare dso_local i32 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.bnx2x_ilt* @kzalloc(i32, i32) #1

declare dso_local i32 @bnx2x_free_mem_bp(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
