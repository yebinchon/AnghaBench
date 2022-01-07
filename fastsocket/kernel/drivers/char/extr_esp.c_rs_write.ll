; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.esp_struct* }
%struct.esp_struct = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"rs_write\00", align 1
@ESP_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @rs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.esp_struct*, align 8
  %12 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.esp_struct*, %struct.esp_struct** %14, align 8
  store %struct.esp_struct* %15, %struct.esp_struct** %11, align 8
  %16 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @serial_paranoia_check(%struct.esp_struct* %16, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

23:                                               ; preds = %3
  %24 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %25 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %138

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %58
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %33 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %34 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %45 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %46 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %95

58:                                               ; preds = %54
  %59 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %60 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %63 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @memcpy(i64 %66, i8* %67, i32 %68)
  %70 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %71 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %74, %76
  %78 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %79 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %82 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %30

95:                                               ; preds = %57
  %96 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %97 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %96, i32 0, i32 3
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %101 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %95
  %105 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %104
  %110 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %111 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UART_IER_THRI, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @UART_IER_THRI, align 4
  %118 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %119 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %123 = load i32, i32* @UART_ESI_CMD1, align 4
  %124 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %125 = call i32 @serial_out(%struct.esp_struct* %122, i32 %123, i32 %124)
  %126 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %127 = load i32, i32* @UART_ESI_CMD2, align 4
  %128 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %129 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @serial_out(%struct.esp_struct* %126, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %116, %109, %104, %95
  %133 = load %struct.esp_struct*, %struct.esp_struct** %11, align 8
  %134 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %133, i32 0, i32 3
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %132, %28, %22
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @serial_paranoia_check(%struct.esp_struct*, i32, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
