; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_set_baud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.mxser_port* }
%struct.mxser_port = type { i64, i32, i32, i32, i8, i64 }

@HZ = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i8 0, align 1
@UART_MCR = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i64 0, align 8
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@BOTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i64)* @mxser_set_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_set_baud(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.mxser_port*, %struct.mxser_port** %11, align 8
  store %struct.mxser_port* %12, %struct.mxser_port** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %14 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %170

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %21 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %170

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 134
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %30 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  %33 = sdiv i32 %32, 269
  store i32 %33, i32* %7, align 4
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %34, i32 134, i32 134)
  br label %62

36:                                               ; preds = %25
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %41 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = sdiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %52 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %56, i32 %57, i32 %58)
  br label %61

60:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %28
  %63 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %64 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HZ, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 10
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %72 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %70, %73
  %75 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %76 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @HZ, align 4
  %78 = sdiv i32 %77, 50
  %79 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %80 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %62
  %86 = load i8, i8* @UART_MCR_DTR, align 1
  %87 = zext i8 %86 to i32
  %88 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %89 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %88, i32 0, i32 4
  %90 = load i8, i8* %89, align 4
  %91 = zext i8 %90 to i32
  %92 = or i32 %91, %87
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %89, align 4
  %94 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %95 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %94, i32 0, i32 4
  %96 = load i8, i8* %95, align 4
  %97 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %98 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UART_MCR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i8 zeroext %96, i64 %101)
  br label %122

103:                                              ; preds = %62
  %104 = load i8, i8* @UART_MCR_DTR, align 1
  %105 = zext i8 %104 to i32
  %106 = xor i32 %105, -1
  %107 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %108 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %107, i32 0, i32 4
  %109 = load i8, i8* %108, align 4
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, %106
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 4
  %113 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %114 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %113, i32 0, i32 4
  %115 = load i8, i8* %114, align 4
  %116 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %117 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @UART_MCR, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outb(i8 zeroext %115, i64 %120)
  store i32 0, i32* %3, align 4
  br label %170

122:                                              ; preds = %85
  %123 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %124 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @UART_LCR, align 8
  %127 = add nsw i64 %125, %126
  %128 = call zeroext i8 @inb(i64 %127)
  store i8 %128, i8* %9, align 1
  %129 = load i8, i8* %9, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @UART_LCR_DLAB, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = trunc i32 %133 to i8
  %135 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %136 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @UART_LCR, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outb(i8 zeroext %134, i64 %139)
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, 255
  %143 = trunc i32 %142 to i8
  %144 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %145 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @UART_DLL, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outb(i8 zeroext %143, i64 %148)
  %150 = load i32, i32* %7, align 4
  %151 = ashr i32 %150, 8
  %152 = trunc i32 %151 to i8
  %153 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %154 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @UART_DLM, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @outb(i8 zeroext %152, i64 %157)
  %159 = load i8, i8* %9, align 1
  %160 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %161 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @UART_LCR, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outb(i8 zeroext %159, i64 %164)
  %166 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %167 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @mxser_set_must_enum_value(i64 %168, i32 0)
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %122, %103, %24, %17
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @mxser_set_must_enum_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
