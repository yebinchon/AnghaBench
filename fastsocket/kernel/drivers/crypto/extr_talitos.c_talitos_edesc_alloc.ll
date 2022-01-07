; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TALITOS_MAX_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"length exceeds h/w max limit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not allocate edescriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_edesc* (%struct.device*, %struct.scatterlist*, %struct.scatterlist*, i32, i32, i32, i32)* @talitos_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_edesc* @talitos_edesc_alloc(%struct.device* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.talitos_edesc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.talitos_edesc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @GFP_KERNEL, align 4
  br label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* @TALITOS_MAX_DATA_LEN, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.talitos_edesc* @ERR_PTR(i32 %43)
  store %struct.talitos_edesc* %44, %struct.talitos_edesc** %8, align 8
  br label %149

45:                                               ; preds = %32
  %46 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %47, %48
  %50 = call i32 @sg_count(%struct.scatterlist* %46, i32 %49, i32* %21)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  store i32 %57, i32* %17, align 4
  %58 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %60 = icmp eq %struct.scatterlist* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %18, align 4
  br label %76

63:                                               ; preds = %56
  %64 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %65, %66
  %68 = call i32 @sg_count(%struct.scatterlist* %64, i32 %67, i32* %22)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %18, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 0, %71 ], [ %73, %72 ]
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %74, %61
  store i32 40, i32* %19, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %19, align 4
  br label %106

96:                                               ; preds = %79
  store i32 0, i32* %20, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  br label %102

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = load i32, i32* %19, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %102, %82
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @GFP_DMA, align 4
  %109 = load i32, i32* %23, align 4
  %110 = or i32 %108, %109
  %111 = call %struct.talitos_edesc* @kmalloc(i32 %107, i32 %110)
  store %struct.talitos_edesc* %111, %struct.talitos_edesc** %16, align 8
  %112 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %113 = icmp ne %struct.talitos_edesc* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %106
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  %119 = call %struct.talitos_edesc* @ERR_PTR(i32 %118)
  store %struct.talitos_edesc* %119, %struct.talitos_edesc** %8, align 8
  br label %149

120:                                              ; preds = %106
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %123 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %126 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %129 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %22, align 4
  %131 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %132 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %135 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.device*, %struct.device** %9, align 8
  %137 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %138 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %142 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %145 = call i32 @dma_map_single(%struct.device* %136, i32* %140, i32 %143, i32 %144)
  %146 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  %147 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 8
  %148 = load %struct.talitos_edesc*, %struct.talitos_edesc** %16, align 8
  store %struct.talitos_edesc* %148, %struct.talitos_edesc** %8, align 8
  br label %149

149:                                              ; preds = %120, %114, %39
  %150 = load %struct.talitos_edesc*, %struct.talitos_edesc** %8, align 8
  ret %struct.talitos_edesc* %150
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.talitos_edesc* @ERR_PTR(i32) #1

declare dso_local i32 @sg_count(%struct.scatterlist*, i32, i32*) #1

declare dso_local %struct.talitos_edesc* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
