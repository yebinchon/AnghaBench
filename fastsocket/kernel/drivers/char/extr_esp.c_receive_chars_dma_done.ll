; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_receive_chars_dma_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_receive_chars_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@dma = common dso_local global i32 0, align 4
@ESP_STAT_DMA_RX = common dso_local global i32 0, align 4
@dma_bytes = common dso_local global i32 0, align 4
@dma_buffer = common dso_local global i32* null, align 8
@TTY_BREAK = common dso_local global i32 0, align 4
@ASYNC_SAK = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*, i32)* @receive_chars_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars_dma_done(%struct.esp_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.esp_struct* %0, %struct.esp_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %10 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %5, align 8
  %13 = call i64 (...) @claim_dma_lock()
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @dma, align 4
  %15 = call i32 @disable_dma(i32 %14)
  %16 = load i32, i32* @dma, align 4
  %17 = call i32 @clear_dma_ff(i32 %16)
  %18 = load i32, i32* @ESP_STAT_DMA_RX, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %21 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @dma_bytes, align 4
  %25 = load i32, i32* @dma, align 4
  %26 = call i32 @get_dma_residue(i32 %25)
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @release_dma_lock(i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %32 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %115

38:                                               ; preds = %2
  %39 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %40 = load i32*, i32** @dma_buffer, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @tty_insert_flip_string(%struct.tty_struct* %39, i32* %40, i32 %42)
  %44 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %45 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 28, %46
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %52 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %112, label %56

56:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, i32* @TTY_BREAK, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %63 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %68 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ASYNC_SAK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %76 = call i32 @do_SAK(%struct.tty_struct* %75)
  br label %77

77:                                               ; preds = %74, %60
  br label %102

78:                                               ; preds = %56
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* @TTY_FRAME, align 4
  store i32 %83, i32* %8, align 4
  %84 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %85 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %101

89:                                               ; preds = %78
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, i32* @TTY_PARITY, align 4
  store i32 %94, i32* %8, align 4
  %95 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %96 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %89
  br label %101

101:                                              ; preds = %100, %82
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %104 = load i32*, i32** @dma_buffer, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @tty_insert_flip_char(%struct.tty_struct* %103, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %102, %38
  %113 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %114 = call i32 @tty_schedule_flip(%struct.tty_struct* %113)
  br label %115

115:                                              ; preds = %112, %2
  %116 = load i32, i32* @dma_bytes, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i32, i32* @dma_bytes, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %6, align 4
  store i32 0, i32* @dma_bytes, align 4
  %123 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @receive_chars_dma(%struct.esp_struct* %123, i32 %124)
  br label %127

126:                                              ; preds = %115
  store i32 0, i32* @dma_bytes, align 4
  br label %127

127:                                              ; preds = %126, %119
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i32*, i32) #1

declare dso_local i32 @do_SAK(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_struct*) #1

declare dso_local i32 @receive_chars_dma(%struct.esp_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
