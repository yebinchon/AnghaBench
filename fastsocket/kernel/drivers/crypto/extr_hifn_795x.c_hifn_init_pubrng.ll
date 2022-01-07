; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_init_pubrng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_init_pubrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i32, i32 }

@HIFN_1_PUB_RESET = common dso_local global i32 0, align 4
@HIFN_PUBRST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Chip %s: Failed to initialise public key engine.\0A\00", align 1
@HIFN_1_PUB_IEN = common dso_local global i32 0, align 4
@HIFN_PUBIEN_DONE = common dso_local global i32 0, align 4
@HIFN_DMAIER_PUBDONE = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Chip %s: Public key engine has been sucessfully initialised.\0A\00", align 1
@HIFN_1_RNG_CONFIG = common dso_local global i32 0, align 4
@HIFN_RNGCFG_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Chip %s: RNG engine has been successfully initialised.\0A\00", align 1
@HIFN_1_RNG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*)* @hifn_init_pubrng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_init_pubrng(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  %3 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  %4 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %5 = load i32, i32* @HIFN_1_PUB_RESET, align 4
  %6 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %7 = load i32, i32* @HIFN_1_PUB_RESET, align 4
  %8 = call i32 @hifn_read_1(%struct.hifn_device* %6, i32 %7)
  %9 = load i32, i32* @HIFN_PUBRST_RESET, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @hifn_write_1(%struct.hifn_device* %4, i32 %5, i32 %10)
  store i32 100, i32* %3, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = call i32 @mdelay(i32 1)
  %17 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %18 = load i32, i32* @HIFN_1_PUB_RESET, align 4
  %19 = call i32 @hifn_read_1(%struct.hifn_device* %17, i32 %18)
  %20 = load i32, i32* @HIFN_PUBRST_RESET, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %33 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %56

36:                                               ; preds = %28
  %37 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %38 = load i32, i32* @HIFN_1_PUB_IEN, align 4
  %39 = load i32, i32* @HIFN_PUBIEN_DONE, align 4
  %40 = call i32 @hifn_write_1(%struct.hifn_device* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @HIFN_DMAIER_PUBDONE, align 4
  %42 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %43 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %47 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %48 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %49 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hifn_write_1(%struct.hifn_device* %46, i32 %47, i32 %50)
  %52 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %53 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %36, %31
  %57 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %58 = load i32, i32* @HIFN_1_RNG_CONFIG, align 4
  %59 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %60 = load i32, i32* @HIFN_1_RNG_CONFIG, align 4
  %61 = call i32 @hifn_read_1(%struct.hifn_device* %59, i32 %60)
  %62 = load i32, i32* @HIFN_RNGCFG_ENA, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @hifn_write_1(%struct.hifn_device* %57, i32 %58, i32 %63)
  %65 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %66 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  ret i32 0
}

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @hifn_read_1(%struct.hifn_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
