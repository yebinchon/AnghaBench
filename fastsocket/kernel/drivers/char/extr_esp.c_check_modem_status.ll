; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_GET_UART_STAT = common dso_local global i32 0, align 4
@UART_ESI_STAT2 = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*)* @check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_modem_status(%struct.esp_struct* %0) #0 {
  %2 = alloca %struct.esp_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.esp_struct* %0, %struct.esp_struct** %2, align 8
  %4 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %5 = load i32, i32* @UART_ESI_CMD1, align 4
  %6 = load i32, i32* @ESI_GET_UART_STAT, align 4
  %7 = call i32 @serial_out(%struct.esp_struct* %4, i32 %5, i32 %6)
  %8 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %9 = load i32, i32* @UART_ESI_STAT2, align 4
  %10 = call i32 @serial_in(%struct.esp_struct* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @UART_MSR_TERI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %22 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @UART_MSR_DDSR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %33 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @UART_MSR_DDCD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %44 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @UART_MSR_DCTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %55 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %61 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = call i32 @wake_up_interruptible(i32* %62)
  br label %64

64:                                               ; preds = %59, %1
  %65 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %66 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @UART_MSR_DDCD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @UART_MSR_DCD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %84 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = call i32 @wake_up_interruptible(i32* %85)
  br label %93

87:                                               ; preds = %77
  %88 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %89 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @tty_hangup(i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %94

94:                                               ; preds = %93, %72, %64
  ret void
}

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.esp_struct*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
