; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_unfinished_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_unfinished_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32 }

@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DMA TIMEOUT %08x %d\0A\00", align 1
@IVTV_REG_DMASTATUS = common dso_local global i32 0, align 4
@IVTV_F_I_UDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_unfinished_dma(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ivtv*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.ivtv*
  store %struct.ivtv* %5, %struct.ivtv** %3, align 8
  %6 = load i32, i32* @IVTV_F_I_DMA, align 4
  %7 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 2
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %37

12:                                               ; preds = %1
  %13 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %14 = call i32 @read_reg(i32 %13)
  %15 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %20 = call i32 @read_reg(i32 %19)
  %21 = and i32 %20, 3
  %22 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %23 = call i32 @write_reg(i32 %21, i32 %22)
  %24 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %25 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 2
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i32, i32* @IVTV_F_I_DMA, align 4
  %29 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 2
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  %34 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 1
  %36 = call i32 @wake_up(i32* %35)
  br label %37

37:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IVTV_ERR(i8*, i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
