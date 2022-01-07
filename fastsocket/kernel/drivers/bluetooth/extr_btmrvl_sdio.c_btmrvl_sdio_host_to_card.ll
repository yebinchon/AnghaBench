; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_host_to_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_host_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTSDIO_DMA_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"i=%d writesb failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAX_WRITE_IOMEM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*, i32*, i32)* @btmrvl_sdio_host_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_host_to_card(%struct.btmrvl_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btmrvl_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btmrvl_sdio_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %17 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %18, align 8
  store %struct.btmrvl_sdio_card* %19, %struct.btmrvl_sdio_card** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %21 = icmp ne %struct.btmrvl_sdio_card* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %24 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %3
  %28 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %118

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = and i64 %34, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %43 = call i32 @ALIGN_SZ(i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %118

52:                                               ; preds = %40
  %53 = load i8*, i8** %14, align 8
  %54 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %55 = call i64 @ALIGN_ADDR(i8* %53, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %31
  %62 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %11, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %70 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sdio_claim_host(i32 %71)
  br label %73

73:                                               ; preds = %105, %61
  %74 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %75 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %78 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = call i32 @sdio_writesb(i32 %76, i32 %79, i32* %80, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %73
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32* %94, i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @MAX_WRITE_IOMEM_RETRY, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %112

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %73, label %108

108:                                              ; preds = %105
  %109 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %110 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %114 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sdio_release_host(i32 %115)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %49, %27
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @ALIGN_SZ(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @ALIGN_ADDR(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writesb(i32, i32, i32*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
