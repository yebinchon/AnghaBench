; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_dma_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.myri10ge_cmd = type { i32, i32, i8* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read/write\00", align 1
@MXGEFW_CMD_UNALIGNED_TEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"DMA %s benchmark failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*, i32)* @myri10ge_dma_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_dma_test(%struct.myri10ge_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.myri10ge_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.page* @alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %9, align 8
  %14 = load %struct.page*, %struct.page** %9, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %144

19:                                               ; preds = %2
  %20 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %21 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %26 = call i32 @pci_map_page(%struct.TYPE_3__* %22, %struct.page* %23, i32 0, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %28 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @MYRI10GE_LOWPART_TO_U32(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i8* @MYRI10GE_HIGHPART_TO_U32(i32 %34)
  %36 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 65536
  %39 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %40, i32 %41, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %118

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 16
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %49, %50
  %52 = mul nsw i32 %51, 2
  %53 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 65535
  %56 = sdiv i32 %52, %55
  %57 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %58 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @MYRI10GE_LOWPART_TO_U32(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i8* @MYRI10GE_HIGHPART_TO_U32(i32 %63)
  %65 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %66, 1
  %68 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %69, i32 %70, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %46
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %118

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 16
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  %81 = mul nsw i32 %80, 2
  %82 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 65535
  %85 = sdiv i32 %81, %84
  %86 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %87 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i8* @MYRI10GE_LOWPART_TO_U32(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i8* @MYRI10GE_HIGHPART_TO_U32(i32 %92)
  %94 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 2
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %95, 65537
  %97 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %98, i32 %99, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %75
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %118

104:                                              ; preds = %75
  %105 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 16
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  %110 = mul nsw i32 %109, 2
  %111 = mul nsw i32 %110, 2
  %112 = getelementptr inbounds %struct.myri10ge_cmd, %struct.myri10ge_cmd* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 65535
  %115 = sdiv i32 %111, %114
  %116 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %117 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %104, %103, %74, %45
  %119 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %120 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %119, i32 0, i32 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %125 = call i32 @pci_unmap_page(%struct.TYPE_3__* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.page*, %struct.page** %9, align 8
  %127 = call i32 @put_page(%struct.page* %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %118
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @MXGEFW_CMD_UNALIGNED_TEST, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %136 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %135, i32 0, i32 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @dev_warn(i32* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %130, %118
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %16
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @pci_map_page(%struct.TYPE_3__*, %struct.page*, i32, i32, i32) #1

declare dso_local i8* @MYRI10GE_LOWPART_TO_U32(i32) #1

declare dso_local i8* @MYRI10GE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
