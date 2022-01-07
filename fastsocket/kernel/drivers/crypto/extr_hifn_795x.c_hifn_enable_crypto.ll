; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_enable_crypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_enable_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8* }
%struct.hifn_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@pci2id = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Chip %s: Unknown card!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_DMACNFG_UNLOCK = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MSTRESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_DMARESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MODE = common dso_local global i32 0, align 4
@HIFN_1_UNLOCK_SECRET1 = common dso_local global i32 0, align 4
@HIFN_1_UNLOCK_SECRET2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Chip %s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*)* @hifn_enable_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_enable_crypto(%struct.hifn_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %21 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %13
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %34 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  br label %50

46:                                               ; preds = %26, %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %8

50:                                               ; preds = %39, %8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %55 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %118

60:                                               ; preds = %50
  %61 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %62 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %63 = call i32 @hifn_read_1(%struct.hifn_device* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %65 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %66 = load i32, i32* @HIFN_DMACNFG_UNLOCK, align 4
  %67 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @hifn_write_1(%struct.hifn_device* %64, i32 %65, i32 %72)
  %74 = call i32 @mdelay(i32 1)
  %75 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %76 = load i32, i32* @HIFN_1_UNLOCK_SECRET1, align 4
  %77 = call i32 @hifn_read_1(%struct.hifn_device* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = call i32 @mdelay(i32 1)
  %79 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %80 = load i32, i32* @HIFN_1_UNLOCK_SECRET2, align 4
  %81 = call i32 @hifn_write_1(%struct.hifn_device* %79, i32 %80, i32 0)
  %82 = call i32 @mdelay(i32 1)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %102, %60
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 12
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = add nsw i32 %93, 257
  %95 = trunc i32 %94 to i8
  %96 = call i32 @hifn_next_signature(i32 %87, i8 signext %95)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %98 = load i32, i32* @HIFN_1_UNLOCK_SECRET2, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @hifn_write_1(%struct.hifn_device* %97, i32 %98, i32 %99)
  %101 = call i32 @mdelay(i32 1)
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %83

105:                                              ; preds = %83
  %106 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %107 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @hifn_write_1(%struct.hifn_device* %106, i32 %107, i32 %108)
  %110 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %111 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %114 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = call i32 @pci_name(%struct.TYPE_4__* %115)
  %117 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %105, %53
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @hifn_read_1(%struct.hifn_device*, i32) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hifn_next_signature(i32, i8 signext) #1

declare dso_local i32 @pci_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
